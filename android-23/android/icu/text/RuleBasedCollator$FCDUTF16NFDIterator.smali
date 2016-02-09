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
.field private str:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1583
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method setText(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/CharSequence;I)V
    .locals 5
    .param p1, "nfcImpl"    # Landroid/icu/impl/Normalizer2Impl;
    .param p2, "seq"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 1585
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->reset()V

    #@5
    .line 1586
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v2

    #@9
    invoke-virtual {p1, p2, p3, v2, v3}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    #@c
    move-result v1

    #@d
    .line 1587
    .local v1, "spanLimit":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@10
    move-result v2

    #@11
    if-ne v1, v2, :cond_0

    #@13
    .line 1588
    iput-object p2, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->s:Ljava/lang/CharSequence;

    #@15
    .line 1589
    iput p3, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->pos:I

    #@17
    .line 1584
    :goto_0
    return-void

    #@18
    .line 1591
    :cond_0
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    #@1a
    if-nez v2, :cond_1

    #@1c
    .line 1592
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    iput-object v2, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    #@23
    .line 1596
    :goto_1
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    #@25
    invoke-virtual {v2, p2, p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@28
    .line 1597
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@2a
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    #@2c
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@2f
    move-result v3

    #@30
    sub-int/2addr v3, p3

    #@31
    invoke-direct {v0, p1, v2, v3}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    #@34
    .line 1598
    .local v0, "buffer":Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@37
    move-result v2

    #@38
    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    #@3b
    .line 1599
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    #@3d
    iput-object v2, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->s:Ljava/lang/CharSequence;

    #@3f
    .line 1600
    iput v4, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->pos:I

    #@41
    goto :goto_0

    #@42
    .line 1594
    .end local v0    # "buffer":Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    :cond_1
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->str:Ljava/lang/StringBuilder;

    #@44
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    #@47
    goto :goto_1
.end method
