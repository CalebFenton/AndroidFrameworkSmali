.class Landroid/icu/util/Range;
.super Ljava/lang/Object;
.source "RangeDateRule.java"


# instance fields
.field public rule:Landroid/icu/util/DateRule;

.field public start:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;Landroid/icu/util/DateRule;)V
    .locals 0
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "rule"    # Landroid/icu/util/DateRule;

    #@0
    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 163
    iput-object p1, p0, Landroid/icu/util/Range;->start:Ljava/util/Date;

    #@5
    .line 164
    iput-object p2, p0, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    #@7
    .line 162
    return-void
.end method
