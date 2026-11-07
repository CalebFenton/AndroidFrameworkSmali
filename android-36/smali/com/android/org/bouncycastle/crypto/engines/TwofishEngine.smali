.class public final Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;
.super Ljava/lang/Object;
.source "TwofishEngine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final blacklist P:[[B


# instance fields
.field private blacklist encrypting:Z

.field private blacklist gMDS0:[I

.field private blacklist gMDS1:[I

.field private blacklist gMDS2:[I

.field private blacklist gMDS3:[I

.field private blacklist gSBox:[I

.field private blacklist gSubKeys:[I

.field private blacklist k64Cnt:I

.field private blacklist workingKey:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const/16 v0, 0x100

    .line 25
    new-array v0, v0, [B

    fill-array-data v0, :array_16

    const/16 v1, 0x100

    new-array v1, v1, [B

    fill-array-data v1, :array_9a

    filled-new-array {v0, v1}, [[B

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    return-void

    nop

    :array_16
    .array-data 1
        -0x57t
        0x67t
        -0x4dt
        -0x18t
        0x4t
        -0x3t
        -0x5dt
        0x76t
        -0x66t
        -0x6et
        -0x80t
        0x78t
        -0x1ct
        -0x23t
        -0x2ft
        0x38t
        0xdt
        -0x3at
        0x35t
        -0x68t
        0x18t
        -0x9t
        -0x14t
        0x6ct
        0x43t
        0x75t
        0x37t
        0x26t
        -0x6t
        0x13t
        -0x6ct
        0x48t
        -0xet
        -0x30t
        -0x75t
        0x30t
        -0x7ct
        0x54t
        -0x21t
        0x23t
        0x19t
        0x5bt
        0x3dt
        0x59t
        -0xdt
        -0x52t
        -0x5et
        -0x7et
        0x63t
        0x1t
        -0x7dt
        0x2et
        -0x27t
        0x51t
        -0x65t
        0x7ct
        -0x5at
        -0x15t
        -0x5bt
        -0x42t
        0x16t
        0xct
        -0x1dt
        0x61t
        -0x40t
        -0x74t
        0x3at
        -0xbt
        0x73t
        0x2ct
        0x25t
        0xbt
        -0x45t
        0x4et
        -0x77t
        0x6bt
        0x53t
        0x6at
        -0x4ct
        -0xft
        -0x1ft
        -0x1at
        -0x43t
        0x45t
        -0x1et
        -0xct
        -0x4at
        0x66t
        -0x34t
        -0x6bt
        0x3t
        0x56t
        -0x2ct
        0x1ct
        0x1et
        -0x29t
        -0x5t
        -0x3dt
        -0x72t
        -0x4bt
        -0x17t
        -0x31t
        -0x41t
        -0x46t
        -0x16t
        0x77t
        0x39t
        -0x51t
        0x33t
        -0x37t
        0x62t
        0x71t
        -0x7ft
        0x79t
        0x9t
        -0x53t
        0x24t
        -0x33t
        -0x7t
        -0x28t
        -0x1bt
        -0x3bt
        -0x47t
        0x4dt
        0x44t
        0x8t
        -0x7at
        -0x19t
        -0x5ft
        0x1dt
        -0x56t
        -0x13t
        0x6t
        0x70t
        -0x4et
        -0x2et
        0x41t
        0x7bt
        -0x60t
        0x11t
        0x31t
        -0x3et
        0x27t
        -0x70t
        0x20t
        -0xat
        0x60t
        -0x1t
        -0x6at
        0x5ct
        -0x4ft
        -0x55t
        -0x62t
        -0x64t
        0x52t
        0x1bt
        0x5ft
        -0x6dt
        0xat
        -0x11t
        -0x6ft
        -0x7bt
        0x49t
        -0x12t
        0x2dt
        0x4ft
        -0x71t
        0x3bt
        0x47t
        -0x79t
        0x6dt
        0x46t
        -0x2at
        0x3et
        0x69t
        0x64t
        0x2at
        -0x32t
        -0x35t
        0x2ft
        -0x4t
        -0x69t
        0x5t
        0x7at
        -0x54t
        0x7ft
        -0x2bt
        0x1at
        0x4bt
        0xet
        -0x59t
        0x5at
        0x28t
        0x14t
        0x3ft
        0x29t
        -0x78t
        0x3ct
        0x4ct
        0x2t
        -0x48t
        -0x26t
        -0x50t
        0x17t
        0x55t
        0x1ft
        -0x76t
        0x7dt
        0x57t
        -0x39t
        -0x73t
        0x74t
        -0x49t
        -0x3ct
        -0x61t
        0x72t
        0x7et
        0x15t
        0x22t
        0x12t
        0x58t
        0x7t
        -0x67t
        0x34t
        0x6et
        0x50t
        -0x22t
        0x68t
        0x65t
        -0x44t
        -0x25t
        -0x8t
        -0x38t
        -0x58t
        0x2bt
        0x40t
        -0x24t
        -0x2t
        0x32t
        -0x5ct
        -0x36t
        0x10t
        0x21t
        -0x10t
        -0x2dt
        0x5dt
        0xft
        0x0t
        0x6ft
        -0x63t
        0x36t
        0x42t
        0x4at
        0x5et
        -0x3ft
        -0x20t
    .end array-data

    :array_9a
    .array-data 1
        0x75t
        -0xdt
        -0x3at
        -0xct
        -0x25t
        0x7bt
        -0x5t
        -0x38t
        0x4at
        -0x2dt
        -0x1at
        0x6bt
        0x45t
        0x7dt
        -0x18t
        0x4bt
        -0x2at
        0x32t
        -0x28t
        -0x3t
        0x37t
        0x71t
        -0xft
        -0x1ft
        0x30t
        0xft
        -0x8t
        0x1bt
        -0x79t
        -0x6t
        0x6t
        0x3ft
        0x5et
        -0x46t
        -0x52t
        0x5bt
        -0x76t
        0x0t
        -0x44t
        -0x63t
        0x6dt
        -0x3ft
        -0x4ft
        0xet
        -0x80t
        0x5dt
        -0x2et
        -0x2bt
        -0x60t
        -0x7ct
        0x7t
        0x14t
        -0x4bt
        -0x70t
        0x2ct
        -0x5dt
        -0x4et
        0x73t
        0x4ct
        0x54t
        -0x6et
        0x74t
        0x36t
        0x51t
        0x38t
        -0x50t
        -0x43t
        0x5at
        -0x4t
        0x60t
        0x62t
        -0x6at
        0x6ct
        0x42t
        -0x9t
        0x10t
        0x7ct
        0x28t
        0x27t
        -0x74t
        0x13t
        -0x6bt
        -0x64t
        -0x39t
        0x24t
        0x46t
        0x3bt
        0x70t
        -0x36t
        -0x1dt
        -0x7bt
        -0x35t
        0x11t
        -0x30t
        -0x6dt
        -0x48t
        -0x5at
        -0x7dt
        0x20t
        -0x1t
        -0x61t
        0x77t
        -0x3dt
        -0x34t
        0x3t
        0x6ft
        0x8t
        -0x41t
        0x40t
        -0x19t
        0x2bt
        -0x1et
        0x79t
        0xct
        -0x56t
        -0x7et
        0x41t
        0x3at
        -0x16t
        -0x47t
        -0x1ct
        -0x66t
        -0x5ct
        -0x69t
        0x7et
        -0x26t
        0x7at
        0x17t
        0x66t
        -0x6ct
        -0x5ft
        0x1dt
        0x3dt
        -0x10t
        -0x22t
        -0x4dt
        0xbt
        0x72t
        -0x59t
        0x1ct
        -0x11t
        -0x2ft
        0x53t
        0x3et
        -0x71t
        0x33t
        0x26t
        0x5ft
        -0x14t
        0x76t
        0x2at
        0x49t
        -0x7ft
        -0x78t
        -0x12t
        0x21t
        -0x3ct
        0x1at
        -0x15t
        -0x27t
        -0x3bt
        0x39t
        -0x67t
        -0x33t
        -0x53t
        0x31t
        -0x75t
        0x1t
        0x18t
        0x23t
        -0x23t
        0x1ft
        0x4et
        0x2dt
        -0x7t
        0x48t
        0x4ft
        -0xet
        0x65t
        -0x72t
        0x78t
        0x5ct
        0x58t
        0x19t
        -0x73t
        -0x1bt
        -0x68t
        0x57t
        0x67t
        0x7ft
        0x5t
        0x64t
        -0x51t
        0x63t
        -0x4at
        -0x2t
        -0xbt
        -0x49t
        0x3ct
        -0x5bt
        -0x32t
        -0x17t
        0x68t
        0x44t
        -0x20t
        0x4dt
        0x43t
        0x69t
        0x29t
        0x2et
        -0x54t
        0x15t
        0x59t
        -0x58t
        0xat
        -0x62t
        0x6et
        0x47t
        -0x21t
        0x34t
        0x35t
        0x6at
        -0x31t
        -0x24t
        0x22t
        -0x37t
        -0x40t
        -0x65t
        -0x77t
        -0x2ct
        -0x13t
        -0x55t
        0x12t
        -0x5et
        0xdt
        0x52t
        -0x45t
        0x2t
        0x2ft
        -0x57t
        -0x29t
        0x61t
        0x1et
        -0x4ct
        0x50t
        0x4t
        -0xat
        -0x3et
        0x16t
        0x25t
        -0x7at
        0x56t
        0x55t
        0x9t
        -0x42t
        -0x6ft
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 12

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    const/16 v1, 0x100

    .line 215
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    .line 216
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    .line 217
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    .line 218
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    .line 227
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    const/4 v2, 0x0

    .line 229
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    .line 233
    new-instance v2, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;I)V

    invoke-static {v2}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    move v2, v0

    :goto_2a
    if-ge v2, v1, :cond_af

    .line 243
    sget-object v3, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v4, v3, v0

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    .line 245
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 246
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x1

    .line 248
    aget-object v3, v3, v7

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    .line 249
    filled-new-array {v4, v3}, [I

    move-result-object v4

    .line 250
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    filled-new-array {v5, v8}, [I

    move-result-object v5

    .line 251
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    filled-new-array {v6, v3}, [I

    move-result-object v3

    .line 253
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    aget v8, v4, v7

    aget v9, v5, v7

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    aget v9, v3, v7

    shl-int/lit8 v10, v9, 0x10

    or-int/2addr v8, v10

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v8, v9

    aput v8, v6, v2

    .line 256
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget v8, v3, v0

    shl-int/lit8 v9, v8, 0x8

    or-int/2addr v8, v9

    aget v9, v5, v0

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    aget v9, v4, v0

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v8, v9

    aput v8, v6, v2

    .line 259
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget v8, v5, v7

    aget v9, v3, v7

    shl-int/lit8 v10, v9, 0x8

    or-int/2addr v8, v10

    aget v7, v4, v7

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v8

    shl-int/lit8 v8, v9, 0x18

    or-int/2addr v7, v8

    aput v7, v6, v2

    .line 262
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget v5, v5, v0

    aget v4, v4, v0

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v5

    aget v3, v3, v0

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v4

    shl-int/lit8 v4, v5, 0x18

    or-int/2addr v3, v4

    aput v3, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2a

    :cond_af
    return-void
.end method

.method private blacklist F32(I[I)I
    .registers 14

    .line 535
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v0

    .line 536
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v1

    .line 537
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v2

    .line 538
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result p1

    const/4 v3, 0x0

    .line 539
    aget v4, p2, v3

    const/4 v5, 0x1

    .line 540
    aget v6, p2, v5

    const/4 v7, 0x2

    .line 541
    aget v8, p2, v7

    const/4 v9, 0x3

    .line 542
    aget p2, p2, v9

    .line 545
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    and-int/2addr v10, v9

    if-eqz v10, :cond_6a

    if-eq v10, v5, :cond_28

    if-eq v10, v7, :cond_c6

    if-eq v10, v9, :cond_98

    return v3

    .line 548
    :cond_28
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v6, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v7, v6, v3

    aget-byte v0, v7, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v7

    xor-int/2addr v0, v7

    aget p2, p2, v0

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget-object v3, v6, v3

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    .line 549
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v3

    xor-int/2addr v1, v3

    aget v0, v0, v1

    xor-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget-object v1, v6, v5

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 550
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v2

    xor-int/2addr v1, v2

    aget v0, v0, v1

    xor-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget-object v1, v6, v5

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    .line 551
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result p0

    xor-int/2addr p0, p1

    aget p0, v0, p0

    :goto_68
    xor-int/2addr p0, p2

    return p0

    .line 554
    :cond_6a
    sget-object v7, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v9, v7, v5

    aget-byte v0, v9, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v9

    xor-int/2addr v0, v9

    .line 555
    aget-object v9, v7, v3

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v9

    xor-int/2addr v1, v9

    .line 556
    aget-object v9, v7, v3

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v9

    xor-int/2addr v2, v9

    .line 557
    aget-object v7, v7, v5

    aget-byte p1, v7, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result p2

    xor-int/2addr p1, p2

    .line 559
    :cond_98
    sget-object p2, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v7, p2, v5

    aget-byte v0, v7, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v8}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v7

    xor-int/2addr v0, v7

    .line 560
    aget-object v7, p2, v5

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v8}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v7

    xor-int/2addr v1, v7

    .line 561
    aget-object v7, p2, v3

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v8}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v7

    xor-int/2addr v2, v7

    .line 562
    aget-object p2, p2, v3

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, v8}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result p2

    xor-int/2addr p1, p2

    .line 564
    :cond_c6
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v7, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v8, v7, v3

    aget-byte v0, v8, v0

    and-int/lit16 v0, v0, 0xff

    .line 565
    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v9

    xor-int/2addr v0, v9

    aget-byte v0, v8, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v8

    xor-int/2addr v0, v8

    aget p2, p2, v0

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget-object v8, v7, v3

    aget-object v9, v7, v5

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    .line 566
    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v9

    xor-int/2addr v1, v9

    aget-byte v1, v8, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v8

    xor-int/2addr v1, v8

    aget v0, v0, v1

    xor-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget-object v1, v7, v5

    aget-object v3, v7, v3

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    .line 567
    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v3

    xor-int/2addr v2, v3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v2

    xor-int/2addr v1, v2

    aget v0, v0, v1

    xor-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget-object v1, v7, v5

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    .line 568
    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v2

    xor-int/2addr p1, v2

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result p0

    xor-int/2addr p0, p1

    aget p0, v0, p0

    goto/16 :goto_68
.end method

.method private blacklist Fe32_0(I)I
    .registers 4

    .line 661
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    and-int/lit16 v0, p1, 0xff

    mul-int/lit8 v0, v0, 0x2

    aget v0, p0, v0

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v1, p0, v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit16 v1, v1, 0x200

    aget v1, p0, v1

    xor-int/2addr v0, v1

    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    mul-int/lit8 p1, p1, 0x2

    add-int/lit16 p1, p1, 0x201

    aget p0, p0, p1

    xor-int/2addr p0, v0

    return p0
.end method

.method private blacklist Fe32_3(I)I
    .registers 4

    .line 669
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    mul-int/lit8 v0, v0, 0x2

    aget v0, p0, v0

    and-int/lit16 v1, p1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v1, p0, v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit16 v1, v1, 0x200

    aget v1, p0, v1

    xor-int/2addr v0, v1

    ushr-int/lit8 p1, p1, 0x10

    and-int/lit16 p1, p1, 0xff

    mul-int/lit8 p1, p1, 0x2

    add-int/lit16 p1, p1, 0x201

    aget p0, p0, p1

    xor-int/2addr p0, v0

    return p0
.end method

.method private blacklist LFSR1(I)I
    .registers 2

    .line 0
    shr-int/lit8 p0, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_9

    const/16 p1, 0xb4

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    xor-int/2addr p0, p1

    return p0
.end method

.method private blacklist LFSR2(I)I
    .registers 4

    .line 0
    shr-int/lit8 p0, p1, 0x2

    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/16 v0, 0xb4

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    xor-int/2addr p0, v0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_12

    const/16 v1, 0x5a

    :cond_12
    xor-int/2addr p0, v1

    return p0
.end method

.method private blacklist Mx_X(I)I
    .registers 2

    .line 631
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result p0

    xor-int/2addr p0, p1

    return p0
.end method

.method private blacklist Mx_Y(I)I
    .registers 3

    .line 636
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->LFSR1(I)I

    move-result v0

    xor-int/2addr v0, p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private blacklist RS_MDS_Encode(II)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_c

    .line 588
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    xor-int/2addr p1, p2

    :goto_d
    if-ge v0, v2, :cond_16

    .line 593
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_16
    return p1
.end method

.method private blacklist RS_rem(I)I
    .registers 6

    .line 0
    ushr-int/lit8 p0, p1, 0x18

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v1, v0, 0x1

    and-int/lit16 v2, p0, 0x80

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    const/16 v2, 0x14d

    goto :goto_f

    :cond_e
    move v2, v3

    :goto_f
    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v2, v0, 0x1

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_1a

    const/16 v3, 0xa6

    :cond_1a
    xor-int p0, v2, v3

    xor-int/2addr p0, v1

    shl-int/lit8 p1, p1, 0x8

    shl-int/lit8 v2, p0, 0x18

    xor-int/2addr p1, v2

    shl-int/lit8 v1, v1, 0x10

    xor-int/2addr p1, v1

    shl-int/lit8 p0, p0, 0x8

    xor-int/2addr p0, p1

    xor-int/2addr p0, v0

    return p0
.end method

.method private blacklist b0(I)I
    .registers 2

    .line 0
    and-int/lit16 p0, p1, 0xff

    return p0
.end method

.method private blacklist b1(I)I
    .registers 2

    .line 0
    ushr-int/lit8 p0, p1, 0x8

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private blacklist b2(I)I
    .registers 2

    .line 0
    ushr-int/lit8 p0, p1, 0x10

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private blacklist b3(I)I
    .registers 2

    .line 0
    ushr-int/lit8 p0, p1, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private blacklist decryptBlock([BI[BI)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 500
    invoke-static/range {p1 .. p2}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    xor-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x4

    .line 501
    invoke-static {v1, v5}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iget-object v6, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    xor-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x8

    .line 502
    invoke-static {v1, v6}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v8, 0x6

    aget v7, v7, v8

    xor-int/2addr v6, v7

    add-int/lit8 v7, p2, 0xc

    .line 503
    invoke-static {v1, v7}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v8, 0x7

    aget v7, v7, v8

    xor-int/2addr v1, v7

    const/16 v7, 0x27

    const/4 v8, 0x0

    move v9, v8

    :goto_3a
    const/16 v10, 0x10

    const/4 v11, 0x1

    if-ge v9, v10, :cond_8a

    .line 509
    invoke-direct {v0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v10

    .line 510
    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v12

    mul-int/lit8 v13, v12, 0x2

    add-int/2addr v13, v10

    .line 511
    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v15, v7, -0x1

    aget v14, v14, v7

    add-int/2addr v13, v14

    xor-int/2addr v1, v13

    .line 512
    invoke-static {v6, v11}, Lcom/android/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v6

    add-int/2addr v10, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v13, v7, -0x2

    aget v12, v12, v15

    add-int/2addr v10, v12

    xor-int/2addr v6, v10

    .line 513
    invoke-static {v1, v11}, Lcom/android/org/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v1

    .line 515
    invoke-direct {v0, v6}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v10

    .line 516
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v12

    mul-int/lit8 v14, v12, 0x2

    add-int/2addr v14, v10

    .line 517
    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v16, v7, -0x3

    aget v13, v15, v13

    add-int/2addr v14, v13

    xor-int/2addr v5, v14

    .line 518
    invoke-static {v4, v11}, Lcom/android/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v4

    add-int/2addr v10, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v7, v7, -0x4

    aget v12, v12, v16

    add-int/2addr v10, v12

    xor-int/2addr v4, v10

    .line 519
    invoke-static {v5, v11}, Lcom/android/org/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v5

    add-int/lit8 v9, v9, 0x2

    goto :goto_3a

    .line 522
    :cond_8a
    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    aget v7, v7, v8

    xor-int/2addr v6, v7

    invoke-static {v6, v2, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 523
    iget-object v6, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    aget v6, v6, v11

    xor-int/2addr v1, v6

    add-int/lit8 v6, v3, 0x4

    invoke-static {v1, v2, v6}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 524
    iget-object v1, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v6, 0x2

    aget v1, v1, v6

    xor-int/2addr v1, v4

    add-int/lit8 v4, v3, 0x8

    invoke-static {v1, v2, v4}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 525
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    xor-int/2addr v0, v5

    add-int/lit8 v1, v3, 0xc

    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    return-void
.end method

.method private blacklist encryptBlock([BI[BI)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 461
    invoke-static/range {p1 .. p2}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    xor-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x4

    .line 462
    invoke-static {v1, v5}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    xor-int/2addr v5, v7

    add-int/lit8 v7, p2, 0x8

    .line 463
    invoke-static {v1, v7}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v7

    iget-object v9, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    xor-int/2addr v7, v9

    add-int/lit8 v9, p2, 0xc

    .line 464
    invoke-static {v1, v9}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    iget-object v9, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v11, 0x3

    aget v9, v9, v11

    xor-int/2addr v1, v9

    const/16 v9, 0x8

    :goto_38
    const/16 v11, 0x10

    const/4 v12, 0x4

    if-ge v6, v11, :cond_8c

    .line 470
    invoke-direct {v0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v11

    .line 471
    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v13

    add-int v14, v11, v13

    .line 472
    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v16, v9, 0x1

    aget v15, v15, v9

    add-int/2addr v14, v15

    xor-int/2addr v7, v14

    .line 473
    invoke-static {v7, v8}, Lcom/android/org/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v7

    .line 474
    invoke-static {v1, v8}, Lcom/android/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    mul-int/2addr v13, v10

    add-int/2addr v11, v13

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v14, v9, 0x2

    aget v13, v13, v16

    add-int/2addr v11, v13

    xor-int/2addr v1, v11

    .line 476
    invoke-direct {v0, v7}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v11

    .line 477
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v13

    add-int v15, v11, v13

    move/from16 v16, v10

    .line 478
    iget-object v10, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v17, v9, 0x3

    aget v10, v10, v14

    add-int/2addr v15, v10

    xor-int/2addr v4, v15

    .line 479
    invoke-static {v4, v8}, Lcom/android/org/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v4

    .line 480
    invoke-static {v5, v8}, Lcom/android/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v5

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v11, v13

    iget-object v10, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/2addr v9, v12

    aget v10, v10, v17

    add-int/2addr v11, v10

    xor-int/2addr v5, v11

    add-int/lit8 v6, v6, 0x2

    move/from16 v10, v16

    goto :goto_38

    .line 483
    :cond_8c
    iget-object v6, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    aget v6, v6, v12

    xor-int/2addr v6, v7

    invoke-static {v6, v2, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 484
    iget-object v6, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v7, 0x5

    aget v6, v6, v7

    xor-int/2addr v1, v6

    add-int/lit8 v6, v3, 0x4

    invoke-static {v1, v2, v6}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 485
    iget-object v1, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v6, 0x6

    aget v1, v1, v6

    xor-int/2addr v1, v4

    add-int/lit8 v4, v3, 0x8

    invoke-static {v1, v2, v4}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 486
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    xor-int/2addr v0, v5

    add-int/lit8 v1, v3, 0xc

    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    return-void
.end method

.method private blacklist setKey([B)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    .line 363
    new-array v3, v2, [I

    .line 364
    new-array v4, v2, [I

    .line 366
    new-array v5, v2, [I

    const/16 v6, 0x28

    .line 367
    new-array v6, v6, [I

    iput-object v6, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v6, 0x0

    move v7, v6

    .line 373
    :goto_13
    iget v8, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    const/4 v9, 0x1

    if-ge v7, v8, :cond_36

    mul-int/lit8 v8, v7, 0x8

    .line 377
    invoke-static {v1, v8}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v10

    aput v10, v3, v7

    add-int/2addr v8, v2

    .line 378
    invoke-static {v1, v8}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    aput v8, v4, v7

    .line 380
    iget v10, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    sub-int/2addr v10, v9

    sub-int/2addr v10, v7

    aget v9, v3, v7

    invoke-direct {v0, v9, v8}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->RS_MDS_Encode(II)I

    move-result v8

    aput v8, v5, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_36
    move v1, v6

    :goto_37
    const/16 v2, 0x14

    if-ge v1, v2, :cond_64

    const v2, 0x2020202

    mul-int/2addr v2, v1

    .line 387
    invoke-direct {v0, v2, v3}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v7

    const v8, 0x1010101

    add-int/2addr v2, v8

    .line 388
    invoke-direct {v0, v2, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v2

    const/16 v8, 0x8

    .line 389
    invoke-static {v2, v8}, Lcom/android/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v2

    add-int/2addr v7, v2

    .line 391
    iget-object v8, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    mul-int/lit8 v10, v1, 0x2

    aput v7, v8, v10

    add-int/2addr v7, v2

    add-int/2addr v10, v9

    shl-int/lit8 v2, v7, 0x9

    ushr-int/lit8 v7, v7, 0x17

    or-int/2addr v2, v7

    .line 393
    aput v2, v8, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 399
    :cond_64
    aget v1, v5, v6

    .line 400
    aget v2, v5, v9

    const/4 v3, 0x2

    .line 401
    aget v4, v5, v3

    const/4 v7, 0x3

    .line 402
    aget v5, v5, v7

    const/16 v8, 0x400

    .line 404
    new-array v8, v8, [I

    iput-object v8, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move v8, v6

    :goto_75
    const/16 v10, 0x100

    if-ge v8, v10, :cond_1d0

    .line 408
    iget v10, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    and-int/2addr v10, v7

    if-eqz v10, :cond_ec

    if-eq v10, v9, :cond_92

    if-eq v10, v3, :cond_8c

    if-eq v10, v7, :cond_86

    goto/16 :goto_1cb

    :cond_86
    move v10, v8

    move v11, v10

    move v12, v11

    move v13, v12

    goto/16 :goto_11a

    :cond_8c
    move v10, v8

    move v11, v10

    move v12, v11

    move v13, v12

    goto/16 :goto_148

    .line 411
    :cond_92
    iget-object v10, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v11, v8, 0x2

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v13, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v14, v13, v6

    aget-byte v14, v14, v8

    and-int/lit16 v14, v14, 0xff

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v15

    xor-int/2addr v14, v15

    aget v12, v12, v14

    aput v12, v10, v11

    .line 412
    iget-object v10, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    add-int/lit8 v12, v11, 0x1

    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget-object v15, v13, v6

    aget-byte v15, v15, v8

    and-int/lit16 v15, v15, 0xff

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v16

    xor-int v15, v15, v16

    aget v14, v14, v15

    aput v14, v10, v12

    .line 413
    iget-object v10, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    add-int/lit16 v12, v11, 0x200

    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget-object v15, v13, v9

    aget-byte v15, v15, v8

    and-int/lit16 v15, v15, 0xff

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v16

    xor-int v15, v15, v16

    aget v14, v14, v15

    aput v14, v10, v12

    .line 414
    iget-object v10, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    add-int/lit16 v11, v11, 0x201

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget-object v13, v13, v9

    aget-byte v13, v13, v8

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v14

    xor-int/2addr v13, v14

    aget v12, v12, v13

    aput v12, v10, v11

    goto/16 :goto_1cb

    .line 417
    :cond_ec
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v11, v10, v9

    aget-byte v11, v11, v8

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v12

    xor-int/2addr v11, v12

    .line 418
    aget-object v12, v10, v6

    aget-byte v12, v12, v8

    and-int/lit16 v12, v12, 0xff

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v13

    xor-int/2addr v12, v13

    .line 419
    aget-object v13, v10, v6

    aget-byte v13, v13, v8

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v14

    xor-int/2addr v13, v14

    .line 420
    aget-object v10, v10, v9

    aget-byte v10, v10, v8

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v14

    xor-int/2addr v10, v14

    .line 423
    :goto_11a
    sget-object v14, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v15, v14, v9

    aget-byte v11, v15, v11

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v15

    xor-int/2addr v11, v15

    .line 424
    aget-object v15, v14, v9

    aget-byte v12, v15, v12

    and-int/lit16 v12, v12, 0xff

    invoke-direct {v0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v15

    xor-int/2addr v12, v15

    .line 425
    aget-object v15, v14, v6

    aget-byte v13, v15, v13

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v15

    xor-int/2addr v13, v15

    .line 426
    aget-object v14, v14, v6

    aget-byte v10, v14, v10

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v14

    xor-int/2addr v10, v14

    .line 429
    :goto_148
    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v15, v8, 0x2

    iget-object v3, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v16, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v17, v16, v6

    aget-byte v11, v17, v11

    and-int/lit16 v11, v11, 0xff

    .line 430
    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v18

    xor-int v11, v11, v18

    aget-byte v11, v17, v11

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v17

    xor-int v11, v11, v17

    aget v3, v3, v11

    aput v3, v14, v15

    .line 431
    iget-object v3, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    add-int/lit8 v11, v15, 0x1

    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget-object v17, v16, v6

    aget-object v18, v16, v9

    aget-byte v12, v18, v12

    and-int/lit16 v12, v12, 0xff

    .line 432
    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v18

    xor-int v12, v12, v18

    aget-byte v12, v17, v12

    and-int/lit16 v12, v12, 0xff

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v17

    xor-int v12, v12, v17

    aget v12, v14, v12

    aput v12, v3, v11

    .line 433
    iget-object v3, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    add-int/lit16 v11, v15, 0x200

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget-object v14, v16, v9

    aget-object v17, v16, v6

    aget-byte v13, v17, v13

    and-int/lit16 v13, v13, 0xff

    .line 434
    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v17

    xor-int v13, v13, v17

    aget-byte v13, v14, v13

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v14

    xor-int/2addr v13, v14

    aget v12, v12, v13

    aput v12, v3, v11

    .line 435
    iget-object v3, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    add-int/lit16 v15, v15, 0x201

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget-object v12, v16, v9

    aget-byte v10, v12, v10

    and-int/lit16 v10, v10, 0xff

    .line 436
    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v13

    xor-int/2addr v10, v13

    aget-byte v10, v12, v10

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v12

    xor-int/2addr v10, v12

    aget v10, v11, v10

    aput v10, v3, v15

    :goto_1cb
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x2

    goto/16 :goto_75

    :cond_1d0
    return-void
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 308
    const-string p0, "Twofish"

    return-object p0
.end method

.method public blacklist getBlockSize()I
    .registers 1

    .line 0
    const/16 p0, 0x10

    return p0
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    .line 279
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_42

    .line 281
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    .line 282
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    .line 284
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    const/16 v1, 0x80

    if-eq v0, v1, :cond_27

    const/16 v1, 0xc0

    if-eq v0, v1, :cond_27

    const/16 v1, 0x100

    if-ne v0, v1, :cond_1f

    goto :goto_27

    .line 292
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Key length not 128/192/256 bits."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 295
    :cond_27
    :goto_27
    new-instance v1, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p1

    invoke-direct {v1, v2, v0, p2, p1}, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v1}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 297
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    array-length p2, p1

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    .line 298
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    return-void

    .line 303
    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid parameter passed to Twofish init - "

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

.method public blacklist processBlock([BI[BI)I
    .registers 7

    .line 317
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-eqz v0, :cond_2c

    add-int/lit8 v0, p2, 0x10

    .line 322
    array-length v1, p1

    if-gt v0, v1, :cond_24

    add-int/lit8 v0, p4, 0x10

    .line 327
    array-length v1, p3

    if-gt v0, v1, :cond_1c

    .line 332
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    if-eqz v0, :cond_16

    .line 334
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->encryptBlock([BI[BI)V

    goto :goto_19

    .line 338
    :cond_16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->decryptBlock([BI[BI)V

    :goto_19
    const/16 p0, 0x10

    return p0

    .line 329
    :cond_1c
    new-instance p0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 324
    :cond_24
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 319
    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Twofish not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist reset()V
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-eqz v0, :cond_7

    .line 348
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    :cond_7
    return-void
.end method
