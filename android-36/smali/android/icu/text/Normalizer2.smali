.class public abstract Landroid/icu/text/Normalizer2;
.super Ljava/lang/Object;
.source "Normalizer2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/Normalizer2$Mode;
    }
.end annotation


# direct methods
.method protected constructor greylist-max-o <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    return-void
.end method

.method public static whitelist test-api getInstance(Ljava/io/InputStream;Ljava/lang/String;Landroid/icu/text/Normalizer2$Mode;)Landroid/icu/text/Normalizer2;
    .registers 6
    .param p0, "data"    # Ljava/io/InputStream;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # Landroid/icu/text/Normalizer2$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "bytes":Ljava/nio/ByteBuffer;
    if-eqz p0, :cond_10

    .line 205
    :try_start_3
    invoke-static {p0}, Landroid/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_9

    move-object v0, v1

    .line 208
    goto :goto_10

    .line 206
    :catch_9
    move-exception v1

    .line 207
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v2, v1}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 210
    .end local v1    # "e":Ljava/io/IOException;
    :cond_10
    :goto_10
    invoke-static {v0, p1}, Landroid/icu/impl/Norm2AllModes;->getInstance(Ljava/nio/ByteBuffer;Ljava/lang/String;)Landroid/icu/impl/Norm2AllModes;

    move-result-object v1

    .line 211
    .local v1, "all2Modes":Landroid/icu/impl/Norm2AllModes;
    invoke-virtual {p2}, Landroid/icu/text/Normalizer2$Mode;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_2a

    .line 216
    const/4 v2, 0x0

    return-object v2

    .line 215
    :pswitch_1d
    iget-object v2, v1, Landroid/icu/impl/Norm2AllModes;->fcc:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    return-object v2

    .line 214
    :pswitch_20
    iget-object v2, v1, Landroid/icu/impl/Norm2AllModes;->fcd:Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;

    return-object v2

    .line 213
    :pswitch_23
    iget-object v2, v1, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    return-object v2

    .line 212
    :pswitch_26
    iget-object v2, v1, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    return-object v2

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static whitelist test-api getNFCInstance()Landroid/icu/text/Normalizer2;
    .registers 1

    .line 117
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    return-object v0
.end method

.method public static whitelist test-api getNFDInstance()Landroid/icu/text/Normalizer2;
    .registers 1

    .line 127
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    return-object v0
.end method

.method public static whitelist test-api getNFKCCasefoldInstance()Landroid/icu/text/Normalizer2;
    .registers 1

    .line 160
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKC_CFInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    return-object v0
.end method

.method public static whitelist test-api getNFKCInstance()Landroid/icu/text/Normalizer2;
    .registers 1

    .line 137
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    return-object v0
.end method

.method public static whitelist test-api getNFKCSimpleCasefoldInstance()Landroid/icu/text/Normalizer2;
    .registers 1

    .line 174
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKC_SCFInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    return-object v0
.end method

.method public static whitelist test-api getNFKDInstance()Landroid/icu/text/Normalizer2;
    .registers 1

    .line 147
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
.end method

.method public whitelist test-api composePair(II)I
    .registers 4
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 335
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api getCombiningClass(I)I
    .registers 3
    .param p1, "c"    # I

    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist test-api getDecomposition(I)Ljava/lang/String;
.end method

.method public whitelist test-api getRawDecomposition(I)Ljava/lang/String;
    .registers 3
    .param p1, "c"    # I

    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist test-api hasBoundaryAfter(I)Z
.end method

.method public abstract whitelist test-api hasBoundaryBefore(I)Z
.end method

.method public abstract whitelist test-api isInert(I)Z
.end method

.method public abstract whitelist test-api isNormalized(Ljava/lang/CharSequence;)Z
.end method

.method public abstract whitelist test-api normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;
.end method

.method public whitelist test-api normalize(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .param p1, "src"    # Ljava/lang/CharSequence;

    .line 226
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 229
    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer2;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    move-result v0

    .line 230
    .local v0, "spanLength":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 231
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 233
    :cond_12
    if-eqz v0, :cond_33

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 235
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 238
    .end local v0    # "spanLength":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
.end method

.method public abstract whitelist test-api normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
.end method

.method public abstract whitelist test-api quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;
.end method

.method public abstract whitelist test-api spanQuickCheckYes(Ljava/lang/CharSequence;)I
.end method
