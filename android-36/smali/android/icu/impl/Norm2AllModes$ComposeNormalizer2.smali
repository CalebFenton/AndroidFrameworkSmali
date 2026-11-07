.class public final Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;
.super Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;
.source "Norm2AllModes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Norm2AllModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComposeNormalizer2"
.end annotation


# instance fields
.field private final blacklist onlyContiguous:Z


# direct methods
.method public constructor blacklist <init>(Landroid/icu/impl/Normalizer2Impl;Z)V
    .registers 3
    .param p1, "ni"    # Landroid/icu/impl/Normalizer2Impl;
    .param p2, "fcc"    # Z

    .line 213
    invoke-direct {p0, p1}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    .line 214
    iput-boolean p2, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    .line 215
    return-void
.end method


# virtual methods
.method public blacklist getQuickCheck(I)I
    .registers 4
    .param p1, "c"    # I

    .line 251
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    iget-object v1, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/Normalizer2Impl;->getCompQuickCheck(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hasBoundaryAfter(I)Z
    .registers 4
    .param p1, "c"    # I

    .line 257
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    iget-boolean v1, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    invoke-virtual {v0, p1, v1}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryAfter(IZ)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasBoundaryBefore(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 254
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isInert(I)Z
    .registers 4
    .param p1, "c"    # I

    .line 261
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    iget-boolean v1, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    invoke-virtual {v0, p1, v1}, Landroid/icu/impl/Normalizer2Impl;->isCompInert(IZ)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isNormalized(Ljava/lang/CharSequence;)Z
    .registers 9
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 230
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-boolean v4, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    new-instance v6, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    iget-object v1, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x5

    invoke-direct {v6, v1, v2, v5}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .end local p1    # "s":Ljava/lang/CharSequence;
    .local v1, "s":Ljava/lang/CharSequence;
    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    move-result p1

    return p1
.end method

.method protected blacklist normalize(Ljava/lang/CharSequence;Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .registers 10
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 219
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-boolean v4, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v1, p1

    move-object v6, p2

    .end local p1    # "src":Ljava/lang/CharSequence;
    .end local p2    # "buffer":Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    .local v1, "src":Ljava/lang/CharSequence;
    .local v6, "buffer":Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;
    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    .line 220
    return-void
.end method

.method protected blacklist normalizeAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .registers 6
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "doNormalize"    # Z
    .param p3, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    .line 224
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    iget-boolean v1, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/icu/impl/Normalizer2Impl;->composeAndAppend(Ljava/lang/CharSequence;ZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    .line 225
    return-void
.end method

.method public whitelist test-api quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 236
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-boolean v4, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    .end local p1    # "s":Ljava/lang/CharSequence;
    .local v1, "s":Ljava/lang/CharSequence;
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl;->composeQuickCheck(Ljava/lang/CharSequence;IIZZ)I

    move-result p1

    .line 237
    .local p1, "spanLengthAndMaybe":I
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_16

    .line 238
    sget-object v0, Landroid/icu/text/Normalizer;->MAYBE:Landroid/icu/text/Normalizer$QuickCheckResult;

    return-object v0

    .line 239
    :cond_16
    ushr-int/lit8 v0, p1, 0x1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v0, v2, :cond_21

    .line 240
    sget-object v0, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    return-object v0

    .line 242
    :cond_21
    sget-object v0, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    return-object v0
.end method

.method public whitelist test-api spanQuickCheckYes(Ljava/lang/CharSequence;)I
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 247
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-boolean v4, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object v1, p1

    .end local p1    # "s":Ljava/lang/CharSequence;
    .local v1, "s":Ljava/lang/CharSequence;
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl;->composeQuickCheck(Ljava/lang/CharSequence;IIZZ)I

    move-result p1

    ushr-int/lit8 p1, p1, 0x1

    return p1
.end method
