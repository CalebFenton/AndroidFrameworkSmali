.class Landroid/icu/util/Range;
.super Ljava/lang/Object;
.source "RangeDateRule.java"


# instance fields
.field public greylist-max-o rule:Landroid/icu/util/DateRule;

.field public greylist-max-o start:Ljava/util/Date;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/util/Date;Landroid/icu/util/DateRule;)V
    .registers 3
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "rule"    # Landroid/icu/util/DateRule;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Landroid/icu/util/Range;->start:Ljava/util/Date;

    .line 164
    iput-object p2, p0, Landroid/icu/util/Range;->rule:Landroid/icu/util/DateRule;

    .line 165
    return-void
.end method
