.class public abstract Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;
.super Landroid/icu/text/Normalizer2;
.source "Norm2AllModes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Norm2AllModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Normalizer2WithImpl"
.end annotation


# instance fields
.field public final impl:Landroid/icu/impl/Normalizer2Impl;


# direct methods
.method public constructor <init>(Landroid/icu/impl/Normalizer2Impl;)V
    .locals 0
    .param p1, "ni"    # Landroid/icu/impl/Normalizer2Impl;

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Landroid/icu/text/Normalizer2;-><init>()V

    #@3
    .line 82
    iput-object p1, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@5
    .line 81
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "first"    # Ljava/lang/StringBuilder;
    .param p2, "second"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 115
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public composePair(II)I
    .locals 1
    .param p1, "a"    # I
    .param p2, "b"    # I

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/Normalizer2Impl;->composePair(II)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCombiningClass(I)I
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@2
    iget-object v1, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@4
    invoke-virtual {v1, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, v1}, Landroid/icu/impl/Normalizer2Impl;->getCC(I)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getDecomposition(I)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getQuickCheck(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 159
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getRawDecomposition(I)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->getRawDecomposition(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isNormalized(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 151
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 3
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/Appendable;

    #@0
    .prologue
    .line 97
    if-ne p2, p1, :cond_0

    #@2
    .line 98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v1

    #@8
    .line 101
    :cond_0
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@a
    iget-object v1, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@f
    move-result v2

    #@10
    invoke-direct {v0, v1, p2, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    #@13
    .line 102
    .local v0, "buffer":Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->normalize(Ljava/lang/CharSequence;Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    #@16
    .line 103
    invoke-virtual {v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flush()V

    #@19
    .line 104
    return-object p2
.end method

.method public normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 88
    if-ne p2, p1, :cond_0

    #@2
    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 91
    :cond_0
    const/4 v0, 0x0

    #@9
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@c
    .line 92
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@e
    iget-object v1, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@10
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@13
    move-result v2

    #@14
    invoke-direct {v0, v1, p2, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    #@17
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->normalize(Ljava/lang/CharSequence;Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    #@1a
    .line 93
    return-object p2
.end method

.method protected abstract normalize(Ljava/lang/CharSequence;Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
.end method

.method protected abstract normalizeAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
.end method

.method public normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "first"    # Ljava/lang/StringBuilder;
    .param p2, "second"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 111
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;
    .locals 4
    .param p1, "first"    # Ljava/lang/StringBuilder;
    .param p2, "second"    # Ljava/lang/CharSequence;
    .param p3, "doNormalize"    # Z

    #@0
    .prologue
    .line 119
    if-ne p1, p2, :cond_0

    #@2
    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 124
    :cond_0
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@a
    iget-object v1, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@f
    move-result v2

    #@10
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@13
    move-result v3

    #@14
    add-int/2addr v2, v3

    #@15
    invoke-direct {v0, v1, p1, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    #@18
    .line 122
    invoke-virtual {p0, p2, p3, v0}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->normalizeAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    #@1b
    .line 125
    return-object p1
.end method

.method public quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 155
    invoke-virtual {p0, p1}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->isNormalized(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    sget-object v0, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    sget-object v0, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    #@b
    goto :goto_0
.end method
