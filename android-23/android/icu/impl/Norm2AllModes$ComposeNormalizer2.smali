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
.field private final onlyContiguous:Z


# direct methods
.method public constructor <init>(Landroid/icu/impl/Normalizer2Impl;Z)V
    .locals 0
    .param p1, "ni"    # Landroid/icu/impl/Normalizer2Impl;
    .param p2, "fcc"    # Z

    #@0
    .prologue
    .line 197
    invoke-direct {p0, p1}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    #@3
    .line 198
    iput-boolean p2, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    #@5
    .line 196
    return-void
.end method


# virtual methods
.method public getQuickCheck(I)I
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@2
    iget-object v1, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@4
    invoke-virtual {v1, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, v1}, Landroid/icu/impl/Normalizer2Impl;->getCompQuickCheck(I)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public hasBoundaryAfter(I)Z
    .locals 3
    .param p1, "c"    # I

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@2
    iget-boolean v1, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {v0, p1, v1, v2}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryAfter(IZZ)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public hasBoundaryBefore(I)Z
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isInert(I)Z
    .locals 3
    .param p1, "c"    # I

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@2
    iget-boolean v1, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    #@4
    const/4 v2, 0x1

    #@5
    invoke-virtual {v0, p1, v1, v2}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryAfter(IZZ)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public isNormalized(Ljava/lang/CharSequence;)Z
    .locals 8
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 214
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@6
    move-result v3

    #@7
    .line 215
    iget-boolean v4, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    #@9
    .line 216
    new-instance v6, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@b
    iget-object v1, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@d
    new-instance v5, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const/4 v7, 0x5

    #@13
    invoke-direct {v6, v1, v5, v7}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    #@16
    move-object v1, p1

    #@17
    move v5, v2

    #@18
    .line 214
    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    #@1b
    move-result v0

    #@1c
    return v0
.end method

.method protected normalize(Ljava/lang/CharSequence;Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 7
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v3

    #@6
    iget-boolean v4, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    #@8
    const/4 v2, 0x0

    #@9
    const/4 v5, 0x1

    #@a
    move-object v1, p1

    #@b
    move-object v6, p2

    #@c
    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    #@f
    .line 202
    return-void
.end method

.method protected normalizeAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 2
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "doNormalize"    # Z
    .param p3, "buffer"    # Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@2
    iget-boolean v1, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    #@4
    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/icu/impl/Normalizer2Impl;->composeAndAppend(Ljava/lang/CharSequence;ZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    #@7
    .line 207
    return-void
.end method

.method public quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 220
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@6
    move-result v3

    #@7
    iget-boolean v4, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    #@9
    move-object v1, p1

    #@a
    move v5, v2

    #@b
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl;->composeQuickCheck(Ljava/lang/CharSequence;IIZZ)I

    #@e
    move-result v6

    #@f
    .line 221
    .local v6, "spanLengthAndMaybe":I
    and-int/lit8 v0, v6, 0x1

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 222
    sget-object v0, Landroid/icu/text/Normalizer;->MAYBE:Landroid/icu/text/Normalizer$QuickCheckResult;

    #@15
    return-object v0

    #@16
    .line 223
    :cond_0
    ushr-int/lit8 v0, v6, 0x1

    #@18
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@1b
    move-result v1

    #@1c
    if-ne v0, v1, :cond_1

    #@1e
    .line 224
    sget-object v0, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    #@20
    return-object v0

    #@21
    .line 226
    :cond_1
    sget-object v0, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    #@23
    return-object v0
.end method

.method public spanQuickCheckYes(Ljava/lang/CharSequence;)I
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    #@2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v3

    #@6
    iget-boolean v4, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    #@8
    const/4 v2, 0x0

    #@9
    const/4 v5, 0x1

    #@a
    move-object v1, p1

    #@b
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl;->composeQuickCheck(Ljava/lang/CharSequence;IIZZ)I

    #@e
    move-result v0

    #@f
    ushr-int/lit8 v0, v0, 0x1

    #@11
    return v0
.end method
