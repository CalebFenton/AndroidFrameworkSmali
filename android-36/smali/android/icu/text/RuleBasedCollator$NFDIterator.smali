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
.field private greylist-max-o decomp:Ljava/lang/String;

.field private greylist-max-o index:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 1472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final greylist-max-o nextCodePoint()I
    .registers 4

    .line 1483
    iget v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    if-ltz v0, :cond_24

    .line 1484
    iget v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->decomp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 1485
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    goto :goto_24

    .line 1487
    :cond_12
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->decomp:Ljava/lang/String;

    iget v1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1488
    .local v0, "c":I
    iget v1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    .line 1489
    return v0

    .line 1492
    .end local v0    # "c":I
    :cond_24
    :goto_24
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator$NFDIterator;->nextRawCodePoint()I

    move-result v0

    return v0
.end method

.method final greylist-max-o nextDecomposedCodePoint(Landroid/icu/impl/Normalizer2Impl;I)I
    .registers 5
    .param p1, "nfcImpl"    # Landroid/icu/impl/Normalizer2Impl;
    .param p2, "c"    # I

    .line 1501
    iget v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    if-ltz v0, :cond_5

    return p2

    .line 1502
    :cond_5
    invoke-virtual {p1, p2}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->decomp:Ljava/lang/String;

    .line 1503
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->decomp:Ljava/lang/String;

    if-nez v0, :cond_10

    return p2

    .line 1504
    :cond_10
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->decomp:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p2

    .line 1505
    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    iput v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    .line 1506
    return p2
.end method

.method protected abstract greylist-max-o nextRawCodePoint()I
.end method

.method final greylist-max-o reset()V
    .registers 2

    .line 1474
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    .line 1475
    return-void
.end method
