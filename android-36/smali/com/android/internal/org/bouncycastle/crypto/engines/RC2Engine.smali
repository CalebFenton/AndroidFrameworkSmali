.class public Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;
.super Ljava/lang/Object;
.source "RC2Engine.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final blacklist BLOCK_SIZE:I = 0x8

.field private static blacklist piTable:[B


# instance fields
.field private blacklist encrypting:Z

.field private blacklist workingKey:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    return-void

    :array_a
    .array-data 1
        -0x27t
        0x78t
        -0x7t
        -0x3ct
        0x19t
        -0x23t
        -0x4bt
        -0x13t
        0x28t
        -0x17t
        -0x3t
        0x79t
        0x4at
        -0x60t
        -0x28t
        -0x63t
        -0x3at
        0x7et
        0x37t
        -0x7dt
        0x2bt
        0x76t
        0x53t
        -0x72t
        0x62t
        0x4ct
        0x64t
        -0x78t
        0x44t
        -0x75t
        -0x5t
        -0x5et
        0x17t
        -0x66t
        0x59t
        -0xbt
        -0x79t
        -0x4dt
        0x4ft
        0x13t
        0x61t
        0x45t
        0x6dt
        -0x73t
        0x9t
        -0x7ft
        0x7dt
        0x32t
        -0x43t
        -0x71t
        0x40t
        -0x15t
        -0x7at
        -0x49t
        0x7bt
        0xbt
        -0x10t
        -0x6bt
        0x21t
        0x22t
        0x5ct
        0x6bt
        0x4et
        -0x7et
        0x54t
        -0x2at
        0x65t
        -0x6dt
        -0x32t
        0x60t
        -0x4et
        0x1ct
        0x73t
        0x56t
        -0x40t
        0x14t
        -0x59t
        -0x74t
        -0xft
        -0x24t
        0x12t
        0x75t
        -0x36t
        0x1ft
        0x3bt
        -0x42t
        -0x1ct
        -0x2ft
        0x42t
        0x3dt
        -0x2ct
        0x30t
        -0x5dt
        0x3ct
        -0x4at
        0x26t
        0x6ft
        -0x41t
        0xet
        -0x26t
        0x46t
        0x69t
        0x7t
        0x57t
        0x27t
        -0xet
        0x1dt
        -0x65t
        -0x44t
        -0x6ct
        0x43t
        0x3t
        -0x8t
        0x11t
        -0x39t
        -0xat
        -0x70t
        -0x11t
        0x3et
        -0x19t
        0x6t
        -0x3dt
        -0x2bt
        0x2ft
        -0x38t
        0x66t
        0x1et
        -0x29t
        0x8t
        -0x18t
        -0x16t
        -0x22t
        -0x80t
        0x52t
        -0x12t
        -0x9t
        -0x7ct
        -0x56t
        0x72t
        -0x54t
        0x35t
        0x4dt
        0x6at
        0x2at
        -0x6at
        0x1at
        -0x2et
        0x71t
        0x5at
        0x15t
        0x49t
        0x74t
        0x4bt
        -0x61t
        -0x30t
        0x5et
        0x4t
        0x18t
        -0x5ct
        -0x14t
        -0x3et
        -0x20t
        0x41t
        0x6et
        0xft
        0x51t
        -0x35t
        -0x34t
        0x24t
        -0x6ft
        -0x51t
        0x50t
        -0x5ft
        -0xct
        0x70t
        0x39t
        -0x67t
        0x7ct
        0x3at
        -0x7bt
        0x23t
        -0x48t
        -0x4ct
        0x7at
        -0x4t
        0x2t
        0x36t
        0x5bt
        0x25t
        0x55t
        -0x69t
        0x31t
        0x2dt
        0x5dt
        -0x6t
        -0x68t
        -0x1dt
        -0x76t
        -0x6et
        -0x52t
        0x5t
        -0x21t
        0x29t
        0x10t
        0x67t
        0x6ct
        -0x46t
        -0x37t
        -0x2dt
        0x0t
        -0x1at
        -0x31t
        -0x1ft
        -0x62t
        -0x58t
        0x2ct
        0x63t
        0x16t
        0x1t
        0x3ft
        0x58t
        -0x1et
        -0x77t
        -0x57t
        0xdt
        0x38t
        0x34t
        0x1bt
        -0x55t
        0x33t
        -0x1t
        -0x50t
        -0x45t
        0x48t
        0xct
        0x5ft
        -0x47t
        -0x4ft
        -0x33t
        0x2et
        -0x3bt
        -0xdt
        -0x25t
        0x47t
        -0x1bt
        -0x5bt
        -0x64t
        0x77t
        0xat
        -0x5at
        0x20t
        0x68t
        -0x2t
        0x7ft
        -0x3ft
        -0x53t
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist decryptBlock([BI[BI)V
    .registers 18
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .line 271
    add-int/lit8 v0, p2, 0x7

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x6

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 272
    .local v0, "x76":I
    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 273
    .local v1, "x54":I
    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    .line 274
    .local v2, "x32":I
    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p2, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    .line 276
    .local v3, "x10":I
    const/16 v4, 0x3c

    .local v4, "i":I
    :goto_3e
    const/16 v5, 0x2c

    const/16 v6, 0xf

    const/16 v7, 0xe

    const/16 v8, 0xd

    const/16 v9, 0xb

    if-lt v4, v5, :cond_93

    .line 278
    invoke-direct {p0, v0, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    not-int v9, v1

    and-int/2addr v9, v3

    and-int v10, v2, v1

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v11, v4, 0x3

    aget v10, v10, v11

    add-int/2addr v9, v10

    sub-int v0, v5, v9

    .line 279
    invoke-direct {p0, v1, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    not-int v8, v2

    and-int/2addr v8, v0

    and-int v9, v3, v2

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v10, v4, 0x2

    aget v9, v9, v10

    add-int/2addr v8, v9

    sub-int v1, v5, v8

    .line 280
    invoke-direct {p0, v2, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    not-int v7, v3

    and-int/2addr v7, v1

    and-int v8, v0, v3

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    add-int/2addr v7, v8

    sub-int v2, v5, v7

    .line 281
    invoke-direct {p0, v3, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    not-int v6, v0

    and-int/2addr v6, v2

    and-int v7, v1, v0

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v7, v7, v4

    add-int/2addr v6, v7

    sub-int v3, v5, v6

    .line 276
    add-int/lit8 v4, v4, -0x4

    goto :goto_3e

    .line 284
    .end local v4    # "i":I
    :cond_93
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v1, 0x3f

    aget v4, v4, v5

    sub-int/2addr v0, v4

    .line 285
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v2, 0x3f

    aget v4, v4, v5

    sub-int/2addr v1, v4

    .line 286
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v3, 0x3f

    aget v4, v4, v5

    sub-int/2addr v2, v4

    .line 287
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v0, 0x3f

    aget v4, v4, v5

    sub-int/2addr v3, v4

    .line 289
    const/16 v4, 0x28

    .restart local v4    # "i":I
    :goto_b1
    const/16 v5, 0x14

    if-lt v4, v5, :cond_fe

    .line 291
    invoke-direct {p0, v0, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    not-int v10, v1

    and-int/2addr v10, v3

    and-int v11, v2, v1

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v12, v4, 0x3

    aget v11, v11, v12

    add-int/2addr v10, v11

    sub-int v0, v5, v10

    .line 292
    invoke-direct {p0, v1, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    not-int v10, v2

    and-int/2addr v10, v0

    and-int v11, v3, v2

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v12, v4, 0x2

    aget v11, v11, v12

    add-int/2addr v10, v11

    sub-int v1, v5, v10

    .line 293
    invoke-direct {p0, v2, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    not-int v10, v3

    and-int/2addr v10, v1

    and-int v11, v0, v3

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v12, v4, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    sub-int v2, v5, v10

    .line 294
    invoke-direct {p0, v3, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    not-int v10, v0

    and-int/2addr v10, v2

    and-int v11, v1, v0

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v11, v11, v4

    add-int/2addr v10, v11

    sub-int v3, v5, v10

    .line 289
    add-int/lit8 v4, v4, -0x4

    goto :goto_b1

    .line 297
    .end local v4    # "i":I
    :cond_fe
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v1, 0x3f

    aget v4, v4, v5

    sub-int/2addr v0, v4

    .line 298
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v2, 0x3f

    aget v4, v4, v5

    sub-int/2addr v1, v4

    .line 299
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v3, 0x3f

    aget v4, v4, v5

    sub-int/2addr v2, v4

    .line 300
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v0, 0x3f

    aget v4, v4, v5

    sub-int/2addr v3, v4

    .line 302
    const/16 v4, 0x10

    .restart local v4    # "i":I
    :goto_11c
    if-ltz v4, :cond_167

    .line 304
    invoke-direct {p0, v0, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    not-int v10, v1

    and-int/2addr v10, v3

    and-int v11, v2, v1

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v12, v4, 0x3

    aget v11, v11, v12

    add-int/2addr v10, v11

    sub-int v0, v5, v10

    .line 305
    invoke-direct {p0, v1, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    not-int v10, v2

    and-int/2addr v10, v0

    and-int v11, v3, v2

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v12, v4, 0x2

    aget v11, v11, v12

    add-int/2addr v10, v11

    sub-int v1, v5, v10

    .line 306
    invoke-direct {p0, v2, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    not-int v10, v3

    and-int/2addr v10, v1

    and-int v11, v0, v3

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v12, v4, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    sub-int v2, v5, v10

    .line 307
    invoke-direct {p0, v3, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    not-int v10, v0

    and-int/2addr v10, v2

    and-int v11, v1, v0

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v11, v11, v4

    add-int/2addr v10, v11

    sub-int v3, v5, v10

    .line 302
    add-int/lit8 v4, v4, -0x4

    goto :goto_11c

    .line 310
    .end local v4    # "i":I
    :cond_167
    add-int/lit8 v4, p4, 0x0

    int-to-byte v5, v3

    aput-byte v5, p3, v4

    .line 311
    add-int/lit8 v4, p4, 0x1

    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    .line 312
    add-int/lit8 v4, p4, 0x2

    int-to-byte v5, v2

    aput-byte v5, p3, v4

    .line 313
    add-int/lit8 v4, p4, 0x3

    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    .line 314
    add-int/lit8 v4, p4, 0x4

    int-to-byte v5, v1

    aput-byte v5, p3, v4

    .line 315
    add-int/lit8 v4, p4, 0x5

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    .line 316
    add-int/lit8 v4, p4, 0x6

    int-to-byte v5, v0

    aput-byte v5, p3, v4

    .line 317
    add-int/lit8 v4, p4, 0x7

    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    .line 318
    return-void
.end method

.method private blacklist encryptBlock([BI[BI)V
    .registers 17
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .line 214
    add-int/lit8 v0, p2, 0x7

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x6

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 215
    .local v0, "x76":I
    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 216
    .local v1, "x54":I
    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    .line 217
    .local v2, "x32":I
    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p2, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    .line 219
    .local v3, "x10":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3d
    const/16 v5, 0x10

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-gt v4, v5, :cond_8a

    .line 221
    not-int v5, v0

    and-int/2addr v5, v2

    add-int/2addr v5, v3

    and-int v10, v1, v0

    add-int/2addr v5, v10

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v10, v10, v4

    add-int/2addr v5, v10

    invoke-direct {p0, v5, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v3

    .line 222
    not-int v5, v3

    and-int/2addr v5, v1

    add-int/2addr v5, v2

    and-int v9, v0, v3

    add-int/2addr v5, v9

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v10, v4, 0x1

    aget v9, v9, v10

    add-int/2addr v5, v9

    invoke-direct {p0, v5, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v2

    .line 223
    not-int v5, v2

    and-int/2addr v5, v0

    add-int/2addr v5, v1

    and-int v8, v3, v2

    add-int/2addr v5, v8

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v9, v4, 0x2

    aget v8, v8, v9

    add-int/2addr v5, v8

    invoke-direct {p0, v5, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v1

    .line 224
    not-int v5, v1

    and-int/2addr v5, v3

    add-int/2addr v5, v0

    and-int v7, v2, v1

    add-int/2addr v5, v7

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, v4, 0x3

    aget v7, v7, v8

    add-int/2addr v5, v7

    invoke-direct {p0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v0

    .line 219
    add-int/lit8 v4, v4, 0x4

    goto :goto_3d

    .line 227
    .end local v4    # "i":I
    :cond_8a
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v0, 0x3f

    aget v4, v4, v5

    add-int/2addr v3, v4

    .line 228
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v3, 0x3f

    aget v4, v4, v5

    add-int/2addr v2, v4

    .line 229
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v2, 0x3f

    aget v4, v4, v5

    add-int/2addr v1, v4

    .line 230
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v1, 0x3f

    aget v4, v4, v5

    add-int/2addr v0, v4

    .line 232
    const/16 v4, 0x14

    .restart local v4    # "i":I
    :goto_a8
    const/16 v5, 0x28

    if-gt v4, v5, :cond_f1

    .line 234
    not-int v5, v0

    and-int/2addr v5, v2

    add-int/2addr v5, v3

    and-int v10, v1, v0

    add-int/2addr v5, v10

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v10, v10, v4

    add-int/2addr v5, v10

    invoke-direct {p0, v5, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v3

    .line 235
    not-int v5, v3

    and-int/2addr v5, v1

    add-int/2addr v5, v2

    and-int v10, v0, v3

    add-int/2addr v5, v10

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v11, v4, 0x1

    aget v10, v10, v11

    add-int/2addr v5, v10

    invoke-direct {p0, v5, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v2

    .line 236
    not-int v5, v2

    and-int/2addr v5, v0

    add-int/2addr v5, v1

    and-int v10, v3, v2

    add-int/2addr v5, v10

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v11, v4, 0x2

    aget v10, v10, v11

    add-int/2addr v5, v10

    invoke-direct {p0, v5, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v1

    .line 237
    not-int v5, v1

    and-int/2addr v5, v3

    add-int/2addr v5, v0

    and-int v10, v2, v1

    add-int/2addr v5, v10

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v11, v4, 0x3

    aget v10, v10, v11

    add-int/2addr v5, v10

    invoke-direct {p0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v0

    .line 232
    add-int/lit8 v4, v4, 0x4

    goto :goto_a8

    .line 240
    .end local v4    # "i":I
    :cond_f1
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v0, 0x3f

    aget v4, v4, v5

    add-int/2addr v3, v4

    .line 241
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v3, 0x3f

    aget v4, v4, v5

    add-int/2addr v2, v4

    .line 242
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v2, 0x3f

    aget v4, v4, v5

    add-int/2addr v1, v4

    .line 243
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v5, v1, 0x3f

    aget v4, v4, v5

    add-int/2addr v0, v4

    .line 245
    const/16 v4, 0x2c

    .restart local v4    # "i":I
    :goto_10f
    const/16 v5, 0x40

    if-ge v4, v5, :cond_158

    .line 247
    not-int v5, v0

    and-int/2addr v5, v2

    add-int/2addr v5, v3

    and-int v10, v1, v0

    add-int/2addr v5, v10

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v10, v10, v4

    add-int/2addr v5, v10

    invoke-direct {p0, v5, v9}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v3

    .line 248
    not-int v5, v3

    and-int/2addr v5, v1

    add-int/2addr v5, v2

    and-int v10, v0, v3

    add-int/2addr v5, v10

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v11, v4, 0x1

    aget v10, v10, v11

    add-int/2addr v5, v10

    invoke-direct {p0, v5, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v2

    .line 249
    not-int v5, v2

    and-int/2addr v5, v0

    add-int/2addr v5, v1

    and-int v10, v3, v2

    add-int/2addr v5, v10

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v11, v4, 0x2

    aget v10, v10, v11

    add-int/2addr v5, v10

    invoke-direct {p0, v5, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v1

    .line 250
    not-int v5, v1

    and-int/2addr v5, v3

    add-int/2addr v5, v0

    and-int v10, v2, v1

    add-int/2addr v5, v10

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v11, v4, 0x3

    aget v10, v10, v11

    add-int/2addr v5, v10

    invoke-direct {p0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v0

    .line 245
    add-int/lit8 v4, v4, 0x4

    goto :goto_10f

    .line 253
    .end local v4    # "i":I
    :cond_158
    add-int/lit8 v4, p4, 0x0

    int-to-byte v5, v3

    aput-byte v5, p3, v4

    .line 254
    add-int/lit8 v4, p4, 0x1

    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    .line 255
    add-int/lit8 v4, p4, 0x2

    int-to-byte v5, v2

    aput-byte v5, p3, v4

    .line 256
    add-int/lit8 v4, p4, 0x3

    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    .line 257
    add-int/lit8 v4, p4, 0x4

    int-to-byte v5, v1

    aput-byte v5, p3, v4

    .line 258
    add-int/lit8 v4, p4, 0x5

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    .line 259
    add-int/lit8 v4, p4, 0x6

    int-to-byte v5, v0

    aput-byte v5, p3, v4

    .line 260
    add-int/lit8 v4, p4, 0x7

    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    .line 261
    return-void
.end method

.method private blacklist generateWorkingKey([BI)[I
    .registers 11
    .param p1, "key"    # [B
    .param p2, "bits"    # I

    .line 66
    const/16 v0, 0x80

    new-array v1, v0, [I

    .line 68
    .local v1, "xKey":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    array-length v3, p1

    const/16 v4, 0xff

    if-eq v2, v3, :cond_12

    .line 70
    aget-byte v3, p1, v2

    and-int/2addr v3, v4

    aput v3, v1, v2

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 74
    .end local v2    # "i":I
    :cond_12
    array-length v2, p1

    .line 76
    .local v2, "len":I
    if-ge v2, v0, :cond_30

    .line 78
    const/4 v3, 0x0

    .line 80
    .local v3, "index":I
    add-int/lit8 v5, v2, -0x1

    aget v5, v1, v5

    .line 84
    .local v5, "x":I
    :goto_1a
    sget-object v6, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "index":I
    .local v7, "index":I
    aget v3, v1, v3

    add-int/2addr v3, v5

    and-int/2addr v3, v4

    aget-byte v3, v6, v3

    and-int/lit16 v5, v3, 0xff

    .line 85
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "len":I
    .local v3, "len":I
    aput v5, v1, v2

    .line 87
    move v2, v3

    if-lt v3, v0, :cond_2e

    goto :goto_30

    :cond_2e
    move v3, v7

    goto :goto_1a

    .line 91
    .end local v3    # "len":I
    .end local v5    # "x":I
    .end local v7    # "index":I
    .restart local v2    # "len":I
    :cond_30
    :goto_30
    add-int/lit8 v0, p2, 0x7

    shr-int/lit8 v0, v0, 0x3

    .line 92
    .end local v2    # "len":I
    .local v0, "len":I
    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    rsub-int v3, v0, 0x80

    aget v3, v1, v3

    neg-int v5, p2

    and-int/lit8 v5, v5, 0x7

    shr-int v5, v4, v5

    and-int/2addr v3, v5

    aget-byte v2, v2, v3

    and-int/2addr v2, v4

    .line 93
    .local v2, "x":I
    rsub-int v3, v0, 0x80

    aput v2, v1, v3

    .line 95
    rsub-int v3, v0, 0x80

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_4b
    if-ltz v3, :cond_5d

    .line 97
    sget-object v5, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    add-int v6, v3, v0

    aget v6, v1, v6

    xor-int/2addr v6, v2

    aget-byte v5, v5, v6

    and-int/lit16 v2, v5, 0xff

    .line 98
    aput v2, v1, v3

    .line 95
    add-int/lit8 v3, v3, -0x1

    goto :goto_4b

    .line 102
    .end local v3    # "i":I
    :cond_5d
    const/16 v3, 0x40

    new-array v3, v3, [I

    .line 104
    .local v3, "newKey":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_62
    array-length v5, v3

    if-eq v4, v5, :cond_77

    .line 106
    mul-int/lit8 v5, v4, 0x2

    aget v5, v1, v5

    mul-int/lit8 v6, v4, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v6, v1, v6

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    aput v5, v3, v4

    .line 104
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 109
    .end local v4    # "i":I
    :cond_77
    return-object v3
.end method

.method private blacklist rotateWordLeft(II)I
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 202
    const v0, 0xffff

    and-int/2addr p1, v0

    .line 203
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x10

    shr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 154
    const-string v0, "RC2"

    return-object v0
.end method

.method public blacklist getBlockSize()I
    .registers 2

    .line 159
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 8
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 124
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->encrypting:Z

    .line 126
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/RC2Parameters;

    if-eqz v0, :cond_1c

    .line 128
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/RC2Parameters;

    .line 130
    .local v0, "param":Lcom/android/internal/org/bouncycastle/crypto/params/RC2Parameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RC2Parameters;->getKey()[B

    move-result-object v1

    .line 131
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RC2Parameters;->getEffectiveKeyBits()I

    move-result v2

    .line 130
    invoke-direct {p0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->generateWorkingKey([BI)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    .line 132
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RC2Parameters;->getKey()[B

    move-result-object v0

    .line 133
    .local v0, "key":[B
    goto :goto_30

    .line 134
    .end local v0    # "key":[B
    :cond_1c
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_44

    .line 136
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 138
    .restart local v0    # "key":[B
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->generateWorkingKey([BI)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    .line 145
    :goto_30
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x8

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v4

    invoke-direct {v1, v2, v3, p2, v4}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 146
    return-void

    .line 142
    .end local v0    # "key":[B
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to RC2 init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final blacklist processBlock([BI[BI)I
    .registers 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .line 168
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    if-eqz v0, :cond_2c

    .line 173
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-gt v0, v1, :cond_24

    .line 178
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-gt v0, v1, :cond_1c

    .line 183
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->encrypting:Z

    if-eqz v0, :cond_16

    .line 185
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->encryptBlock([BI[BI)V

    goto :goto_19

    .line 189
    :cond_16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC2Engine;->decryptBlock([BI[BI)V

    .line 192
    :goto_19
    const/16 v0, 0x8

    return v0

    .line 180
    :cond_1c
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_24
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RC2 engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist reset()V
    .registers 1

    .line 150
    return-void
.end method
