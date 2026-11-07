.class final Landroid/icu/text/BreakIterator$BreakIteratorCache;
.super Ljava/lang/Object;
.source "BreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/BreakIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BreakIteratorCache"
.end annotation


# instance fields
.field private greylist-max-o iter:Landroid/icu/text/BreakIterator;

.field private greylist-max-o where:Landroid/icu/util/ULocale;


# direct methods
.method constructor greylist-max-o <init>(Landroid/icu/util/ULocale;Landroid/icu/text/BreakIterator;)V
    .registers 4
    .param p1, "where"    # Landroid/icu/util/ULocale;
    .param p2, "iter"    # Landroid/icu/text/BreakIterator;

    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    iput-object p1, p0, Landroid/icu/text/BreakIterator$BreakIteratorCache;->where:Landroid/icu/util/ULocale;

    .line 896
    invoke-virtual {p2}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/BreakIterator;

    iput-object v0, p0, Landroid/icu/text/BreakIterator$BreakIteratorCache;->iter:Landroid/icu/text/BreakIterator;

    .line 897
    return-void
.end method


# virtual methods
.method greylist-max-o createBreakInstance()Landroid/icu/text/BreakIterator;
    .registers 2

    .line 904
    iget-object v0, p0, Landroid/icu/text/BreakIterator$BreakIteratorCache;->iter:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/BreakIterator;

    return-object v0
.end method

.method greylist-max-o getLocale()Landroid/icu/util/ULocale;
    .registers 2

    .line 900
    iget-object v0, p0, Landroid/icu/text/BreakIterator$BreakIteratorCache;->where:Landroid/icu/util/ULocale;

    return-object v0
.end method
