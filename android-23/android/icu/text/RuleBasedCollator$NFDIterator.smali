.class abstract Landroid/icu/text/RuleBasedCollator$NFDIterator;
.super Ljava/lang/Object;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedCollator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NFDIterator"
.end annotation


# instance fields
.field private decomp:Ljava/lang/String;

.field private index:I


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method final nextCodePoint()I
    .locals 3

    #@0
    .prologue
    .line 1526
    iget v1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    #@2
    if-ltz v1, :cond_0

    #@4
    .line 1527
    iget v1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    #@6
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->decomp:Ljava/lang/String;

    #@8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@b
    move-result v2

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 1528
    const/4 v1, -0x1

    #@f
    iput v1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    #@11
    .line 1535
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator$NFDIterator;->nextRawCodePoint()I

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 1530
    :cond_1
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->decomp:Ljava/lang/String;

    #@18
    iget v2, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    #@1a
    invoke-static {v1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@1d
    move-result v0

    #@1e
    .line 1531
    .local v0, "c":I
    iget v1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    #@20
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@23
    move-result v2

    #@24
    add-int/2addr v1, v2

    #@25
    iput v1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    #@27
    .line 1532
    return v0
.end method

.method final nextDecomposedCodePoint(Landroid/icu/impl/Normalizer2Impl;I)I
    .locals 2
    .param p1, "nfcImpl"    # Landroid/icu/impl/Normalizer2Impl;
    .param p2, "c"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1544
    iget v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    #@3
    if-ltz v0, :cond_0

    #@5
    return p2

    #@6
    .line 1545
    :cond_0
    invoke-virtual {p1, p2}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->decomp:Ljava/lang/String;

    #@c
    .line 1546
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->decomp:Ljava/lang/String;

    #@e
    if-nez v0, :cond_1

    #@10
    return p2

    #@11
    .line 1547
    :cond_1
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->decomp:Ljava/lang/String;

    #@13
    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@16
    move-result p2

    #@17
    .line 1548
    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    #@1a
    move-result v0

    #@1b
    iput v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    #@1d
    .line 1549
    return p2
.end method

.method protected abstract nextRawCodePoint()I
.end method

.method final reset()V
    .locals 1

    #@0
    .prologue
    .line 1517
    const/4 v0, -0x1

    #@1
    iput v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    #@3
    .line 1516
    return-void
.end method
