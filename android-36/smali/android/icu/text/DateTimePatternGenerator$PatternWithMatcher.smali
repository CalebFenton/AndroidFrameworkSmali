.class Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternWithMatcher"
.end annotation


# instance fields
.field public greylist-max-o matcherWithSkeleton:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

.field public greylist-max-o pattern:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V
    .registers 3
    .param p1, "pat"    # Ljava/lang/String;
    .param p2, "matcher"    # Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 2042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2043
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->pattern:Ljava/lang/String;

    .line 2044
    iput-object p2, p0, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->matcherWithSkeleton:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 2045
    return-void
.end method
