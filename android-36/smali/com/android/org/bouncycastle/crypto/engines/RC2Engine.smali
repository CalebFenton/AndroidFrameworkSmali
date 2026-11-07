.class public Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;
.super Ljava/lang/Object;
.source "RC2Engine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BlockCipher;


# static fields
.field private static blacklist piTable:[B


# instance fields
.field private blacklist encrypting:Z

.field private blacklist workingKey:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0x100

    .line 20
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

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
    .registers 15

    add-int/lit8 v0, p2, 0x7

    .line 271
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x6

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x5

    .line 272
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    .line 273
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x1

    .line 274
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v3, p1

    const/16 p1, 0x3c

    :goto_3c
    const/16 p2, 0x2c

    const/16 v4, 0xf

    const/16 v5, 0xe

    const/16 v6, 0xd

    const/16 v7, 0xb

    if-lt p1, p2, :cond_91

    .line 278
    invoke-direct {p0, v0, v7}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result p2

    not-int v0, v1

    and-int/2addr v0, v3

    and-int v7, v2, v1

    add-int/2addr v0, v7

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, p1, 0x3

    aget v7, v7, v8

    add-int/2addr v0, v7

    sub-int v0, p2, v0

    .line 279
    invoke-direct {p0, v1, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result p2

    not-int v1, v2

    and-int/2addr v1, v0

    and-int v6, v3, v2

    add-int/2addr v1, v6

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, p1, 0x2

    aget v6, v6, v7

    add-int/2addr v1, v6

    sub-int v1, p2, v1

    .line 280
    invoke-direct {p0, v2, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result p2

    not-int v2, v3

    and-int/2addr v2, v1

    and-int v5, v0, v3

    add-int/2addr v2, v5

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v6, p1, 0x1

    aget v5, v5, v6

    add-int/2addr v2, v5

    sub-int v2, p2, v2

    .line 281
    invoke-direct {p0, v3, v4}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result p2

    not-int v3, v0

    and-int/2addr v3, v2

    and-int v4, v1, v0

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v4, v4, p1

    add-int/2addr v3, v4

    sub-int v3, p2, v3

    add-int/lit8 p1, p1, -0x4

    goto :goto_3c

    .line 284
    :cond_91
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 p2, v1, 0x3f

    aget p2, p1, p2

    sub-int/2addr v0, p2

    and-int/lit8 p2, v2, 0x3f

    .line 285
    aget p2, p1, p2

    sub-int/2addr v1, p2

    and-int/lit8 p2, v3, 0x3f

    .line 286
    aget p2, p1, p2

    sub-int/2addr v2, p2

    and-int/lit8 p2, v0, 0x3f

    .line 287
    aget p1, p1, p2

    sub-int/2addr v3, p1

    const/16 p1, 0x28

    :goto_a9
    const/16 p2, 0x14

    if-lt p1, p2, :cond_f6

    .line 291
    invoke-direct {p0, v0, v7}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result p2

    not-int v0, v1

    and-int/2addr v0, v3

    and-int v8, v2, v1

    add-int/2addr v0, v8

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v9, p1, 0x3

    aget v8, v8, v9

    add-int/2addr v0, v8

    sub-int v0, p2, v0

    .line 292
    invoke-direct {p0, v1, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result p2

    not-int v1, v2

    and-int/2addr v1, v0

    and-int v8, v3, v2

    add-int/2addr v1, v8

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v9, p1, 0x2

    aget v8, v8, v9

    add-int/2addr v1, v8

    sub-int v1, p2, v1

    .line 293
    invoke-direct {p0, v2, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result p2

    not-int v2, v3

    and-int/2addr v2, v1

    and-int v8, v0, v3

    add-int/2addr v2, v8

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v9, p1, 0x1

    aget v8, v8, v9

    add-int/2addr v2, v8

    sub-int v2, p2, v2

    .line 294
    invoke-direct {p0, v3, v4}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result p2

    not-int v3, v0

    and-int/2addr v3, v2

    and-int v8, v1, v0

    add-int/2addr v3, v8

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v8, v8, p1

    add-int/2addr v3, v8

    sub-int v3, p2, v3

    add-int/lit8 p1, p1, -0x4

    goto :goto_a9

    .line 297
    :cond_f6
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 p2, v1, 0x3f

    aget p2, p1, p2

    sub-int/2addr v0, p2

    and-int/lit8 p2, v2, 0x3f

    .line 298
    aget p2, p1, p2

    sub-int/2addr v1, p2

    and-int/lit8 p2, v3, 0x3f

    .line 299
    aget p2, p1, p2

    sub-int/2addr v2, p2

    and-int/lit8 p2, v0, 0x3f

    .line 300
    aget p1, p1, p2

    sub-int/2addr v3, p1

    const/16 p1, 0x10

    :goto_10e
    if-ltz p1, :cond_159

    .line 304
    invoke-direct {p0, v0, v7}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result p2

    not-int v0, v1

    and-int/2addr v0, v3

    and-int v8, v2, v1

    add-int/2addr v0, v8

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v9, p1, 0x3

    aget v8, v8, v9

    add-int/2addr v0, v8

    sub-int v0, p2, v0

    .line 305
    invoke-direct {p0, v1, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result p2

    not-int v1, v2

    and-int/2addr v1, v0

    and-int v8, v3, v2

    add-int/2addr v1, v8

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v9, p1, 0x2

    aget v8, v8, v9

    add-int/2addr v1, v8

    sub-int v1, p2, v1

    .line 306
    invoke-direct {p0, v2, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result p2

    not-int v2, v3

    and-int/2addr v2, v1

    and-int v8, v0, v3

    add-int/2addr v2, v8

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v9, p1, 0x1

    aget v8, v8, v9

    add-int/2addr v2, v8

    sub-int v2, p2, v2

    .line 307
    invoke-direct {p0, v3, v4}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result p2

    not-int v3, v0

    and-int/2addr v3, v2

    and-int v8, v1, v0

    add-int/2addr v3, v8

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v8, v8, p1

    add-int/2addr v3, v8

    sub-int v3, p2, v3

    add-int/lit8 p1, p1, -0x4

    goto :goto_10e

    :cond_159
    int-to-byte p0, v3

    .line 310
    aput-byte p0, p3, p4

    add-int/lit8 p0, p4, 0x1

    shr-int/lit8 p1, v3, 0x8

    int-to-byte p1, p1

    .line 311
    aput-byte p1, p3, p0

    add-int/lit8 p0, p4, 0x2

    int-to-byte p1, v2

    .line 312
    aput-byte p1, p3, p0

    add-int/lit8 p0, p4, 0x3

    shr-int/lit8 p1, v2, 0x8

    int-to-byte p1, p1

    .line 313
    aput-byte p1, p3, p0

    add-int/lit8 p0, p4, 0x4

    int-to-byte p1, v1

    .line 314
    aput-byte p1, p3, p0

    add-int/lit8 p0, p4, 0x5

    shr-int/lit8 p1, v1, 0x8

    int-to-byte p1, p1

    .line 315
    aput-byte p1, p3, p0

    add-int/lit8 p0, p4, 0x6

    int-to-byte p1, v0

    .line 316
    aput-byte p1, p3, p0

    add-int/lit8 p4, p4, 0x7

    shr-int/lit8 p0, v0, 0x8

    int-to-byte p0, p0

    .line 317
    aput-byte p0, p3, p4

    return-void
.end method

.method private blacklist encryptBlock([BI[BI)V
    .registers 14

    add-int/lit8 v0, p2, 0x7

    .line 214
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x6

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x5

    .line 215
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    .line 216
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x1

    .line 217
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v3, p1

    const/4 p1, 0x0

    :goto_3b
    const/16 p2, 0x10

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-gt p1, p2, :cond_88

    not-int p2, v0

    and-int/2addr p2, v2

    add-int/2addr v3, p2

    and-int p2, v1, v0

    add-int/2addr v3, p2

    .line 221
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget p2, p2, p1

    add-int/2addr v3, p2

    invoke-direct {p0, v3, v7}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v3

    not-int p2, v3

    and-int/2addr p2, v1

    add-int/2addr v2, p2

    and-int p2, v0, v3

    add-int/2addr v2, p2

    .line 222
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, p1, 0x1

    aget p2, p2, v7

    add-int/2addr v2, p2

    invoke-direct {p0, v2, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v2

    not-int p2, v2

    and-int/2addr p2, v0

    add-int/2addr v1, p2

    and-int p2, v3, v2

    add-int/2addr v1, p2

    .line 223
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v6, p1, 0x2

    aget p2, p2, v6

    add-int/2addr v1, p2

    invoke-direct {p0, v1, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v1

    not-int p2, v1

    and-int/2addr p2, v3

    add-int/2addr v0, p2

    and-int p2, v2, v1

    add-int/2addr v0, p2

    .line 224
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v5, p1, 0x3

    aget p2, p2, v5

    add-int/2addr v0, p2

    invoke-direct {p0, v0, v4}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    goto :goto_3b

    .line 227
    :cond_88
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 p2, v0, 0x3f

    aget p2, p1, p2

    add-int/2addr v3, p2

    and-int/lit8 p2, v3, 0x3f

    .line 228
    aget p2, p1, p2

    add-int/2addr v2, p2

    and-int/lit8 p2, v2, 0x3f

    .line 229
    aget p2, p1, p2

    add-int/2addr v1, p2

    and-int/lit8 p2, v1, 0x3f

    .line 230
    aget p1, p1, p2

    add-int/2addr v0, p1

    const/16 p1, 0x14

    :goto_a0
    const/16 p2, 0x28

    if-gt p1, p2, :cond_e9

    not-int p2, v0

    and-int/2addr p2, v2

    add-int/2addr v3, p2

    and-int p2, v1, v0

    add-int/2addr v3, p2

    .line 234
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget p2, p2, p1

    add-int/2addr v3, p2

    invoke-direct {p0, v3, v7}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v3

    not-int p2, v3

    and-int/2addr p2, v1

    add-int/2addr v2, p2

    and-int p2, v0, v3

    add-int/2addr v2, p2

    .line 235
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, p1, 0x1

    aget p2, p2, v8

    add-int/2addr v2, p2

    invoke-direct {p0, v2, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v2

    not-int p2, v2

    and-int/2addr p2, v0

    add-int/2addr v1, p2

    and-int p2, v3, v2

    add-int/2addr v1, p2

    .line 236
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, p1, 0x2

    aget p2, p2, v8

    add-int/2addr v1, p2

    invoke-direct {p0, v1, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v1

    not-int p2, v1

    and-int/2addr p2, v3

    add-int/2addr v0, p2

    and-int p2, v2, v1

    add-int/2addr v0, p2

    .line 237
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, p1, 0x3

    aget p2, p2, v8

    add-int/2addr v0, p2

    invoke-direct {p0, v0, v4}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    goto :goto_a0

    .line 240
    :cond_e9
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 p2, v0, 0x3f

    aget p2, p1, p2

    add-int/2addr v3, p2

    and-int/lit8 p2, v3, 0x3f

    .line 241
    aget p2, p1, p2

    add-int/2addr v2, p2

    and-int/lit8 p2, v2, 0x3f

    .line 242
    aget p2, p1, p2

    add-int/2addr v1, p2

    and-int/lit8 p2, v1, 0x3f

    .line 243
    aget p1, p1, p2

    add-int/2addr v0, p1

    const/16 p1, 0x2c

    :goto_101
    const/16 p2, 0x40

    if-ge p1, p2, :cond_14a

    not-int p2, v0

    and-int/2addr p2, v2

    add-int/2addr v3, p2

    and-int p2, v1, v0

    add-int/2addr v3, p2

    .line 247
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget p2, p2, p1

    add-int/2addr v3, p2

    invoke-direct {p0, v3, v7}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v3

    not-int p2, v3

    and-int/2addr p2, v1

    add-int/2addr v2, p2

    and-int p2, v0, v3

    add-int/2addr v2, p2

    .line 248
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, p1, 0x1

    aget p2, p2, v8

    add-int/2addr v2, p2

    invoke-direct {p0, v2, v6}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v2

    not-int p2, v2

    and-int/2addr p2, v0

    add-int/2addr v1, p2

    and-int p2, v3, v2

    add-int/2addr v1, p2

    .line 249
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, p1, 0x2

    aget p2, p2, v8

    add-int/2addr v1, p2

    invoke-direct {p0, v1, v5}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v1

    not-int p2, v1

    and-int/2addr p2, v3

    add-int/2addr v0, p2

    and-int p2, v2, v1

    add-int/2addr v0, p2

    .line 250
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, p1, 0x3

    aget p2, p2, v8

    add-int/2addr v0, p2

    invoke-direct {p0, v0, v4}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    goto :goto_101

    :cond_14a
    int-to-byte p0, v3

    .line 253
    aput-byte p0, p3, p4

    add-int/lit8 p0, p4, 0x1

    shr-int/lit8 p1, v3, 0x8

    int-to-byte p1, p1

    .line 254
    aput-byte p1, p3, p0

    add-int/lit8 p0, p4, 0x2

    int-to-byte p1, v2

    .line 255
    aput-byte p1, p3, p0

    add-int/lit8 p0, p4, 0x3

    shr-int/lit8 p1, v2, 0x8

    int-to-byte p1, p1

    .line 256
    aput-byte p1, p3, p0

    add-int/lit8 p0, p4, 0x4

    int-to-byte p1, v1

    .line 257
    aput-byte p1, p3, p0

    add-int/lit8 p0, p4, 0x5

    shr-int/lit8 p1, v1, 0x8

    int-to-byte p1, p1

    .line 258
    aput-byte p1, p3, p0

    add-int/lit8 p0, p4, 0x6

    int-to-byte p1, v0

    .line 259
    aput-byte p1, p3, p0

    add-int/lit8 p4, p4, 0x7

    shr-int/lit8 p0, v0, 0x8

    int-to-byte p0, p0

    .line 260
    aput-byte p0, p3, p4

    return-void
.end method

.method private blacklist generateWorkingKey([BI)[I
    .registers 10

    const/16 p0, 0x80

    .line 66
    new-array v0, p0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 68
    :goto_6
    array-length v3, p1

    const/16 v4, 0xff

    if-eq v2, v3, :cond_13

    .line 70
    aget-byte v3, p1, v2

    and-int/2addr v3, v4

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 74
    :cond_13
    array-length p1, p1

    if-ge p1, p0, :cond_30

    add-int/lit8 v2, p1, -0x1

    .line 80
    aget v2, v0, v2

    move v3, v1

    .line 84
    :goto_1b
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    add-int/lit8 v6, v3, 0x1

    aget v3, v0, v3

    add-int/2addr v2, v3

    and-int/2addr v2, v4

    aget-byte v2, v5, v2

    and-int/2addr v2, v4

    add-int/lit8 v3, p1, 0x1

    .line 85
    aput v2, v0, p1

    if-lt v3, p0, :cond_2d

    goto :goto_30

    :cond_2d
    move p1, v3

    move v3, v6

    goto :goto_1b

    :cond_30
    :goto_30
    add-int/lit8 p0, p2, 0x7

    shr-int/lit8 p0, p0, 0x3

    .line 92
    sget-object p1, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    rsub-int v2, p0, 0x80

    aget v3, v0, v2

    neg-int p2, p2

    and-int/lit8 p2, p2, 0x7

    shr-int p2, v4, p2

    and-int/2addr p2, v3

    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    .line 93
    aput p1, v0, v2

    rsub-int/lit8 p2, p0, 0x7f

    :goto_47
    if-ltz p2, :cond_58

    .line 97
    sget-object v2, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->piTable:[B

    add-int v3, p2, p0

    aget v3, v0, v3

    xor-int/2addr p1, v3

    aget-byte p1, v2, p1

    and-int/2addr p1, v4

    .line 98
    aput p1, v0, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_47

    :cond_58
    const/16 p0, 0x40

    .line 102
    new-array p1, p0, [I

    :goto_5c
    if-eq v1, p0, :cond_6e

    mul-int/lit8 p2, v1, 0x2

    .line 106
    aget v2, v0, p2

    add-int/lit8 p2, p2, 0x1

    aget p2, v0, p2

    shl-int/lit8 p2, p2, 0x8

    add-int/2addr v2, p2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    :cond_6e
    return-object p1
.end method

.method private blacklist rotateWordLeft(II)I
    .registers 3

    .line 0
    const p0, 0xffff

    and-int/2addr p0, p1

    shl-int p1, p0, p2

    rsub-int/lit8 p2, p2, 0x10

    shr-int/2addr p0, p2

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 154
    const-string p0, "RC2"

    return-object p0
.end method

.method public blacklist getBlockSize()I
    .registers 1

    .line 0
    const/16 p0, 0x8

    return p0
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 5

    .line 124
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->encrypting:Z

    .line 134
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_2a

    .line 136
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 138
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->generateWorkingKey([BI)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    .line 145
    new-instance v1, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p1

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void

    .line 142
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid parameter passed to RC2 init - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final blacklist processBlock([BI[BI)I
    .registers 7

    .line 168
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->workingKey:[I

    if-eqz v0, :cond_2c

    add-int/lit8 v0, p2, 0x8

    .line 173
    array-length v1, p1

    if-gt v0, v1, :cond_24

    add-int/lit8 v0, p4, 0x8

    .line 178
    array-length v1, p3

    if-gt v0, v1, :cond_1c

    .line 183
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->encrypting:Z

    if-eqz v0, :cond_16

    .line 185
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->encryptBlock([BI[BI)V

    goto :goto_19

    .line 189
    :cond_16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/engines/RC2Engine;->decryptBlock([BI[BI)V

    :goto_19
    const/16 p0, 0x8

    return p0

    .line 180
    :cond_1c
    new-instance p0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 175
    :cond_24
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 170
    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RC2 engine not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist reset()V
    .registers 1

    .line 0
    return-void
.end method
