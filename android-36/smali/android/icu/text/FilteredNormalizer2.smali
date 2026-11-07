.class public Landroid/icu/text/FilteredNormalizer2;
.super Landroid/icu/text/Normalizer2;
.source "FilteredNormalizer2.java"


# instance fields
.field private greylist-max-o norm2:Landroid/icu/text/Normalizer2;

.field private greylist-max-o set:Landroid/icu/text/UnicodeSet;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/icu/text/Normalizer2;Landroid/icu/text/UnicodeSet;)V
    .registers 3
    .param p1, "n2"    # Landroid/icu/text/Normalizer2;
    .param p2, "filterSet"    # Landroid/icu/text/UnicodeSet;

    .line 37
    invoke-direct {p0}, Landroid/icu/text/Normalizer2;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    .line 39
    iput-object p2, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    .line 40
    return-void
.end method

.method private greylist-max-o normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/Appendable;
    .registers 10
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/Appendable;
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v0, "tempDest":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "prevSpanLimit":I
    :goto_6
    :try_start_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 220
    iget-object v2, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, p1, v1, p3}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v2

    .line 221
    .local v2, "spanLimit":I
    sub-int v3, v2, v1

    .line 222
    .local v3, "spanLength":I
    sget-object v4, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v4, :cond_21

    .line 223
    if-eqz v3, :cond_1d

    .line 224
    invoke-interface {p2, p1, v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 226
    :cond_1d
    sget-object v4, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    move-object p3, v4

    .end local p3    # "spanCondition":Landroid/icu/text/UnicodeSet$SpanCondition;
    .local v4, "spanCondition":Landroid/icu/text/UnicodeSet$SpanCondition;
    goto :goto_33

    .line 228
    .end local v4    # "spanCondition":Landroid/icu/text/UnicodeSet$SpanCondition;
    .restart local p3    # "spanCondition":Landroid/icu/text/UnicodeSet$SpanCondition;
    :cond_21
    if-eqz v3, :cond_30

    .line 231
    iget-object v4, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 233
    :cond_30
    sget-object v4, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_32} :catch_37

    move-object p3, v4

    .line 235
    :goto_33
    move v1, v2

    .line 236
    .end local v2    # "spanLimit":I
    .end local v3    # "spanLength":I
    goto :goto_6

    .line 239
    .end local v1    # "prevSpanLimit":I
    :cond_35
    nop

    .line 240
    return-object p2

    .line 237
    :catch_37
    move-exception v1

    .line 238
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v2, v1}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private greylist-max-o normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;
    .registers 10
    .param p1, "first"    # Ljava/lang/StringBuilder;
    .param p2, "second"    # Ljava/lang/CharSequence;
    .param p3, "doNormalize"    # Z

    .line 245
    if-eq p1, p2, :cond_79

    .line 248
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_14

    .line 249
    if-eqz p3, :cond_f

    .line 250
    invoke-virtual {p0, p2, p1}, Landroid/icu/text/FilteredNormalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 252
    :cond_f
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 256
    :cond_14
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    .line 257
    .local v0, "prefixLimit":I
    if-eqz v0, :cond_5f

    .line 258
    invoke-interface {p2, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 259
    .local v1, "prefix":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    const v4, 0x7fffffff

    invoke-virtual {v2, p1, v4, v3}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v2

    .line 260
    .local v2, "suffixStart":I
    if-nez v2, :cond_3e

    .line 261
    if-eqz p3, :cond_38

    .line 262
    iget-object v3, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v3, p1, v1}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_5f

    .line 264
    :cond_38
    iget-object v3, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v3, p1, v1}, Landroid/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_5f

    .line 267
    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v2, v5}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 269
    .local v3, "middle":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_53

    .line 270
    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v5, v3, v1}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_58

    .line 272
    :cond_53
    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v5, v3, v1}, Landroid/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 274
    :goto_58
    invoke-virtual {p1, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 277
    .end local v1    # "prefix":Ljava/lang/CharSequence;
    .end local v2    # "suffixStart":I
    .end local v3    # "middle":Ljava/lang/StringBuilder;
    :cond_5f
    :goto_5f
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_78

    .line 278
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 279
    .local v1, "rest":Ljava/lang/CharSequence;
    if-eqz p3, :cond_75

    .line 280
    sget-object v2, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-direct {p0, v1, p1, v2}, Landroid/icu/text/FilteredNormalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/Appendable;

    goto :goto_78

    .line 282
    :cond_75
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 285
    .end local v1    # "rest":Ljava/lang/CharSequence;
    :cond_78
    :goto_78
    return-object p1

    .line 246
    .end local v0    # "prefixLimit":I
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "first"    # Ljava/lang/StringBuilder;
    .param p2, "second"    # Ljava/lang/CharSequence;

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/FilteredNormalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api composePair(II)I
    .registers 4
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 102
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/Normalizer2;->composePair(II)I

    move-result v0

    goto :goto_18

    :cond_17
    const/4 v0, -0x1

    :goto_18
    return v0
.end method

.method public whitelist test-api getCombiningClass(I)I
    .registers 3
    .param p1, "c"    # I

    .line 110
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public whitelist test-api getDecomposition(I)Ljava/lang/String;
    .registers 3
    .param p1, "c"    # I

    .line 86
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public whitelist test-api getRawDecomposition(I)Ljava/lang/String;
    .registers 3
    .param p1, "c"    # I

    .line 94
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->getRawDecomposition(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public whitelist test-api hasBoundaryAfter(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 196
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->hasBoundaryAfter(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public whitelist test-api hasBoundaryBefore(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 188
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public whitelist test-api isInert(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 204
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->isInert(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public whitelist test-api isNormalized(Ljava/lang/CharSequence;)Z
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 118
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 119
    .local v0, "spanCondition":Landroid/icu/text/UnicodeSet$SpanCondition;
    const/4 v1, 0x0

    .local v1, "prevSpanLimit":I
    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 120
    iget-object v2, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, p1, v1, v0}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v2

    .line 121
    .local v2, "spanLimit":I
    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne v0, v3, :cond_16

    .line 122
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    goto :goto_26

    .line 124
    :cond_16
    iget-object v3, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 125
    const/4 v3, 0x0

    return v3

    .line 127
    :cond_24
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 129
    :goto_26
    move v1, v2

    .line 130
    .end local v2    # "spanLimit":I
    goto :goto_3

    .line 131
    .end local v1    # "prevSpanLimit":I
    :cond_28
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist test-api normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 4
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/Appendable;

    .line 59
    if-eq p2, p1, :cond_9

    .line 62
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/FilteredNormalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0

    .line 60
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "dest"    # Ljava/lang/StringBuilder;

    .line 47
    if-eq p2, p1, :cond_c

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 51
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/FilteredNormalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/Appendable;

    .line 52
    return-object p2

    .line 48
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .registers 4
    .param p1, "first"    # Ljava/lang/StringBuilder;
    .param p2, "second"    # Ljava/lang/CharSequence;

    .line 71
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/FilteredNormalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;
    .registers 8
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 139
    sget-object v0, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    .line 140
    .local v0, "result":Landroid/icu/text/Normalizer$QuickCheckResult;
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 141
    .local v1, "spanCondition":Landroid/icu/text/UnicodeSet$SpanCondition;
    const/4 v2, 0x0

    .local v2, "prevSpanLimit":I
    :goto_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 142
    iget-object v3, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, p1, v2, v1}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v3

    .line 143
    .local v3, "spanLimit":I
    sget-object v4, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne v1, v4, :cond_18

    .line 144
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    goto :goto_2e

    .line 146
    :cond_18
    iget-object v4, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    .line 147
    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/icu/text/Normalizer2;->quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object v4

    .line 148
    .local v4, "qcResult":Landroid/icu/text/Normalizer$QuickCheckResult;
    sget-object v5, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    if-ne v4, v5, :cond_27

    .line 149
    return-object v4

    .line 150
    :cond_27
    sget-object v5, Landroid/icu/text/Normalizer;->MAYBE:Landroid/icu/text/Normalizer$QuickCheckResult;

    if-ne v4, v5, :cond_2c

    .line 151
    move-object v0, v4

    .line 153
    :cond_2c
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 155
    .end local v4    # "qcResult":Landroid/icu/text/Normalizer$QuickCheckResult;
    :goto_2e
    move v2, v3

    .line 156
    .end local v3    # "spanLimit":I
    goto :goto_5

    .line 157
    .end local v2    # "prevSpanLimit":I
    :cond_30
    return-object v0
.end method

.method public whitelist test-api spanQuickCheckYes(Ljava/lang/CharSequence;)I
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 164
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 165
    .local v0, "spanCondition":Landroid/icu/text/UnicodeSet$SpanCondition;
    const/4 v1, 0x0

    .local v1, "prevSpanLimit":I
    :goto_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 166
    iget-object v2, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, p1, v1, v0}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v2

    .line 167
    .local v2, "spanLimit":I
    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne v0, v3, :cond_16

    .line 168
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    goto :goto_26

    .line 170
    :cond_16
    iget-object v3, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    .line 172
    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/text/Normalizer2;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v3, v1

    .line 173
    .local v3, "yesLimit":I
    if-ge v3, v2, :cond_24

    .line 174
    return v3

    .line 176
    :cond_24
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 178
    .end local v3    # "yesLimit":I
    :goto_26
    move v1, v2

    .line 179
    .end local v2    # "spanLimit":I
    goto :goto_3

    .line 180
    .end local v1    # "prevSpanLimit":I
    :cond_28
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    return v1
.end method
