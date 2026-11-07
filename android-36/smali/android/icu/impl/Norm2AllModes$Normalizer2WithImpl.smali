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
.field public final blacklist impl:Landroid/icu/impl/Normalizer2Impl;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/impl/Normalizer2Impl;)V
    .registers 2
    .param p1, "ni"    # Landroid/icu/impl/Normalizer2Impl;

    .line 93
    invoke-direct {p0}, Landroid/icu/text/Normalizer2;-><init>()V

    .line 94
    iput-object p1, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    .line 95
    return-void
.end method


# virtual methods
.method public whitelist test-api append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "first"    # Ljava/lang/StringBuilder;
    .param p2, "second"    # Ljava/lang/CharSequence;

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api composePair(II)I
    .registers 4
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 152
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/Normalizer2Impl;->composePair(II)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getCombiningClass(I)I
    .registers 4
    .param p1, "c"    # I

    .line 157
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    iget-object v1, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/Normalizer2Impl;->getCC(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getDecomposition(I)Ljava/lang/String;
    .registers 3
    .param p1, "c"    # I

    .line 144
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist getQuickCheck(I)I
.end method

.method public whitelist test-api getRawDecomposition(I)Ljava/lang/String;
    .registers 3
    .param p1, "c"    # I

    .line 148
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->getRawDecomposition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isNormalized(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 163
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist test-api normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 6
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/Appendable;

    .line 109
    if-eq p2, p1, :cond_14

    .line 112
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    iget-object v1, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    .line 113
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v0, v1, p2, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    .line 114
    .local v0, "buffer":Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->normalize(Ljava/lang/CharSequence;Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    .line 115
    invoke-virtual {v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flush()V

    .line 116
    return-object p2

    .line 110
    .end local v0    # "buffer":Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 6
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/StringBuilder;

    .line 100
    if-eq p2, p1, :cond_15

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 104
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    iget-object v1, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v0, v1, p2, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->normalize(Ljava/lang/CharSequence;Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    .line 105
    return-object p2

    .line 101
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method protected abstract blacklist normalize(Ljava/lang/CharSequence;Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
.end method

.method protected abstract blacklist normalizeAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
.end method

.method public whitelist test-api normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "first"    # Ljava/lang/StringBuilder;
    .param p2, "second"    # Ljava/lang/CharSequence;

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;
    .registers 8
    .param p1, "first"    # Ljava/lang/StringBuilder;
    .param p2, "second"    # Ljava/lang/CharSequence;
    .param p3, "doNormalize"    # Z

    .line 131
    if-eq p1, p2, :cond_16

    .line 134
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    iget-object v1, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    .line 136
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v0, v1, p1, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    .line 134
    invoke-virtual {p0, p2, p3, v0}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->normalizeAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    .line 137
    return-object p1

    .line 132
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;
    .registers 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 167
    invoke-virtual {p0, p1}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    goto :goto_b

    :cond_9
    sget-object v0, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    :goto_b
    return-object v0
.end method
