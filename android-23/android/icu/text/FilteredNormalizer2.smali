.class public Landroid/icu/text/FilteredNormalizer2;
.super Landroid/icu/text/Normalizer2;
.source "FilteredNormalizer2.java"


# instance fields
.field private norm2:Landroid/icu/text/Normalizer2;

.field private set:Landroid/icu/text/UnicodeSet;


# direct methods
.method public constructor <init>(Landroid/icu/text/Normalizer2;Landroid/icu/text/UnicodeSet;)V
    .locals 0
    .param p1, "n2"    # Landroid/icu/text/Normalizer2;
    .param p2, "filterSet"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Landroid/icu/text/Normalizer2;-><init>()V

    #@3
    .line 36
    iput-object p1, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    #@5
    .line 37
    iput-object p2, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    #@7
    .line 35
    return-void
.end method

.method private normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/Appendable;
    .locals 7
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/Appendable;
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    #@0
    .prologue
    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 231
    .local v4, "tempDest":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@6
    .local v1, "prevSpanLimit":I
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v5

    #@a
    if-ge v1, v5, :cond_3

    #@c
    .line 232
    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    #@e
    invoke-virtual {v5, p1, v1, p3}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@11
    move-result v3

    #@12
    .line 233
    .local v3, "spanLimit":I
    sub-int v2, v3, v1

    #@14
    .line 234
    .local v2, "spanLength":I
    sget-object v5, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@16
    if-ne p3, v5, :cond_1

    #@18
    .line 235
    if-eqz v2, :cond_0

    #@1a
    .line 236
    invoke-interface {p2, p1, v1, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    #@1d
    .line 238
    :cond_0
    sget-object p3, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@1f
    .line 247
    :goto_1
    move v1, v3

    #@20
    goto :goto_0

    #@21
    .line 240
    :cond_1
    if-eqz v2, :cond_2

    #@23
    .line 243
    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    #@25
    invoke-interface {p1, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@28
    move-result-object v6

    #@29
    invoke-virtual {v5, v6, v4}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-interface {p2, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    #@30
    .line 245
    :cond_2
    sget-object p3, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    goto :goto_1

    #@33
    .line 249
    .end local v2    # "spanLength":I
    .end local v3    # "spanLimit":I
    :catch_0
    move-exception v0

    #@34
    .line 250
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Landroid/icu/util/ICUUncheckedIOException;

    #@36
    invoke-direct {v5, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@39
    throw v5

    #@3a
    .line 252
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    return-object p2
.end method

.method private normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;
    .locals 9
    .param p1, "first"    # Ljava/lang/StringBuilder;
    .param p2, "second"    # Ljava/lang/CharSequence;
    .param p3, "doNormalize"    # Z

    #@0
    .prologue
    const v8, 0x7fffffff

    #@3
    const/4 v7, 0x0

    #@4
    .line 257
    if-ne p1, p2, :cond_0

    #@6
    .line 258
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@8
    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@b
    throw v5

    #@c
    .line 260
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@f
    move-result v5

    #@10
    if-nez v5, :cond_2

    #@12
    .line 261
    if-eqz p3, :cond_1

    #@14
    .line 262
    invoke-virtual {p0, p2, p1}, Landroid/icu/text/FilteredNormalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    return-object v5

    #@19
    .line 264
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    return-object v5

    #@1e
    .line 268
    :cond_2
    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    #@20
    sget-object v6, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@22
    invoke-virtual {v5, p2, v7, v6}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@25
    move-result v2

    #@26
    .line 269
    .local v2, "prefixLimit":I
    if-eqz v2, :cond_3

    #@28
    .line 270
    invoke-interface {p2, v7, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@2b
    move-result-object v1

    #@2c
    .line 271
    .local v1, "prefix":Ljava/lang/CharSequence;
    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    #@2e
    sget-object v6, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@30
    invoke-virtual {v5, p1, v8, v6}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@33
    move-result v4

    #@34
    .line 272
    .local v4, "suffixStart":I
    if-nez v4, :cond_6

    #@36
    .line 273
    if-eqz p3, :cond_5

    #@38
    .line 274
    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    #@3a
    invoke-virtual {v5, p1, v1}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3d
    .line 289
    .end local v1    # "prefix":Ljava/lang/CharSequence;
    .end local v4    # "suffixStart":I
    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@40
    move-result v5

    #@41
    if-ge v2, v5, :cond_4

    #@43
    .line 290
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@46
    move-result v5

    #@47
    invoke-interface {p2, v2, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@4a
    move-result-object v3

    #@4b
    .line 291
    .local v3, "rest":Ljava/lang/CharSequence;
    if-eqz p3, :cond_8

    #@4d
    .line 292
    sget-object v5, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@4f
    invoke-direct {p0, v3, p1, v5}, Landroid/icu/text/FilteredNormalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/Appendable;

    #@52
    .line 297
    .end local v3    # "rest":Ljava/lang/CharSequence;
    :cond_4
    :goto_1
    return-object p1

    #@53
    .line 276
    .restart local v1    # "prefix":Ljava/lang/CharSequence;
    .restart local v4    # "suffixStart":I
    :cond_5
    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    #@55
    invoke-virtual {v5, p1, v1}, Landroid/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@58
    goto :goto_0

    #@59
    .line 279
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    #@5b
    .line 280
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@5e
    move-result v5

    #@5f
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    #@62
    move-result-object v5

    #@63
    .line 279
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@66
    .line 281
    .local v0, "middle":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_7

    #@68
    .line 282
    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    #@6a
    invoke-virtual {v5, v0, v1}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@6d
    .line 286
    :goto_2
    invoke-virtual {p1, v4, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@74
    goto :goto_0

    #@75
    .line 284
    :cond_7
    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    #@77
    invoke-virtual {v5, v0, v1}, Landroid/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@7a
    goto :goto_2

    #@7b
    .line 294
    .end local v0    # "middle":Ljava/lang/StringBuilder;
    .end local v1    # "prefix":Ljava/lang/CharSequence;
    .end local v4    # "suffixStart":I
    .restart local v3    # "rest":Ljava/lang/CharSequence;
    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@7e
    goto :goto_1
.end method


# virtual methods
.method public append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "first"    # Ljava/lang/StringBuilder;
    .param p2, "second"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 80
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/FilteredNormalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

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
    .line 107
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    #@a
    invoke-virtual {v0, p2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    #@12
    invoke-virtual {v0, p1, p2}, Landroid/icu/text/Normalizer2;->composePair(II)I

    #@15
    move-result v0

    #@16
    :goto_0
    return v0

    #@17
    :cond_0
    const/4 v0, -0x1

    #@18
    goto :goto_0
.end method

.method public getCombiningClass(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    #@a
    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public getDecomposition(I)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    #@a
    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    :goto_0
    return-object v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public getRawDecomposition(I)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    #@a
    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->getRawDecomposition(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    :goto_0
    return-object v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public hasBoundaryAfter(I)Z
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    #@a
    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->hasBoundaryAfter(I)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method public hasBoundaryBefore(I)Z
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    #@a
    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method public isInert(I)Z
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    #@a
    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->isInert(I)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method public isNormalized(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 125
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@2
    .line 126
    .local v1, "spanCondition":Landroid/icu/text/UnicodeSet$SpanCondition;
    const/4 v0, 0x0

    #@3
    .local v0, "prevSpanLimit":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@6
    move-result v3

    #@7
    if-ge v0, v3, :cond_2

    #@9
    .line 127
    iget-object v3, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    #@b
    invoke-virtual {v3, p1, v0, v1}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@e
    move-result v2

    #@f
    .line 128
    .local v2, "spanLimit":I
    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@11
    if-ne v1, v3, :cond_0

    #@13
    .line 129
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@15
    .line 136
    :goto_1
    move v0, v2

    #@16
    goto :goto_0

    #@17
    .line 131
    :cond_0
    iget-object v3, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    #@19
    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v3, v4}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_1

    #@23
    .line 132
    const/4 v3, 0x0

    #@24
    return v3

    #@25
    .line 134
    :cond_1
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@27
    goto :goto_1

    #@28
    .line 138
    .end local v2    # "spanLimit":I
    :cond_2
    const/4 v3, 0x1

    #@29
    return v3
.end method

.method public normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/Appendable;

    #@0
    .prologue
    .line 59
    if-ne p2, p1, :cond_0

    #@2
    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 62
    :cond_0
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@a
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/FilteredNormalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/Appendable;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 46
    if-ne p2, p1, :cond_0

    #@2
    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 49
    :cond_0
    const/4 v0, 0x0

    #@9
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@c
    .line 50
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@e
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/FilteredNormalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/Appendable;

    #@11
    .line 51
    return-object p2
.end method

.method public normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "first"    # Ljava/lang/StringBuilder;
    .param p2, "second"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 72
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/FilteredNormalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 147
    sget-object v2, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    #@2
    .line 148
    .local v2, "result":Landroid/icu/text/Normalizer$QuickCheckResult;
    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@4
    .line 149
    .local v3, "spanCondition":Landroid/icu/text/UnicodeSet$SpanCondition;
    const/4 v0, 0x0

    #@5
    .local v0, "prevSpanLimit":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v5

    #@9
    if-ge v0, v5, :cond_3

    #@b
    .line 150
    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    #@d
    invoke-virtual {v5, p1, v0, v3}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@10
    move-result v4

    #@11
    .line 151
    .local v4, "spanLimit":I
    sget-object v5, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@13
    if-ne v3, v5, :cond_0

    #@15
    .line 152
    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@17
    .line 163
    :goto_1
    move v0, v4

    #@18
    goto :goto_0

    #@19
    .line 155
    :cond_0
    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    #@1b
    invoke-interface {p1, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@1e
    move-result-object v6

    #@1f
    invoke-virtual {v5, v6}, Landroid/icu/text/Normalizer2;->quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;

    #@22
    move-result-object v1

    #@23
    .line 156
    .local v1, "qcResult":Landroid/icu/text/Normalizer$QuickCheckResult;
    sget-object v5, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    #@25
    if-ne v1, v5, :cond_1

    #@27
    .line 157
    return-object v1

    #@28
    .line 158
    :cond_1
    sget-object v5, Landroid/icu/text/Normalizer;->MAYBE:Landroid/icu/text/Normalizer$QuickCheckResult;

    #@2a
    if-ne v1, v5, :cond_2

    #@2c
    .line 159
    move-object v2, v1

    #@2d
    .line 161
    :cond_2
    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@2f
    goto :goto_1

    #@30
    .line 165
    .end local v1    # "qcResult":Landroid/icu/text/Normalizer$QuickCheckResult;
    .end local v4    # "spanLimit":I
    :cond_3
    return-object v2
.end method

.method public spanQuickCheckYes(Ljava/lang/CharSequence;)I
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 173
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@2
    .line 174
    .local v1, "spanCondition":Landroid/icu/text/UnicodeSet$SpanCondition;
    const/4 v0, 0x0

    #@3
    .local v0, "prevSpanLimit":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@6
    move-result v4

    #@7
    if-ge v0, v4, :cond_2

    #@9
    .line 175
    iget-object v4, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    #@b
    invoke-virtual {v4, p1, v0, v1}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    #@e
    move-result v2

    #@f
    .line 176
    .local v2, "spanLimit":I
    sget-object v4, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@11
    if-ne v1, v4, :cond_0

    #@13
    .line 177
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@15
    .line 187
    :goto_1
    move v0, v2

    #@16
    goto :goto_0

    #@17
    .line 181
    :cond_0
    iget-object v4, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    #@19
    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v4, v5}, Landroid/icu/text/Normalizer2;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    #@20
    move-result v4

    #@21
    .line 180
    add-int v3, v0, v4

    #@23
    .line 182
    .local v3, "yesLimit":I
    if-ge v3, v2, :cond_1

    #@25
    .line 183
    return v3

    #@26
    .line 185
    :cond_1
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@28
    goto :goto_1

    #@29
    .line 189
    .end local v2    # "spanLimit":I
    .end local v3    # "yesLimit":I
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@2c
    move-result v4

    #@2d
    return v4
.end method
