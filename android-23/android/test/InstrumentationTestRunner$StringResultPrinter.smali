.class Landroid/test/InstrumentationTestRunner$StringResultPrinter;
.super Ljunit/textui/ResultPrinter;
.source "InstrumentationTestRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/InstrumentationTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StringResultPrinter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/InstrumentationTestRunner;


# direct methods
.method public constructor <init>(Landroid/test/InstrumentationTestRunner;Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "this$0"    # Landroid/test/InstrumentationTestRunner;
    .param p2, "writer"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 655
    iput-object p1, p0, Landroid/test/InstrumentationTestRunner$StringResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    #@2
    .line 656
    invoke-direct {p0, p2}, Ljunit/textui/ResultPrinter;-><init>(Ljava/io/PrintStream;)V

    #@5
    .line 655
    return-void
.end method


# virtual methods
.method public declared-synchronized printResult(Ljunit/framework/TestResult;J)V
    .locals 2
    .param p1, "result"    # Ljunit/framework/TestResult;
    .param p2, "runTime"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 660
    :try_start_0
    invoke-virtual {p0, p2, p3}, Landroid/test/InstrumentationTestRunner$StringResultPrinter;->printHeader(J)V

    #@4
    .line 661
    invoke-virtual {p0, p1}, Landroid/test/InstrumentationTestRunner$StringResultPrinter;->printFooter(Ljunit/framework/TestResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 659
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method
