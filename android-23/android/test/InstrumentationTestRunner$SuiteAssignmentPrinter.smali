.class Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;
.super Ljava/lang/Object;
.source "InstrumentationTestRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/InstrumentationTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuiteAssignmentPrinter"
.end annotation


# instance fields
.field private mEndTime:J

.field private mStartTime:J

.field private mTestResult:Landroid/os/Bundle;

.field private mTimingValid:Z

.field final synthetic this$0:Landroid/test/InstrumentationTestRunner;


# direct methods
.method public constructor <init>(Landroid/test/InstrumentationTestRunner;)V
    .locals 0
    .param p1, "this$0"    # Landroid/test/InstrumentationTestRunner;

    #@0
    .prologue
    .line 676
    iput-object p1, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 691
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTimingValid:Z

    #@3
    .line 690
    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 1
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "t"    # Ljunit/framework/AssertionFailedError;

    #@0
    .prologue
    .line 698
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTimingValid:Z

    #@3
    .line 697
    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .locals 6
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 707
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v2

    #@4
    iput-wide v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mEndTime:J

    #@6
    .line 708
    new-instance v2, Landroid/os/Bundle;

    #@8
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@b
    iput-object v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTestResult:Landroid/os/Bundle;

    #@d
    .line 710
    iget-boolean v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTimingValid:Z

    #@f
    if-eqz v2, :cond_0

    #@11
    iget-wide v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mStartTime:J

    #@13
    const-wide/16 v4, 0x0

    #@15
    cmp-long v2, v2, v4

    #@17
    if-gez v2, :cond_1

    #@19
    .line 711
    :cond_0
    const-string/jumbo v0, "NA"

    #@1c
    .line 712
    .local v0, "assignmentSuite":Ljava/lang/String;
    const/high16 v1, -0x40800000    # -1.0f

    #@1e
    .line 725
    .local v1, "runTime":F
    :goto_0
    const-wide/16 v2, -0x1

    #@20
    iput-wide v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mStartTime:J

    #@22
    .line 727
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTestResult:Landroid/os/Bundle;

    #@24
    const-string/jumbo v3, "stream"

    #@27
    .line 728
    new-instance v4, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    const-string/jumbo v5, "#"

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    check-cast p1, Ljunit/framework/TestCase;

    #@41
    .end local p1    # "test":Ljunit/framework/Test;
    invoke-virtual {p1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    .line 729
    const-string/jumbo v5, "\nin "

    #@4c
    .line 728
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v4

    #@54
    .line 729
    const-string/jumbo v5, " suite\nrunTime: "

    #@57
    .line 728
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    .line 730
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    .line 728
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    .line 730
    const-string/jumbo v5, "\n"

    #@66
    .line 728
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    .line 727
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@71
    .line 731
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTestResult:Landroid/os/Bundle;

    #@73
    const-string/jumbo v3, "runtime"

    #@76
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@79
    .line 732
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTestResult:Landroid/os/Bundle;

    #@7b
    const-string/jumbo v3, "suiteassignment"

    #@7e
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@81
    .line 734
    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    #@83
    iget-object v3, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTestResult:Landroid/os/Bundle;

    #@85
    const/4 v4, 0x0

    #@86
    invoke-virtual {v2, v4, v3}, Landroid/test/InstrumentationTestRunner;->sendStatus(ILandroid/os/Bundle;)V

    #@89
    .line 704
    return-void

    #@8a
    .line 714
    .end local v0    # "assignmentSuite":Ljava/lang/String;
    .end local v1    # "runTime":F
    .restart local p1    # "test":Ljunit/framework/Test;
    :cond_1
    iget-wide v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mEndTime:J

    #@8c
    iget-wide v4, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mStartTime:J

    #@8e
    sub-long/2addr v2, v4

    #@8f
    long-to-float v1, v2

    #@90
    .line 715
    .restart local v1    # "runTime":F
    const/high16 v2, 0x42c80000    # 100.0f

    #@92
    cmpg-float v2, v1, v2

    #@94
    if-gez v2, :cond_2

    #@96
    .line 716
    const-class v2, Landroid/test/InstrumentationTestCase;

    #@98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9b
    move-result-object v3

    #@9c
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@9f
    move-result v2

    #@a0
    if-eqz v2, :cond_3

    #@a2
    .line 718
    :cond_2
    const/high16 v2, 0x447a0000    # 1000.0f

    #@a4
    cmpg-float v2, v1, v2

    #@a6
    if-gez v2, :cond_4

    #@a8
    .line 719
    const-string/jumbo v0, "medium"

    #@ab
    .restart local v0    # "assignmentSuite":Ljava/lang/String;
    goto/16 :goto_0

    #@ad
    .line 717
    .end local v0    # "assignmentSuite":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "small"

    #@b0
    .restart local v0    # "assignmentSuite":Ljava/lang/String;
    goto/16 :goto_0

    #@b2
    .line 721
    .end local v0    # "assignmentSuite":Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "large"

    #@b5
    .restart local v0    # "assignmentSuite":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public startTest(Ljunit/framework/Test;)V
    .locals 2
    .param p1, "test"    # Ljunit/framework/Test;

    #@0
    .prologue
    .line 683
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTimingValid:Z

    #@3
    .line 684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mStartTime:J

    #@9
    .line 682
    return-void
.end method
