.class public final Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;
.super Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;
.source "Norm2AllModes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Norm2AllModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FCDNormalizer2"
.end annotation


# direct methods
.method public constructor <init>(Landroid/icu/impl/Normalizer2Impl;)V
    .locals 0
    .param p1, "ni"    # Landroid/icu/impl/Normalizer2Impl;

    #@0
    .prologue
    .line 253
    invoke-direct {p0, p1}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    #@3
    .line 252
    return-void
.end method


# virtual methods
.method public getQuickCheck(I)I
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@2
    iget-object v1, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@4
    invoke-virtual {v1, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, v1}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method public hasBoundaryAfter(I)Z
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 276
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->hasFCDBoundaryAfter(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasBoundaryBefore(I)Z
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->hasFCDBoundaryBefore(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isInert(I)Z
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->isFCDInert(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected normalize(Ljava/lang/CharSequence;Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 3
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-virtual {v0, p1, v2, v1, p2}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    #@a
    .line 257
    return-void
.end method

.method protected normalizeAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "doNormalize"    # Z
    .param p3, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/impl/Normalizer2Impl;->makeFCDAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    #@5
    .line 262
    return-void
.end method

.method public spanQuickCheckYes(Ljava/lang/CharSequence;)I
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 267
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x0

    #@7
    const/4 v3, 0x0

    #@8
    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    #@b
    move-result v0

    #@c
    return v0
.end method
