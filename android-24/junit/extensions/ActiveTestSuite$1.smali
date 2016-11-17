.class Ljunit/extensions/ActiveTestSuite$1;
.super Ljava/lang/Thread;
.source "ActiveTestSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljunit/extensions/ActiveTestSuite;->runTest(Ljunit/framework/Test;Ljunit/framework/TestResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljunit/extensions/ActiveTestSuite;

.field final synthetic val$result:Ljunit/framework/TestResult;

.field final synthetic val$test:Ljunit/framework/Test;


# direct methods
.method constructor <init>(Ljunit/extensions/ActiveTestSuite;Ljunit/framework/Test;Ljunit/framework/TestResult;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/extensions/ActiveTestSuite;
    .param p2, "val$test"    # Ljunit/framework/Test;
    .param p3, "val$result"    # Ljunit/framework/TestResult;

    #@0
    .prologue
    .line 41
    iput-object p1, p0, Ljunit/extensions/ActiveTestSuite$1;->this$0:Ljunit/extensions/ActiveTestSuite;

    #@2
    iput-object p2, p0, Ljunit/extensions/ActiveTestSuite$1;->val$test:Ljunit/framework/Test;

    #@4
    iput-object p3, p0, Ljunit/extensions/ActiveTestSuite$1;->val$result:Ljunit/framework/TestResult;

    #@6
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 47
    :try_start_0
    iget-object v0, p0, Ljunit/extensions/ActiveTestSuite$1;->val$test:Ljunit/framework/Test;

    #@2
    iget-object v1, p0, Ljunit/extensions/ActiveTestSuite$1;->val$result:Ljunit/framework/TestResult;

    #@4
    invoke-interface {v0, v1}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 49
    iget-object v0, p0, Ljunit/extensions/ActiveTestSuite$1;->this$0:Ljunit/extensions/ActiveTestSuite;

    #@9
    invoke-virtual {v0}, Ljunit/extensions/ActiveTestSuite;->runFinished()V

    #@c
    .line 43
    return-void

    #@d
    .line 48
    :catchall_0
    move-exception v0

    #@e
    .line 49
    iget-object v1, p0, Ljunit/extensions/ActiveTestSuite$1;->this$0:Ljunit/extensions/ActiveTestSuite;

    #@10
    invoke-virtual {v1}, Ljunit/extensions/ActiveTestSuite;->runFinished()V

    #@13
    .line 48
    throw v0
.end method
