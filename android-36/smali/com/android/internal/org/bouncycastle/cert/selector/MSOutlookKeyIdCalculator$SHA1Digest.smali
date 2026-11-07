.class Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;
.super Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;
.source "MSOutlookKeyIdCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SHA1Digest"
.end annotation


# static fields
.field private static final blacklist DIGEST_LENGTH:I = 0x14

.field private static final blacklist Y1:I = 0x5a827999

.field private static final blacklist Y2:I = 0x6ed9eba1

.field private static final blacklist Y3:I = -0x70e44324

.field private static final blacklist Y4:I = -0x359d3e2a


# instance fields
.field private blacklist H1:I

.field private blacklist H2:I

.field private blacklist H3:I

.field private blacklist H4:I

.field private blacklist H5:I

.field private blacklist X:[I

.field private blacklist xOff:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 179
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;-><init>()V

    .line 172
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->reset()V

    .line 181
    return-void
.end method

.method private blacklist f(III)I
    .registers 6
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .line 273
    and-int v0, p1, p2

    not-int v1, p1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private blacklist g(III)I
    .registers 6
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .line 289
    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private blacklist h(III)I
    .registers 5
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .line 281
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 5
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->finish()V

    .line 229
    iget v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    invoke-static {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 230
    iget v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 231
    iget v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 232
    iget v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 233
    iget v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->reset()V

    .line 237
    const/16 v0, 0x14

    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 185
    const-string v0, "SHA-1"

    return-object v0
.end method

.method public blacklist getDigestSize()I
    .registers 2

    .line 190
    const/16 v0, 0x14

    return v0
.end method

.method protected blacklist processBlock()V
    .registers 13

    .line 297
    const/16 v0, 0x10

    .local v0, "i":I
    :goto_2
    const/16 v1, 0x50

    if-ge v0, v1, :cond_2d

    .line 299
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v2, v0, -0x3

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v3, v0, -0x8

    aget v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v3, v0, -0xe

    aget v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v3, v0, -0x10

    aget v2, v2, v3

    xor-int/2addr v1, v2

    .line 300
    .local v1, "t":I
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, v1, 0x1f

    or-int/2addr v3, v4

    aput v3, v2, v0

    .line 297
    .end local v1    # "t":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 306
    .end local v0    # "i":I
    :cond_2d
    iget v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    .line 307
    .local v0, "A":I
    iget v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    .line 308
    .local v1, "B":I
    iget v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    .line 309
    .local v2, "C":I
    iget v3, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    .line 310
    .local v3, "D":I
    iget v4, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    .line 315
    .local v4, "E":I
    const/4 v5, 0x0

    .line 317
    .local v5, "idx":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_39
    const/4 v7, 0x4

    if-ge v6, v7, :cond_c1

    .line 321
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "idx":I
    .local v9, "idx":I
    aget v5, v8, v5

    add-int/2addr v7, v5

    const v5, 0x5a827999

    add-int/2addr v7, v5

    add-int/2addr v4, v7

    .line 322
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 324
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .local v10, "idx":I
    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v3, v7

    .line 325
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 327
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v4, v0, v1}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aget v8, v8, v10

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v2, v7

    .line 328
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 330
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v1, v7

    .line 331
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 333
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aget v8, v8, v10

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v0, v7

    .line 334
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v7, v2, 0x2

    or-int v2, v5, v7

    .line 317
    add-int/lit8 v6, v6, 0x1

    move v5, v9

    goto/16 :goto_39

    .line 340
    .end local v6    # "j":I
    .end local v9    # "idx":I
    .restart local v5    # "idx":I
    :cond_c1
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_c2
    if-ge v6, v7, :cond_149

    .line 344
    shl-int/lit8 v8, v0, 0x5

    ushr-int/lit8 v9, v0, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v10, v5, 0x1

    .end local v5    # "idx":I
    .restart local v10    # "idx":I
    aget v5, v9, v5

    add-int/2addr v8, v5

    const v5, 0x6ed9eba1

    add-int/2addr v8, v5

    add-int/2addr v4, v8

    .line 345
    shl-int/lit8 v8, v1, 0x1e

    ushr-int/lit8 v9, v1, 0x2

    or-int v1, v8, v9

    .line 347
    shl-int/lit8 v8, v4, 0x5

    ushr-int/lit8 v9, v4, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "idx":I
    .local v11, "idx":I
    aget v9, v9, v10

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v3, v8

    .line 348
    shl-int/lit8 v8, v0, 0x1e

    ushr-int/lit8 v9, v0, 0x2

    or-int v0, v8, v9

    .line 350
    shl-int/lit8 v8, v3, 0x5

    ushr-int/lit8 v9, v3, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v4, v0, v1}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "idx":I
    .restart local v10    # "idx":I
    aget v9, v9, v11

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v2, v8

    .line 351
    shl-int/lit8 v8, v4, 0x1e

    ushr-int/lit8 v9, v4, 0x2

    or-int v4, v8, v9

    .line 353
    shl-int/lit8 v8, v2, 0x5

    ushr-int/lit8 v9, v2, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "idx":I
    .restart local v11    # "idx":I
    aget v9, v9, v10

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v1, v8

    .line 354
    shl-int/lit8 v8, v3, 0x1e

    ushr-int/lit8 v9, v3, 0x2

    or-int v3, v8, v9

    .line 356
    shl-int/lit8 v8, v1, 0x5

    ushr-int/lit8 v9, v1, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "idx":I
    .restart local v10    # "idx":I
    aget v9, v9, v11

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v0, v8

    .line 357
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v5, v8

    .line 340
    add-int/lit8 v6, v6, 0x1

    move v5, v10

    goto/16 :goto_c2

    .line 363
    .end local v6    # "j":I
    .end local v10    # "idx":I
    .restart local v5    # "idx":I
    :cond_149
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_14a
    if-ge v6, v7, :cond_1d1

    .line 367
    shl-int/lit8 v8, v0, 0x5

    ushr-int/lit8 v9, v0, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v10, v5, 0x1

    .end local v5    # "idx":I
    .restart local v10    # "idx":I
    aget v5, v9, v5

    add-int/2addr v8, v5

    const v5, -0x70e44324

    add-int/2addr v8, v5

    add-int/2addr v4, v8

    .line 368
    shl-int/lit8 v8, v1, 0x1e

    ushr-int/lit8 v9, v1, 0x2

    or-int v1, v8, v9

    .line 370
    shl-int/lit8 v8, v4, 0x5

    ushr-int/lit8 v9, v4, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "idx":I
    .restart local v11    # "idx":I
    aget v9, v9, v10

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v3, v8

    .line 371
    shl-int/lit8 v8, v0, 0x1e

    ushr-int/lit8 v9, v0, 0x2

    or-int v0, v8, v9

    .line 373
    shl-int/lit8 v8, v3, 0x5

    ushr-int/lit8 v9, v3, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v4, v0, v1}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "idx":I
    .restart local v10    # "idx":I
    aget v9, v9, v11

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v2, v8

    .line 374
    shl-int/lit8 v8, v4, 0x1e

    ushr-int/lit8 v9, v4, 0x2

    or-int v4, v8, v9

    .line 376
    shl-int/lit8 v8, v2, 0x5

    ushr-int/lit8 v9, v2, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "idx":I
    .restart local v11    # "idx":I
    aget v9, v9, v10

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v1, v8

    .line 377
    shl-int/lit8 v8, v3, 0x1e

    ushr-int/lit8 v9, v3, 0x2

    or-int v3, v8, v9

    .line 379
    shl-int/lit8 v8, v1, 0x5

    ushr-int/lit8 v9, v1, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "idx":I
    .restart local v10    # "idx":I
    aget v9, v9, v11

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v0, v8

    .line 380
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v5, v8

    .line 363
    add-int/lit8 v6, v6, 0x1

    move v5, v10

    goto/16 :goto_14a

    .line 386
    .end local v6    # "j":I
    .end local v10    # "idx":I
    .restart local v5    # "idx":I
    :cond_1d1
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_1d2
    const/4 v7, 0x3

    if-gt v6, v7, :cond_25a

    .line 390
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "idx":I
    .restart local v9    # "idx":I
    aget v5, v8, v5

    add-int/2addr v7, v5

    const v5, -0x359d3e2a    # -3715189.5f

    add-int/2addr v7, v5

    add-int/2addr v4, v7

    .line 391
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 393
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v3, v7

    .line 394
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 396
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v4, v0, v1}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aget v8, v8, v10

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v2, v7

    .line 397
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 399
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v1, v7

    .line 400
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 402
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aget v8, v8, v10

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v0, v7

    .line 403
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v7, v2, 0x2

    or-int v2, v5, v7

    .line 386
    add-int/lit8 v6, v6, 0x1

    move v5, v9

    goto/16 :goto_1d2

    .line 407
    .end local v6    # "j":I
    .end local v9    # "idx":I
    .restart local v5    # "idx":I
    :cond_25a
    iget v6, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    .line 408
    iget v6, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    .line 409
    iget v6, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    .line 410
    iget v6, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    .line 411
    iget v6, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    .line 416
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    .line 417
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_277
    const/16 v8, 0x10

    if-ge v7, v8, :cond_282

    .line 419
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    aput v6, v8, v7

    .line 417
    add-int/lit8 v7, v7, 0x1

    goto :goto_277

    .line 421
    .end local v7    # "i":I
    :cond_282
    return-void
.end method

.method protected blacklist processLength(J)V
    .registers 7
    .param p1, "bitLength"    # J

    .line 214
    iget v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->processBlock()V

    .line 219
    :cond_9
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 220
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    const-wide/16 v1, -0x1

    and-long/2addr v1, p1

    long-to-int v1, v1

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 221
    return-void
.end method

.method protected blacklist processWord([BI)V
    .registers 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .line 199
    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x18

    .line 200
    .local v0, "n":I
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 201
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 202
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 203
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    aput v0, v1, v3

    .line 205
    iget v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    if-ne v1, v2, :cond_2f

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->processBlock()V

    .line 209
    :cond_2f
    return-void
.end method

.method public blacklist reset()V
    .registers 4

    .line 245
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->reset()V

    .line 247
    const v0, 0x67452301

    iput v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    .line 248
    const v0, -0x10325477

    iput v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    .line 249
    const v0, -0x67452302

    iput v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    .line 250
    const v0, 0x10325476

    iput v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    .line 251
    const v0, -0x3c2d1e10

    iput v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    .line 254
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    array-length v2, v2

    if-eq v1, v2, :cond_2c

    .line 256
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    aput v0, v2, v1

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 258
    .end local v1    # "i":I
    :cond_2c
    return-void
.end method
