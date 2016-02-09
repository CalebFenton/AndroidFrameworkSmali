.class public abstract Landroid/icu/text/Normalizer2;
.super Ljava/lang/Object;
.source "Normalizer2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/Normalizer2$Mode;
    }
.end annotation


# static fields
.field private static synthetic -android_icu_text_Normalizer2$ModeSwitchesValues:[I


# direct methods
.method private static synthetic -getandroid_icu_text_Normalizer2$ModeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/text/Normalizer2;->-android_icu_text_Normalizer2$ModeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/text/Normalizer2;->-android_icu_text_Normalizer2$ModeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/text/Normalizer2$Mode;->values()[Landroid/icu/text/Normalizer2$Mode;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/text/Normalizer2$Mode;->COMPOSE:Landroid/icu/text/Normalizer2$Mode;

    #@10
    invoke-virtual {v1}, Landroid/icu/text/Normalizer2$Mode;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/Normalizer2$Mode;->COMPOSE_CONTIGUOUS:Landroid/icu/text/Normalizer2$Mode;

    #@19
    invoke-virtual {v1}, Landroid/icu/text/Normalizer2$Mode;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/text/Normalizer2$Mode;->DECOMPOSE:Landroid/icu/text/Normalizer2$Mode;

    #@22
    invoke-virtual {v1}, Landroid/icu/text/Normalizer2$Mode;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/text/Normalizer2$Mode;->FCD:Landroid/icu/text/Normalizer2$Mode;

    #@2b
    invoke-virtual {v1}, Landroid/icu/text/Normalizer2$Mode;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@32
    :goto_3
    sput-object v0, Landroid/icu/text/Normalizer2;->-android_icu_text_Normalizer2$ModeSwitchesValues:[I

    #@34
    return-object v0

    #@35
    :catch_0
    move-exception v1

    #@36
    goto :goto_3

    #@37
    :catch_1
    move-exception v1

    #@38
    goto :goto_2

    #@39
    :catch_2
    move-exception v1

    #@3a
    goto :goto_1

    #@3b
    :catch_3
    move-exception v1

    #@3c
    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance(Ljava/io/InputStream;Ljava/lang/String;Landroid/icu/text/Normalizer2$Mode;)Landroid/icu/text/Normalizer2;
    .locals 6
    .param p0, "data"    # Ljava/io/InputStream;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # Landroid/icu/text/Normalizer2$Mode;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 192
    const/4 v1, 0x0

    #@2
    .line 193
    .local v1, "bytes":Ljava/nio/ByteBuffer;
    if-eqz p0, :cond_0

    #@4
    .line 195
    :try_start_0
    invoke-static {p0}, Landroid/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v1

    #@8
    .line 200
    .end local v1    # "bytes":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-static {v1, p1}, Landroid/icu/impl/Norm2AllModes;->getInstance(Ljava/nio/ByteBuffer;Ljava/lang/String;)Landroid/icu/impl/Norm2AllModes;

    #@b
    move-result-object v0

    #@c
    .line 201
    .local v0, "all2Modes":Landroid/icu/impl/Norm2AllModes;
    invoke-static {}, Landroid/icu/text/Normalizer2;->-getandroid_icu_text_Normalizer2$ModeSwitchesValues()[I

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p2}, Landroid/icu/text/Normalizer2$Mode;->ordinal()I

    #@13
    move-result v4

    #@14
    aget v3, v3, v4

    #@16
    packed-switch v3, :pswitch_data_0

    #@19
    .line 206
    return-object v5

    #@1a
    .line 196
    .end local v0    # "all2Modes":Landroid/icu/impl/Norm2AllModes;
    .restart local v1    # "bytes":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    #@1b
    .line 197
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Landroid/icu/util/ICUUncheckedIOException;

    #@1d
    invoke-direct {v3, v2}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    #@20
    throw v3

    #@21
    .line 202
    .end local v1    # "bytes":Ljava/nio/ByteBuffer;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "all2Modes":Landroid/icu/impl/Norm2AllModes;
    :pswitch_0
    iget-object v3, v0, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    #@23
    return-object v3

    #@24
    .line 203
    :pswitch_1
    iget-object v3, v0, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    #@26
    return-object v3

    #@27
    .line 204
    :pswitch_2
    iget-object v3, v0, Landroid/icu/impl/Norm2AllModes;->fcd:Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;

    #@29
    return-object v3

    #@2a
    .line 205
    :pswitch_3
    iget-object v3, v0, Landroid/icu/impl/Norm2AllModes;->fcc:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    #@2c
    return-object v3

    #@2d
    .line 201
    nop

    #@2e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getNFCInstance()Landroid/icu/text/Normalizer2;
    .locals 1

    #@0
    .prologue
    .line 121
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    #@6
    return-object v0
.end method

.method public static getNFDInstance()Landroid/icu/text/Normalizer2;
    .locals 1

    #@0
    .prologue
    .line 132
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    #@6
    return-object v0
.end method

.method public static getNFKCCasefoldInstance()Landroid/icu/text/Normalizer2;
    .locals 1

    #@0
    .prologue
    .line 165
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKC_CFInstance()Landroid/icu/impl/Norm2AllModes;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    #@6
    return-object v0
.end method

.method public static getNFKCInstance()Landroid/icu/text/Normalizer2;
    .locals 1

    #@0
    .prologue
    .line 143
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKCInstance()Landroid/icu/impl/Norm2AllModes;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    #@6
    return-object v0
.end method

.method public static getNFKDInstance()Landroid/icu/text/Normalizer2;
    .locals 1

    #@0
    .prologue
    .line 154
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKCInstance()Landroid/icu/impl/Norm2AllModes;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    #@6
    return-object v0
.end method


# virtual methods
.method public abstract append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
.end method

.method public composePair(II)I
    .locals 1
    .param p1, "a"    # I
    .param p2, "b"    # I

    #@0
    .prologue
    .line 331
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getCombiningClass(I)I
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 341
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract getDecomposition(I)Ljava/lang/String;
.end method

.method public getRawDecomposition(I)Ljava/lang/String;
    .locals 1
    .param p1, "c"    # I

    #@0
    .prologue
    .line 314
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public abstract hasBoundaryAfter(I)Z
.end method

.method public abstract hasBoundaryBefore(I)Z
.end method

.method public abstract isInert(I)Z
.end method

.method public abstract isNormalized(Ljava/lang/CharSequence;)Z
.end method

.method public abstract normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;
.end method

.method public normalize(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p1, "src"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 217
    instance-of v2, p1, Ljava/lang/String;

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 220
    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer2;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    #@7
    move-result v1

    #@8
    .line 221
    .local v1, "spanLength":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@b
    move-result v2

    #@c
    if-ne v1, v2, :cond_0

    #@e
    .line 222
    check-cast p1, Ljava/lang/String;

    #@10
    .end local p1    # "src":Ljava/lang/CharSequence;
    return-object p1

    #@11
    .line 224
    .restart local p1    # "src":Ljava/lang/CharSequence;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@16
    move-result v3

    #@17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@1a
    const/4 v3, 0x0

    #@1b
    invoke-virtual {v2, p1, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 225
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@22
    move-result v2

    #@23
    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {p0, v0, v2}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    return-object v2

    #@30
    .line 227
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "spanLength":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@32
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@35
    move-result v3

    #@36
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@39
    invoke-virtual {p0, p1, v2}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    return-object v2
.end method

.method public abstract normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
.end method

.method public abstract normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
.end method

.method public abstract quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;
.end method

.method public abstract spanQuickCheckYes(Ljava/lang/CharSequence;)I
.end method
