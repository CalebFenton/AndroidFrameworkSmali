.class final Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;
.super Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedCollator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FCDUTF16NFDIterator"
.end annotation


# instance fields
.field private greylist-max-o str:Ljava/lang/StringBuilder;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 1540
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;-><init>()V

    return-void
.end method


# virtual methods
.method greylist-max-o setText(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/CharSequence;I)V
    .registers 9
    .param p1, "nfcImpl"    # Landroid/icu/impl/Normalizer2Impl;
    .param p2, "seq"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I

    .line 1542
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->reset()V

    .line 1543
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    move-result v0

    .line 1544
    .local v0, "spanLimit":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 1545
    iput-object p2, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->s:Ljava/lang/CharSequence;

    .line 1546
    iput p3, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->pos:I

    goto :goto_47

    .line 1548
    :cond_17
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez v1, :cond_24

    .line 1549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    goto :goto_29

    .line 1551
    :cond_24
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1553
    :goto_29
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1554
    new-instance v1, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, p3

    invoke-direct {v1, p1, v3, v4}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    .line 1555
    .local v1, "buffer":Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p1, p2, v0, v3, v1}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    .line 1556
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    iput-object v3, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->s:Ljava/lang/CharSequence;

    .line 1557
    iput v2, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->pos:I

    .line 1559
    .end local v1    # "buffer":Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    :goto_47
    return-void
.end method
