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
.method public constructor blacklist <init>(Landroid/icu/impl/Normalizer2Impl;)V
    .registers 2
    .param p1, "ni"    # Landroid/icu/impl/Normalizer2Impl;

    .line 272
    invoke-direct {p0, p1}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    .line 273
    return-void
.end method


# virtual methods
.method public blacklist getQuickCheck(I)I
    .registers 4
    .param p1, "c"    # I

    .line 290
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    iget-object v1, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasBoundaryAfter(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 295
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->hasFCDBoundaryAfter(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasBoundaryBefore(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 293
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->hasFCDBoundaryBefore(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isInert(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 297
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->isFCDInert(I)Z

    move-result v0

    return v0
.end method

.method protected blacklist normalize(Ljava/lang/CharSequence;Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .registers 6
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 277
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    .line 278
    return-void
.end method

.method protected blacklist normalizeAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .registers 5
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "doNormalize"    # Z
    .param p3, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 282
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/impl/Normalizer2Impl;->makeFCDAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    .line 283
    return-void
.end method

.method public whitelist test-api spanQuickCheckYes(Ljava/lang/CharSequence;)I
    .registers 6
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 286
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    move-result v0

    return v0
.end method
