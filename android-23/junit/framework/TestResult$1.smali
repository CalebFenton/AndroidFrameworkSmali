.class Ljunit/framework/TestResult$1;
.super Ljava/lang/Object;
.source "TestResult.java"

# interfaces
.implements Ljunit/framework/Protectable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljunit/framework/TestResult;->run(Ljunit/framework/TestCase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljunit/framework/TestResult;

.field final synthetic val$test:Ljunit/framework/TestCase;


# direct methods
.method constructor <init>(Ljunit/framework/TestResult;Ljunit/framework/TestCase;)V
    .locals 0
    .param p1, "this$0"    # Ljunit/framework/TestResult;
    .param p2, "val$test"    # Ljunit/framework/TestCase;

    #@0
    .prologue
    .line 113
    iput-object p1, p0, Ljunit/framework/TestResult$1;->this$0:Ljunit/framework/TestResult;

    #@2
    iput-object p2, p0, Ljunit/framework/TestResult$1;->val$test:Ljunit/framework/TestCase;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public protect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Ljunit/framework/TestResult$1;->val$test:Ljunit/framework/TestCase;

    #@2
    invoke-virtual {v0}, Ljunit/framework/TestCase;->runBare()V

    #@5
    .line 114
    return-void
.end method
