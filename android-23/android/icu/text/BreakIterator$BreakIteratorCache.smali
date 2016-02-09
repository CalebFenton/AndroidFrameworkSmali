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
.field private iter:Landroid/icu/text/BreakIterator;

.field private where:Landroid/icu/util/ULocale;


# direct methods
.method constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/BreakIterator;)V
    .locals 1
    .param p1, "where"    # Landroid/icu/util/ULocale;
    .param p2, "iter"    # Landroid/icu/text/BreakIterator;

    #@0
    .prologue
    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 911
    iput-object p1, p0, Landroid/icu/text/BreakIterator$BreakIteratorCache;->where:Landroid/icu/util/ULocale;

    #@5
    .line 912
    invoke-virtual {p2}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/icu/text/BreakIterator;

    #@b
    iput-object v0, p0, Landroid/icu/text/BreakIterator$BreakIteratorCache;->iter:Landroid/icu/text/BreakIterator;

    #@d
    .line 910
    return-void
.end method


# virtual methods
.method createBreakInstance()Landroid/icu/text/BreakIterator;
    .locals 1

    #@0
    .prologue
    .line 920
    iget-object v0, p0, Landroid/icu/text/BreakIterator$BreakIteratorCache;->iter:Landroid/icu/text/BreakIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/text/BreakIterator;

    #@8
    return-object v0
.end method

.method getLocale()Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 916
    iget-object v0, p0, Landroid/icu/text/BreakIterator$BreakIteratorCache;->where:Landroid/icu/util/ULocale;

    #@2
    return-object v0
.end method
