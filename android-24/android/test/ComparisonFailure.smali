.class public Landroid/test/ComparisonFailure;
.super Landroid/test/AssertionFailedError;
.source "ComparisonFailure.java"


# instance fields
.field private mComparison:Ljunit/framework/ComparisonFailure;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "expected"    # Ljava/lang/String;
    .param p3, "actual"    # Ljava/lang/String;

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Landroid/test/AssertionFailedError;-><init>()V

    #@3
    .line 28
    new-instance v0, Ljunit/framework/ComparisonFailure;

    #@5
    invoke-direct {v0, p1, p2, p3}, Ljunit/framework/ComparisonFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@8
    iput-object v0, p0, Landroid/test/ComparisonFailure;->mComparison:Ljunit/framework/ComparisonFailure;

    #@a
    .line 27
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 32
    iget-object v0, p0, Landroid/test/ComparisonFailure;->mComparison:Ljunit/framework/ComparisonFailure;

    #@2
    invoke-virtual {v0}, Ljunit/framework/ComparisonFailure;->getMessage()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
