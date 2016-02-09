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
.field public matcherWithSkeleton:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

.field public pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V
    .locals 0
    .param p1, "pat"    # Ljava/lang/String;
    .param p2, "matcher"    # Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@0
    .prologue
    .line 1570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1571
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->pattern:Ljava/lang/String;

    #@5
    .line 1572
    iput-object p2, p0, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->matcherWithSkeleton:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    #@7
    .line 1570
    return-void
.end method
