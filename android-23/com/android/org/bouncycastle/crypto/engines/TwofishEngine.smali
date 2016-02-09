.class public final Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;
.super Ljava/lang/Object;
.source "TwofishEngine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final GF256_FDBK:I = 0x169

.field private static final GF256_FDBK_2:I = 0xb4

.field private static final GF256_FDBK_4:I = 0x5a

.field private static final INPUT_WHITEN:I = 0x0

.field private static final MAX_KEY_BITS:I = 0x100

.field private static final MAX_ROUNDS:I = 0x10

.field private static final OUTPUT_WHITEN:I = 0x4

.field private static final P:[[B

.field private static final P_00:I = 0x1

.field private static final P_01:I = 0x0

.field private static final P_02:I = 0x0

.field private static final P_03:I = 0x1

.field private static final P_04:I = 0x1

.field private static final P_10:I = 0x0

.field private static final P_11:I = 0x0

.field private static final P_12:I = 0x1

.field private static final P_13:I = 0x1

.field private static final P_14:I = 0x0

.field private static final P_20:I = 0x1

.field private static final P_21:I = 0x1

.field private static final P_22:I = 0x0

.field private static final P_23:I = 0x0

.field private static final P_24:I = 0x0

.field private static final P_30:I = 0x0

.field private static final P_31:I = 0x1

.field private static final P_32:I = 0x1

.field private static final P_33:I = 0x0

.field private static final P_34:I = 0x1

.field private static final ROUNDS:I = 0x10

.field private static final ROUND_SUBKEYS:I = 0x8

.field private static final RS_GF_FDBK:I = 0x14d

.field private static final SK_BUMP:I = 0x1010101

.field private static final SK_ROTL:I = 0x9

.field private static final SK_STEP:I = 0x2020202

.field private static final TOTAL_SUBKEYS:I = 0x28


# instance fields
.field private encrypting:Z

.field private gMDS0:[I

.field private gMDS1:[I

.field private gMDS2:[I

.field private gMDS3:[I

.field private gSBox:[I

.field private gSubKeys:[I

.field private k64Cnt:I

.field private workingKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x100

    #@2
    .line 19
    const/4 v0, 0x2

    #@3
    new-array v0, v0, [[B

    #@5
    .line 20
    new-array v1, v3, [B

    #@7
    fill-array-data v1, :array_0

    #@a
    const/4 v2, 0x0

    #@b
    aput-object v1, v0, v2

    #@d
    .line 85
    new-array v1, v3, [B

    #@f
    fill-array-data v1, :array_1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, v0, v2

    #@15
    .line 19
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@17
    .line 16
    return-void

    #@18
    .line 20
    :array_0
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

    #@9c
    .line 85
    :array_1
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

.method public constructor <init>()V
    .locals 11

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/16 v10, 0x100

    #@3
    const/4 v9, 0x1

    #@4
    const/4 v8, 0x0

    #@5
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 207
    iput-boolean v8, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    #@a
    .line 209
    new-array v5, v10, [I

    #@c
    iput-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    #@e
    .line 210
    new-array v5, v10, [I

    #@10
    iput-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    #@12
    .line 211
    new-array v5, v10, [I

    #@14
    iput-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    #@16
    .line 212
    new-array v5, v10, [I

    #@18
    iput-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    #@1a
    .line 221
    iput v8, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    #@1c
    .line 223
    const/4 v5, 0x0

    #@1d
    iput-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    #@1f
    .line 228
    new-array v2, v6, [I

    #@21
    .line 229
    .local v2, "m1":[I
    new-array v3, v6, [I

    #@23
    .line 230
    .local v3, "mX":[I
    new-array v4, v6, [I

    #@25
    .line 233
    .local v4, "mY":[I
    const/4 v0, 0x0

    #@26
    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_0

    #@28
    .line 235
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@2a
    aget-object v5, v5, v8

    #@2c
    aget-byte v5, v5, v0

    #@2e
    and-int/lit16 v1, v5, 0xff

    #@30
    .line 236
    .local v1, "j":I
    aput v1, v2, v8

    #@32
    .line 237
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    #@35
    move-result v5

    #@36
    and-int/lit16 v5, v5, 0xff

    #@38
    aput v5, v3, v8

    #@3a
    .line 238
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    #@3d
    move-result v5

    #@3e
    and-int/lit16 v5, v5, 0xff

    #@40
    aput v5, v4, v8

    #@42
    .line 240
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@44
    aget-object v5, v5, v9

    #@46
    aget-byte v5, v5, v0

    #@48
    and-int/lit16 v1, v5, 0xff

    #@4a
    .line 241
    aput v1, v2, v9

    #@4c
    .line 242
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    #@4f
    move-result v5

    #@50
    and-int/lit16 v5, v5, 0xff

    #@52
    aput v5, v3, v9

    #@54
    .line 243
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    #@57
    move-result v5

    #@58
    and-int/lit16 v5, v5, 0xff

    #@5a
    aput v5, v4, v9

    #@5c
    .line 245
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    #@5e
    aget v6, v2, v9

    #@60
    aget v7, v3, v9

    #@62
    shl-int/lit8 v7, v7, 0x8

    #@64
    or-int/2addr v6, v7

    #@65
    .line 246
    aget v7, v4, v9

    #@67
    shl-int/lit8 v7, v7, 0x10

    #@69
    .line 245
    or-int/2addr v6, v7

    #@6a
    .line 246
    aget v7, v4, v9

    #@6c
    shl-int/lit8 v7, v7, 0x18

    #@6e
    .line 245
    or-int/2addr v6, v7

    #@6f
    aput v6, v5, v0

    #@71
    .line 248
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    #@73
    aget v6, v4, v8

    #@75
    aget v7, v4, v8

    #@77
    shl-int/lit8 v7, v7, 0x8

    #@79
    or-int/2addr v6, v7

    #@7a
    .line 249
    aget v7, v3, v8

    #@7c
    shl-int/lit8 v7, v7, 0x10

    #@7e
    .line 248
    or-int/2addr v6, v7

    #@7f
    .line 249
    aget v7, v2, v8

    #@81
    shl-int/lit8 v7, v7, 0x18

    #@83
    .line 248
    or-int/2addr v6, v7

    #@84
    aput v6, v5, v0

    #@86
    .line 251
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    #@88
    aget v6, v3, v9

    #@8a
    aget v7, v4, v9

    #@8c
    shl-int/lit8 v7, v7, 0x8

    #@8e
    or-int/2addr v6, v7

    #@8f
    .line 252
    aget v7, v2, v9

    #@91
    shl-int/lit8 v7, v7, 0x10

    #@93
    .line 251
    or-int/2addr v6, v7

    #@94
    .line 252
    aget v7, v4, v9

    #@96
    shl-int/lit8 v7, v7, 0x18

    #@98
    .line 251
    or-int/2addr v6, v7

    #@99
    aput v6, v5, v0

    #@9b
    .line 254
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    #@9d
    aget v6, v3, v8

    #@9f
    aget v7, v2, v8

    #@a1
    shl-int/lit8 v7, v7, 0x8

    #@a3
    or-int/2addr v6, v7

    #@a4
    .line 255
    aget v7, v4, v8

    #@a6
    shl-int/lit8 v7, v7, 0x10

    #@a8
    .line 254
    or-int/2addr v6, v7

    #@a9
    .line 255
    aget v7, v3, v8

    #@ab
    shl-int/lit8 v7, v7, 0x18

    #@ad
    .line 254
    or-int/2addr v6, v7

    #@ae
    aput v6, v5, v0

    #@b0
    .line 233
    add-int/lit8 v0, v0, 0x1

    #@b2
    goto/16 :goto_0

    #@b4
    .line 225
    .end local v1    # "j":I
    :cond_0
    return-void
.end method

.method private Bits32ToBytes(I[BI)V
    .locals 2
    .param p1, "in"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 675
    int-to-byte v0, p1

    #@1
    aput-byte v0, p2, p3

    #@3
    .line 676
    add-int/lit8 v0, p3, 0x1

    #@5
    shr-int/lit8 v1, p1, 0x8

    #@7
    int-to-byte v1, v1

    #@8
    aput-byte v1, p2, v0

    #@a
    .line 677
    add-int/lit8 v0, p3, 0x2

    #@c
    shr-int/lit8 v1, p1, 0x10

    #@e
    int-to-byte v1, v1

    #@f
    aput-byte v1, p2, v0

    #@11
    .line 678
    add-int/lit8 v0, p3, 0x3

    #@13
    shr-int/lit8 v1, p1, 0x18

    #@15
    int-to-byte v1, v1

    #@16
    aput-byte v1, p2, v0

    #@18
    .line 673
    return-void
.end method

.method private BytesTo32Bits([BI)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "p"    # I

    #@0
    .prologue
    .line 667
    aget-byte v0, p1, p2

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    .line 668
    add-int/lit8 v1, p2, 0x1

    #@6
    aget-byte v1, p1, v1

    #@8
    and-int/lit16 v1, v1, 0xff

    #@a
    shl-int/lit8 v1, v1, 0x8

    #@c
    .line 667
    or-int/2addr v0, v1

    #@d
    .line 669
    add-int/lit8 v1, p2, 0x2

    #@f
    aget-byte v1, p1, v1

    #@11
    and-int/lit16 v1, v1, 0xff

    #@13
    shl-int/lit8 v1, v1, 0x10

    #@15
    .line 667
    or-int/2addr v0, v1

    #@16
    .line 670
    add-int/lit8 v1, p2, 0x3

    #@18
    aget-byte v1, p1, v1

    #@1a
    and-int/lit16 v1, v1, 0xff

    #@1c
    shl-int/lit8 v1, v1, 0x18

    #@1e
    .line 667
    or-int/2addr v0, v1

    #@1f
    return v0
.end method

.method private F32(I[I)I
    .locals 14
    .param p1, "x"    # I
    .param p2, "k32"    # [I

    #@0
    .prologue
    .line 525
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    #@3
    move-result v0

    #@4
    .line 526
    .local v0, "b0":I
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    #@7
    move-result v1

    #@8
    .line 527
    .local v1, "b1":I
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    #@b
    move-result v2

    #@c
    .line 528
    .local v2, "b2":I
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    #@f
    move-result v3

    #@10
    .line 529
    .local v3, "b3":I
    const/4 v9, 0x0

    #@11
    aget v4, p2, v9

    #@13
    .line 530
    .local v4, "k0":I
    const/4 v9, 0x1

    #@14
    aget v5, p2, v9

    #@16
    .line 531
    .local v5, "k1":I
    const/4 v9, 0x2

    #@17
    aget v6, p2, v9

    #@19
    .line 532
    .local v6, "k2":I
    const/4 v9, 0x3

    #@1a
    aget v7, p2, v9

    #@1c
    .line 534
    .local v7, "k3":I
    const/4 v8, 0x0

    #@1d
    .line 535
    .local v8, "result":I
    iget v9, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    #@1f
    and-int/lit8 v9, v9, 0x3

    #@21
    packed-switch v9, :pswitch_data_0

    #@24
    .line 561
    :goto_0
    return v8

    #@25
    .line 538
    :pswitch_0
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    #@27
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@29
    const/4 v11, 0x0

    #@2a
    aget-object v10, v10, v11

    #@2c
    aget-byte v10, v10, v0

    #@2e
    and-int/lit16 v10, v10, 0xff

    #@30
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    #@33
    move-result v11

    #@34
    xor-int/2addr v10, v11

    #@35
    aget v9, v9, v10

    #@37
    .line 539
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    #@39
    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@3b
    const/4 v12, 0x0

    #@3c
    aget-object v11, v11, v12

    #@3e
    aget-byte v11, v11, v1

    #@40
    and-int/lit16 v11, v11, 0xff

    #@42
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    #@45
    move-result v12

    #@46
    xor-int/2addr v11, v12

    #@47
    aget v10, v10, v11

    #@49
    .line 538
    xor-int/2addr v9, v10

    #@4a
    .line 540
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    #@4c
    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@4e
    const/4 v12, 0x1

    #@4f
    aget-object v11, v11, v12

    #@51
    aget-byte v11, v11, v2

    #@53
    and-int/lit16 v11, v11, 0xff

    #@55
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    #@58
    move-result v12

    #@59
    xor-int/2addr v11, v12

    #@5a
    aget v10, v10, v11

    #@5c
    .line 538
    xor-int/2addr v9, v10

    #@5d
    .line 541
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    #@5f
    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@61
    const/4 v12, 0x1

    #@62
    aget-object v11, v11, v12

    #@64
    aget-byte v11, v11, v3

    #@66
    and-int/lit16 v11, v11, 0xff

    #@68
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    #@6b
    move-result v12

    #@6c
    xor-int/2addr v11, v12

    #@6d
    aget v10, v10, v11

    #@6f
    .line 538
    xor-int v8, v9, v10

    #@71
    .line 542
    goto :goto_0

    #@72
    .line 544
    :pswitch_1
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@74
    const/4 v10, 0x1

    #@75
    aget-object v9, v9, v10

    #@77
    aget-byte v9, v9, v0

    #@79
    and-int/lit16 v9, v9, 0xff

    #@7b
    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    #@7e
    move-result v10

    #@7f
    xor-int v0, v9, v10

    #@81
    .line 545
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@83
    const/4 v10, 0x0

    #@84
    aget-object v9, v9, v10

    #@86
    aget-byte v9, v9, v1

    #@88
    and-int/lit16 v9, v9, 0xff

    #@8a
    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    #@8d
    move-result v10

    #@8e
    xor-int v1, v9, v10

    #@90
    .line 546
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@92
    const/4 v10, 0x0

    #@93
    aget-object v9, v9, v10

    #@95
    aget-byte v9, v9, v2

    #@97
    and-int/lit16 v9, v9, 0xff

    #@99
    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    #@9c
    move-result v10

    #@9d
    xor-int v2, v9, v10

    #@9f
    .line 547
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@a1
    const/4 v10, 0x1

    #@a2
    aget-object v9, v9, v10

    #@a4
    aget-byte v9, v9, v3

    #@a6
    and-int/lit16 v9, v9, 0xff

    #@a8
    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    #@ab
    move-result v10

    #@ac
    xor-int v3, v9, v10

    #@ae
    .line 549
    :pswitch_2
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@b0
    const/4 v10, 0x1

    #@b1
    aget-object v9, v9, v10

    #@b3
    aget-byte v9, v9, v0

    #@b5
    and-int/lit16 v9, v9, 0xff

    #@b7
    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    #@ba
    move-result v10

    #@bb
    xor-int v0, v9, v10

    #@bd
    .line 550
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@bf
    const/4 v10, 0x1

    #@c0
    aget-object v9, v9, v10

    #@c2
    aget-byte v9, v9, v1

    #@c4
    and-int/lit16 v9, v9, 0xff

    #@c6
    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    #@c9
    move-result v10

    #@ca
    xor-int v1, v9, v10

    #@cc
    .line 551
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@ce
    const/4 v10, 0x0

    #@cf
    aget-object v9, v9, v10

    #@d1
    aget-byte v9, v9, v2

    #@d3
    and-int/lit16 v9, v9, 0xff

    #@d5
    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    #@d8
    move-result v10

    #@d9
    xor-int v2, v9, v10

    #@db
    .line 552
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@dd
    const/4 v10, 0x0

    #@de
    aget-object v9, v9, v10

    #@e0
    aget-byte v9, v9, v3

    #@e2
    and-int/lit16 v9, v9, 0xff

    #@e4
    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    #@e7
    move-result v10

    #@e8
    xor-int v3, v9, v10

    #@ea
    .line 555
    :pswitch_3
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    #@ec
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@ee
    const/4 v11, 0x0

    #@ef
    aget-object v10, v10, v11

    #@f1
    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@f3
    const/4 v12, 0x0

    #@f4
    aget-object v11, v11, v12

    #@f6
    aget-byte v11, v11, v0

    #@f8
    and-int/lit16 v11, v11, 0xff

    #@fa
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    #@fd
    move-result v12

    #@fe
    xor-int/2addr v11, v12

    #@ff
    aget-byte v10, v10, v11

    #@101
    and-int/lit16 v10, v10, 0xff

    #@103
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    #@106
    move-result v11

    #@107
    xor-int/2addr v10, v11

    #@108
    aget v9, v9, v10

    #@10a
    .line 556
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    #@10c
    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@10e
    const/4 v12, 0x0

    #@10f
    aget-object v11, v11, v12

    #@111
    sget-object v12, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@113
    const/4 v13, 0x1

    #@114
    aget-object v12, v12, v13

    #@116
    aget-byte v12, v12, v1

    #@118
    and-int/lit16 v12, v12, 0xff

    #@11a
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    #@11d
    move-result v13

    #@11e
    xor-int/2addr v12, v13

    #@11f
    aget-byte v11, v11, v12

    #@121
    and-int/lit16 v11, v11, 0xff

    #@123
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    #@126
    move-result v12

    #@127
    xor-int/2addr v11, v12

    #@128
    aget v10, v10, v11

    #@12a
    .line 555
    xor-int/2addr v9, v10

    #@12b
    .line 557
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    #@12d
    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@12f
    const/4 v12, 0x1

    #@130
    aget-object v11, v11, v12

    #@132
    sget-object v12, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@134
    const/4 v13, 0x0

    #@135
    aget-object v12, v12, v13

    #@137
    aget-byte v12, v12, v2

    #@139
    and-int/lit16 v12, v12, 0xff

    #@13b
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    #@13e
    move-result v13

    #@13f
    xor-int/2addr v12, v13

    #@140
    aget-byte v11, v11, v12

    #@142
    and-int/lit16 v11, v11, 0xff

    #@144
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    #@147
    move-result v12

    #@148
    xor-int/2addr v11, v12

    #@149
    aget v10, v10, v11

    #@14b
    .line 555
    xor-int/2addr v9, v10

    #@14c
    .line 558
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    #@14e
    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@150
    const/4 v12, 0x1

    #@151
    aget-object v11, v11, v12

    #@153
    sget-object v12, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@155
    const/4 v13, 0x1

    #@156
    aget-object v12, v12, v13

    #@158
    aget-byte v12, v12, v3

    #@15a
    and-int/lit16 v12, v12, 0xff

    #@15c
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    #@15f
    move-result v13

    #@160
    xor-int/2addr v12, v13

    #@161
    aget-byte v11, v11, v12

    #@163
    and-int/lit16 v11, v11, 0xff

    #@165
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    #@168
    move-result v12

    #@169
    xor-int/2addr v11, v12

    #@16a
    aget v10, v10, v11

    #@16c
    .line 555
    xor-int v8, v9, v10

    #@16e
    .line 559
    goto/16 :goto_0

    #@170
    .line 535
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private Fe32_0(I)I
    .locals 3
    .param p1, "x"    # I

    #@0
    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    #@2
    and-int/lit16 v1, p1, 0xff

    #@4
    mul-int/lit8 v1, v1, 0x2

    #@6
    add-int/lit8 v1, v1, 0x0

    #@8
    aget v0, v0, v1

    #@a
    .line 652
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    #@c
    ushr-int/lit8 v2, p1, 0x8

    #@e
    and-int/lit16 v2, v2, 0xff

    #@10
    mul-int/lit8 v2, v2, 0x2

    #@12
    add-int/lit8 v2, v2, 0x1

    #@14
    aget v1, v1, v2

    #@16
    .line 651
    xor-int/2addr v0, v1

    #@17
    .line 653
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    #@19
    ushr-int/lit8 v2, p1, 0x10

    #@1b
    and-int/lit16 v2, v2, 0xff

    #@1d
    mul-int/lit8 v2, v2, 0x2

    #@1f
    add-int/lit16 v2, v2, 0x200

    #@21
    aget v1, v1, v2

    #@23
    .line 651
    xor-int/2addr v0, v1

    #@24
    .line 654
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    #@26
    ushr-int/lit8 v2, p1, 0x18

    #@28
    and-int/lit16 v2, v2, 0xff

    #@2a
    mul-int/lit8 v2, v2, 0x2

    #@2c
    add-int/lit16 v2, v2, 0x201

    #@2e
    aget v1, v1, v2

    #@30
    .line 651
    xor-int/2addr v0, v1

    #@31
    return v0
.end method

.method private Fe32_3(I)I
    .locals 3
    .param p1, "x"    # I

    #@0
    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    #@2
    ushr-int/lit8 v1, p1, 0x18

    #@4
    and-int/lit16 v1, v1, 0xff

    #@6
    mul-int/lit8 v1, v1, 0x2

    #@8
    add-int/lit8 v1, v1, 0x0

    #@a
    aget v0, v0, v1

    #@c
    .line 660
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    #@e
    and-int/lit16 v2, p1, 0xff

    #@10
    mul-int/lit8 v2, v2, 0x2

    #@12
    add-int/lit8 v2, v2, 0x1

    #@14
    aget v1, v1, v2

    #@16
    .line 659
    xor-int/2addr v0, v1

    #@17
    .line 661
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    #@19
    ushr-int/lit8 v2, p1, 0x8

    #@1b
    and-int/lit16 v2, v2, 0xff

    #@1d
    mul-int/lit8 v2, v2, 0x2

    #@1f
    add-int/lit16 v2, v2, 0x200

    #@21
    aget v1, v1, v2

    #@23
    .line 659
    xor-int/2addr v0, v1

    #@24
    .line 662
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    #@26
    ushr-int/lit8 v2, p1, 0x10

    #@28
    and-int/lit16 v2, v2, 0xff

    #@2a
    mul-int/lit8 v2, v2, 0x2

    #@2c
    add-int/lit16 v2, v2, 0x201

    #@2e
    aget v1, v1, v2

    #@30
    .line 659
    xor-int/2addr v0, v1

    #@31
    return v0
.end method

.method private LFSR1(I)I
    .locals 3
    .param p1, "x"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 608
    shr-int/lit8 v1, p1, 0x1

    #@3
    .line 609
    and-int/lit8 v2, p1, 0x1

    #@5
    if-eqz v2, :cond_0

    #@7
    const/16 v0, 0xb4

    #@9
    .line 608
    :cond_0
    xor-int/2addr v0, v1

    #@a
    return v0
.end method

.method private LFSR2(I)I
    .locals 3
    .param p1, "x"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 614
    shr-int/lit8 v2, p1, 0x2

    #@3
    .line 615
    and-int/lit8 v1, p1, 0x2

    #@5
    if-eqz v1, :cond_1

    #@7
    const/16 v1, 0xb4

    #@9
    .line 614
    :goto_0
    xor-int/2addr v1, v2

    #@a
    .line 616
    and-int/lit8 v2, p1, 0x1

    #@c
    if-eqz v2, :cond_0

    #@e
    const/16 v0, 0x5a

    #@10
    .line 614
    :cond_0
    xor-int/2addr v0, v1

    #@11
    return v0

    #@12
    :cond_1
    move v1, v0

    #@13
    .line 615
    goto :goto_0
.end method

.method private Mx_X(I)I
    .locals 1
    .param p1, "x"    # I

    #@0
    .prologue
    .line 621
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    #@3
    move-result v0

    #@4
    xor-int/2addr v0, p1

    #@5
    return v0
.end method

.method private Mx_Y(I)I
    .locals 2
    .param p1, "x"    # I

    #@0
    .prologue
    .line 626
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->LFSR1(I)I

    #@3
    move-result v0

    #@4
    xor-int/2addr v0, p1

    #@5
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    #@8
    move-result v1

    #@9
    xor-int/2addr v0, v1

    #@a
    return v0
.end method

.method private RS_MDS_Encode(II)I
    .locals 3
    .param p1, "k0"    # I
    .param p2, "k1"    # I

    #@0
    .prologue
    const/4 v2, 0x4

    #@1
    .line 575
    move v1, p2

    #@2
    .line 576
    .local v1, "r":I
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@5
    .line 578
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    #@8
    move-result v1

    #@9
    .line 576
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 580
    :cond_0
    xor-int/2addr v1, p1

    #@d
    .line 581
    const/4 v0, 0x0

    #@e
    :goto_1
    if-ge v0, v2, :cond_1

    #@10
    .line 583
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    #@13
    move-result v1

    #@14
    .line 581
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_1

    #@17
    .line 586
    :cond_1
    return v1
.end method

.method private RS_rem(I)I
    .locals 6
    .param p1, "x"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 598
    ushr-int/lit8 v4, p1, 0x18

    #@3
    and-int/lit16 v0, v4, 0xff

    #@5
    .line 599
    .local v0, "b":I
    shl-int/lit8 v5, v0, 0x1

    #@7
    .line 600
    and-int/lit16 v4, v0, 0x80

    #@9
    if-eqz v4, :cond_1

    #@b
    const/16 v4, 0x14d

    #@d
    .line 599
    :goto_0
    xor-int/2addr v4, v5

    #@e
    and-int/lit16 v1, v4, 0xff

    #@10
    .line 601
    .local v1, "g2":I
    ushr-int/lit8 v4, v0, 0x1

    #@12
    .line 602
    and-int/lit8 v5, v0, 0x1

    #@14
    if-eqz v5, :cond_0

    #@16
    const/16 v3, 0xa6

    #@18
    .line 601
    :cond_0
    xor-int/2addr v3, v4

    #@19
    xor-int v2, v3, v1

    #@1b
    .line 603
    .local v2, "g3":I
    shl-int/lit8 v3, p1, 0x8

    #@1d
    shl-int/lit8 v4, v2, 0x18

    #@1f
    xor-int/2addr v3, v4

    #@20
    shl-int/lit8 v4, v1, 0x10

    #@22
    xor-int/2addr v3, v4

    #@23
    shl-int/lit8 v4, v2, 0x8

    #@25
    xor-int/2addr v3, v4

    #@26
    xor-int/2addr v3, v0

    #@27
    return v3

    #@28
    .end local v1    # "g2":I
    .end local v2    # "g3":I
    :cond_1
    move v4, v3

    #@29
    .line 600
    goto :goto_0
.end method

.method private b0(I)I
    .locals 1
    .param p1, "x"    # I

    #@0
    .prologue
    .line 631
    and-int/lit16 v0, p1, 0xff

    #@2
    return v0
.end method

.method private b1(I)I
    .locals 1
    .param p1, "x"    # I

    #@0
    .prologue
    .line 636
    ushr-int/lit8 v0, p1, 0x8

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    return v0
.end method

.method private b2(I)I
    .locals 1
    .param p1, "x"    # I

    #@0
    .prologue
    .line 641
    ushr-int/lit8 v0, p1, 0x10

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    return v0
.end method

.method private b3(I)I
    .locals 1
    .param p1, "x"    # I

    #@0
    .prologue
    .line 646
    ushr-int/lit8 v0, p1, 0x18

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    return v0
.end method

.method private decryptBlock([BI[BI)V
    .locals 14
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [B
    .param p4, "dstIndex"    # I

    #@0
    .prologue
    .line 490
    invoke-direct/range {p0 .. p2}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    #@3
    move-result v11

    #@4
    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@6
    const/4 v13, 0x4

    #@7
    aget v12, v12, v13

    #@9
    xor-int v9, v11, v12

    #@b
    .line 491
    .local v9, "x2":I
    add-int/lit8 v11, p2, 0x4

    #@d
    invoke-direct {p0, p1, v11}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    #@10
    move-result v11

    #@11
    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@13
    const/4 v13, 0x5

    #@14
    aget v12, v12, v13

    #@16
    xor-int v10, v11, v12

    #@18
    .line 492
    .local v10, "x3":I
    add-int/lit8 v11, p2, 0x8

    #@1a
    invoke-direct {p0, p1, v11}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    #@1d
    move-result v11

    #@1e
    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@20
    const/4 v13, 0x6

    #@21
    aget v12, v12, v13

    #@23
    xor-int v7, v11, v12

    #@25
    .line 493
    .local v7, "x0":I
    add-int/lit8 v11, p2, 0xc

    #@27
    invoke-direct {p0, p1, v11}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    #@2a
    move-result v11

    #@2b
    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@2d
    const/4 v13, 0x7

    #@2e
    aget v12, v12, v13

    #@30
    xor-int v8, v11, v12

    #@32
    .line 495
    .local v8, "x1":I
    const/16 v2, 0x27

    #@34
    .line 497
    .local v2, "k":I
    const/4 v4, 0x0

    #@35
    .local v4, "r":I
    move v3, v2

    #@36
    .end local v2    # "k":I
    .local v3, "k":I
    :goto_0
    const/16 v11, 0x10

    #@38
    if-ge v4, v11, :cond_0

    #@3a
    .line 499
    invoke-direct {p0, v9}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    #@3d
    move-result v5

    #@3e
    .line 500
    .local v5, "t0":I
    invoke-direct {p0, v10}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    #@41
    move-result v6

    #@42
    .line 501
    .local v6, "t1":I
    mul-int/lit8 v11, v6, 0x2

    #@44
    add-int/2addr v11, v5

    #@45
    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@47
    add-int/lit8 v2, v3, -0x1

    #@49
    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget v12, v12, v3

    #@4b
    add-int/2addr v11, v12

    #@4c
    xor-int/2addr v8, v11

    #@4d
    .line 502
    shl-int/lit8 v11, v7, 0x1

    #@4f
    ushr-int/lit8 v12, v7, 0x1f

    #@51
    or-int/2addr v11, v12

    #@52
    add-int v12, v5, v6

    #@54
    iget-object v13, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@56
    add-int/lit8 v3, v2, -0x1

    #@58
    .end local v2    # "k":I
    .restart local v3    # "k":I
    aget v13, v13, v2

    #@5a
    add-int/2addr v12, v13

    #@5b
    xor-int v7, v11, v12

    #@5d
    .line 503
    ushr-int/lit8 v11, v8, 0x1

    #@5f
    shl-int/lit8 v12, v8, 0x1f

    #@61
    or-int v8, v11, v12

    #@63
    .line 505
    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    #@66
    move-result v5

    #@67
    .line 506
    invoke-direct {p0, v8}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    #@6a
    move-result v6

    #@6b
    .line 507
    mul-int/lit8 v11, v6, 0x2

    #@6d
    add-int/2addr v11, v5

    #@6e
    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@70
    add-int/lit8 v2, v3, -0x1

    #@72
    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget v12, v12, v3

    #@74
    add-int/2addr v11, v12

    #@75
    xor-int/2addr v10, v11

    #@76
    .line 508
    shl-int/lit8 v11, v9, 0x1

    #@78
    ushr-int/lit8 v12, v9, 0x1f

    #@7a
    or-int/2addr v11, v12

    #@7b
    add-int v12, v5, v6

    #@7d
    iget-object v13, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@7f
    add-int/lit8 v3, v2, -0x1

    #@81
    .end local v2    # "k":I
    .restart local v3    # "k":I
    aget v13, v13, v2

    #@83
    add-int/2addr v12, v13

    #@84
    xor-int v9, v11, v12

    #@86
    .line 509
    ushr-int/lit8 v11, v10, 0x1

    #@88
    shl-int/lit8 v12, v10, 0x1f

    #@8a
    or-int v10, v11, v12

    #@8c
    .line 497
    add-int/lit8 v4, v4, 0x2

    #@8e
    goto :goto_0

    #@8f
    .line 512
    .end local v5    # "t0":I
    .end local v6    # "t1":I
    :cond_0
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@91
    const/4 v12, 0x0

    #@92
    aget v11, v11, v12

    #@94
    xor-int/2addr v11, v7

    #@95
    move-object/from16 v0, p3

    #@97
    move/from16 v1, p4

    #@99
    invoke-direct {p0, v11, v0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    #@9c
    .line 513
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@9e
    const/4 v12, 0x1

    #@9f
    aget v11, v11, v12

    #@a1
    xor-int/2addr v11, v8

    #@a2
    add-int/lit8 v12, p4, 0x4

    #@a4
    move-object/from16 v0, p3

    #@a6
    invoke-direct {p0, v11, v0, v12}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    #@a9
    .line 514
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@ab
    const/4 v12, 0x2

    #@ac
    aget v11, v11, v12

    #@ae
    xor-int/2addr v11, v9

    #@af
    add-int/lit8 v12, p4, 0x8

    #@b1
    move-object/from16 v0, p3

    #@b3
    invoke-direct {p0, v11, v0, v12}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    #@b6
    .line 515
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@b8
    const/4 v12, 0x3

    #@b9
    aget v11, v11, v12

    #@bb
    xor-int/2addr v11, v10

    #@bc
    add-int/lit8 v12, p4, 0xc

    #@be
    move-object/from16 v0, p3

    #@c0
    invoke-direct {p0, v11, v0, v12}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    #@c3
    .line 488
    return-void
.end method

.method private encryptBlock([BI[BI)V
    .locals 14
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [B
    .param p4, "dstIndex"    # I

    #@0
    .prologue
    .line 451
    invoke-direct/range {p0 .. p2}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    #@3
    move-result v11

    #@4
    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@6
    const/4 v13, 0x0

    #@7
    aget v12, v12, v13

    #@9
    xor-int v7, v11, v12

    #@b
    .line 452
    .local v7, "x0":I
    add-int/lit8 v11, p2, 0x4

    #@d
    invoke-direct {p0, p1, v11}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    #@10
    move-result v11

    #@11
    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@13
    const/4 v13, 0x1

    #@14
    aget v12, v12, v13

    #@16
    xor-int v8, v11, v12

    #@18
    .line 453
    .local v8, "x1":I
    add-int/lit8 v11, p2, 0x8

    #@1a
    invoke-direct {p0, p1, v11}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    #@1d
    move-result v11

    #@1e
    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@20
    const/4 v13, 0x2

    #@21
    aget v12, v12, v13

    #@23
    xor-int v9, v11, v12

    #@25
    .line 454
    .local v9, "x2":I
    add-int/lit8 v11, p2, 0xc

    #@27
    invoke-direct {p0, p1, v11}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    #@2a
    move-result v11

    #@2b
    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@2d
    const/4 v13, 0x3

    #@2e
    aget v12, v12, v13

    #@30
    xor-int v10, v11, v12

    #@32
    .line 456
    .local v10, "x3":I
    const/16 v2, 0x8

    #@34
    .line 458
    .local v2, "k":I
    const/4 v4, 0x0

    #@35
    .local v4, "r":I
    move v3, v2

    #@36
    .end local v2    # "k":I
    .local v3, "k":I
    :goto_0
    const/16 v11, 0x10

    #@38
    if-ge v4, v11, :cond_0

    #@3a
    .line 460
    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    #@3d
    move-result v5

    #@3e
    .line 461
    .local v5, "t0":I
    invoke-direct {p0, v8}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    #@41
    move-result v6

    #@42
    .line 462
    .local v6, "t1":I
    add-int v11, v5, v6

    #@44
    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@46
    add-int/lit8 v2, v3, 0x1

    #@48
    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget v12, v12, v3

    #@4a
    add-int/2addr v11, v12

    #@4b
    xor-int/2addr v9, v11

    #@4c
    .line 463
    ushr-int/lit8 v11, v9, 0x1

    #@4e
    shl-int/lit8 v12, v9, 0x1f

    #@50
    or-int v9, v11, v12

    #@52
    .line 464
    shl-int/lit8 v11, v10, 0x1

    #@54
    ushr-int/lit8 v12, v10, 0x1f

    #@56
    or-int/2addr v11, v12

    #@57
    mul-int/lit8 v12, v6, 0x2

    #@59
    add-int/2addr v12, v5

    #@5a
    iget-object v13, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@5c
    add-int/lit8 v3, v2, 0x1

    #@5e
    .end local v2    # "k":I
    .restart local v3    # "k":I
    aget v13, v13, v2

    #@60
    add-int/2addr v12, v13

    #@61
    xor-int v10, v11, v12

    #@63
    .line 466
    invoke-direct {p0, v9}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    #@66
    move-result v5

    #@67
    .line 467
    invoke-direct {p0, v10}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    #@6a
    move-result v6

    #@6b
    .line 468
    add-int v11, v5, v6

    #@6d
    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@6f
    add-int/lit8 v2, v3, 0x1

    #@71
    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget v12, v12, v3

    #@73
    add-int/2addr v11, v12

    #@74
    xor-int/2addr v7, v11

    #@75
    .line 469
    ushr-int/lit8 v11, v7, 0x1

    #@77
    shl-int/lit8 v12, v7, 0x1f

    #@79
    or-int v7, v11, v12

    #@7b
    .line 470
    shl-int/lit8 v11, v8, 0x1

    #@7d
    ushr-int/lit8 v12, v8, 0x1f

    #@7f
    or-int/2addr v11, v12

    #@80
    mul-int/lit8 v12, v6, 0x2

    #@82
    add-int/2addr v12, v5

    #@83
    iget-object v13, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@85
    add-int/lit8 v3, v2, 0x1

    #@87
    .end local v2    # "k":I
    .restart local v3    # "k":I
    aget v13, v13, v2

    #@89
    add-int/2addr v12, v13

    #@8a
    xor-int v8, v11, v12

    #@8c
    .line 458
    add-int/lit8 v4, v4, 0x2

    #@8e
    goto :goto_0

    #@8f
    .line 473
    .end local v5    # "t0":I
    .end local v6    # "t1":I
    :cond_0
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@91
    const/4 v12, 0x4

    #@92
    aget v11, v11, v12

    #@94
    xor-int/2addr v11, v9

    #@95
    move-object/from16 v0, p3

    #@97
    move/from16 v1, p4

    #@99
    invoke-direct {p0, v11, v0, v1}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    #@9c
    .line 474
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@9e
    const/4 v12, 0x5

    #@9f
    aget v11, v11, v12

    #@a1
    xor-int/2addr v11, v10

    #@a2
    add-int/lit8 v12, p4, 0x4

    #@a4
    move-object/from16 v0, p3

    #@a6
    invoke-direct {p0, v11, v0, v12}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    #@a9
    .line 475
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@ab
    const/4 v12, 0x6

    #@ac
    aget v11, v11, v12

    #@ae
    xor-int/2addr v11, v7

    #@af
    add-int/lit8 v12, p4, 0x8

    #@b1
    move-object/from16 v0, p3

    #@b3
    invoke-direct {p0, v11, v0, v12}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    #@b6
    .line 476
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@b8
    const/4 v12, 0x7

    #@b9
    aget v11, v11, v12

    #@bb
    xor-int/2addr v11, v8

    #@bc
    add-int/lit8 v12, p4, 0xc

    #@be
    move-object/from16 v0, p3

    #@c0
    invoke-direct {p0, v11, v0, v12}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    #@c3
    .line 449
    return-void
.end method

.method private setKey([B)V
    .locals 25
    .param p1, "key"    # [B

    #@0
    .prologue
    .line 341
    const/16 v19, 0x4

    #@2
    move/from16 v0, v19

    #@4
    new-array v14, v0, [I

    #@6
    .line 342
    .local v14, "k32e":[I
    const/16 v19, 0x4

    #@8
    move/from16 v0, v19

    #@a
    new-array v15, v0, [I

    #@c
    .line 344
    .local v15, "k32o":[I
    const/16 v19, 0x4

    #@e
    move/from16 v0, v19

    #@10
    new-array v0, v0, [I

    #@12
    move-object/from16 v18, v0

    #@14
    .line 345
    .local v18, "sBoxKeys":[I
    const/16 v19, 0x28

    #@16
    move/from16 v0, v19

    #@18
    new-array v0, v0, [I

    #@1a
    move-object/from16 v19, v0

    #@1c
    move-object/from16 v0, v19

    #@1e
    move-object/from16 v1, p0

    #@20
    iput-object v0, v1, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@22
    .line 347
    move-object/from16 v0, p0

    #@24
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    #@26
    move/from16 v19, v0

    #@28
    const/16 v20, 0x1

    #@2a
    move/from16 v0, v19

    #@2c
    move/from16 v1, v20

    #@2e
    if-ge v0, v1, :cond_0

    #@30
    .line 349
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@32
    const-string/jumbo v20, "Key size less than 64 bits"

    #@35
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v19

    #@39
    .line 352
    :cond_0
    move-object/from16 v0, p0

    #@3b
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    #@3d
    move/from16 v19, v0

    #@3f
    const/16 v20, 0x4

    #@41
    move/from16 v0, v19

    #@43
    move/from16 v1, v20

    #@45
    if-le v0, v1, :cond_1

    #@47
    .line 354
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@49
    const-string/jumbo v20, "Key size larger than 256 bits"

    #@4c
    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v19

    #@50
    .line 363
    :cond_1
    const/4 v9, 0x0

    #@51
    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@53
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    #@55
    move/from16 v19, v0

    #@57
    move/from16 v0, v19

    #@59
    if-ge v9, v0, :cond_2

    #@5b
    .line 365
    mul-int/lit8 v16, v9, 0x8

    #@5d
    .line 367
    .local v16, "p":I
    move-object/from16 v0, p0

    #@5f
    move-object/from16 v1, p1

    #@61
    move/from16 v2, v16

    #@63
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    #@66
    move-result v19

    #@67
    aput v19, v14, v9

    #@69
    .line 368
    add-int/lit8 v19, v16, 0x4

    #@6b
    move-object/from16 v0, p0

    #@6d
    move-object/from16 v1, p1

    #@6f
    move/from16 v2, v19

    #@71
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    #@74
    move-result v19

    #@75
    aput v19, v15, v9

    #@77
    .line 370
    move-object/from16 v0, p0

    #@79
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    #@7b
    move/from16 v19, v0

    #@7d
    add-int/lit8 v19, v19, -0x1

    #@7f
    sub-int v19, v19, v9

    #@81
    aget v20, v14, v9

    #@83
    aget v21, v15, v9

    #@85
    move-object/from16 v0, p0

    #@87
    move/from16 v1, v20

    #@89
    move/from16 v2, v21

    #@8b
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->RS_MDS_Encode(II)I

    #@8e
    move-result v20

    #@8f
    aput v20, v18, v19

    #@91
    .line 363
    add-int/lit8 v9, v9, 0x1

    #@93
    goto :goto_0

    #@94
    .line 374
    .end local v16    # "p":I
    :cond_2
    const/4 v9, 0x0

    #@95
    :goto_1
    const/16 v19, 0x14

    #@97
    move/from16 v0, v19

    #@99
    if-ge v9, v0, :cond_3

    #@9b
    .line 376
    const v19, 0x2020202

    #@9e
    mul-int v17, v9, v19

    #@a0
    .line 377
    .local v17, "q":I
    move-object/from16 v0, p0

    #@a2
    move/from16 v1, v17

    #@a4
    invoke-direct {v0, v1, v14}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    #@a7
    move-result v3

    #@a8
    .line 378
    .local v3, "A":I
    const v19, 0x1010101

    #@ab
    add-int v19, v19, v17

    #@ad
    move-object/from16 v0, p0

    #@af
    move/from16 v1, v19

    #@b1
    invoke-direct {v0, v1, v15}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    #@b4
    move-result v4

    #@b5
    .line 379
    .local v4, "B":I
    shl-int/lit8 v19, v4, 0x8

    #@b7
    ushr-int/lit8 v20, v4, 0x18

    #@b9
    or-int v4, v19, v20

    #@bb
    .line 380
    add-int/2addr v3, v4

    #@bc
    .line 381
    move-object/from16 v0, p0

    #@be
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@c0
    move-object/from16 v19, v0

    #@c2
    mul-int/lit8 v20, v9, 0x2

    #@c4
    aput v3, v19, v20

    #@c6
    .line 382
    add-int/2addr v3, v4

    #@c7
    .line 383
    move-object/from16 v0, p0

    #@c9
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    #@cb
    move-object/from16 v19, v0

    #@cd
    mul-int/lit8 v20, v9, 0x2

    #@cf
    add-int/lit8 v20, v20, 0x1

    #@d1
    shl-int/lit8 v21, v3, 0x9

    #@d3
    ushr-int/lit8 v22, v3, 0x17

    #@d5
    or-int v21, v21, v22

    #@d7
    aput v21, v19, v20

    #@d9
    .line 374
    add-int/lit8 v9, v9, 0x1

    #@db
    goto :goto_1

    #@dc
    .line 389
    .end local v3    # "A":I
    .end local v4    # "B":I
    .end local v17    # "q":I
    :cond_3
    const/16 v19, 0x0

    #@de
    aget v10, v18, v19

    #@e0
    .line 390
    .local v10, "k0":I
    const/16 v19, 0x1

    #@e2
    aget v11, v18, v19

    #@e4
    .line 391
    .local v11, "k1":I
    const/16 v19, 0x2

    #@e6
    aget v12, v18, v19

    #@e8
    .line 392
    .local v12, "k2":I
    const/16 v19, 0x3

    #@ea
    aget v13, v18, v19

    #@ec
    .line 394
    .local v13, "k3":I
    const/16 v19, 0x400

    #@ee
    move/from16 v0, v19

    #@f0
    new-array v0, v0, [I

    #@f2
    move-object/from16 v19, v0

    #@f4
    move-object/from16 v0, v19

    #@f6
    move-object/from16 v1, p0

    #@f8
    iput-object v0, v1, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    #@fa
    .line 395
    const/4 v9, 0x0

    #@fb
    :goto_2
    const/16 v19, 0x100

    #@fd
    move/from16 v0, v19

    #@ff
    if-ge v9, v0, :cond_4

    #@101
    .line 397
    move v8, v9

    #@102
    .local v8, "b3":I
    move v7, v9

    #@103
    .local v7, "b2":I
    move v6, v9

    #@104
    .local v6, "b1":I
    move v5, v9

    #@105
    .line 398
    .local v5, "b0":I
    move-object/from16 v0, p0

    #@107
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    #@109
    move/from16 v19, v0

    #@10b
    and-int/lit8 v19, v19, 0x3

    #@10d
    packed-switch v19, :pswitch_data_0

    #@110
    .line 395
    :goto_3
    add-int/lit8 v9, v9, 0x1

    #@112
    goto :goto_2

    #@113
    .line 401
    :pswitch_0
    move-object/from16 v0, p0

    #@115
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    #@117
    move-object/from16 v19, v0

    #@119
    mul-int/lit8 v20, v9, 0x2

    #@11b
    move-object/from16 v0, p0

    #@11d
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    #@11f
    move-object/from16 v21, v0

    #@121
    sget-object v22, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@123
    const/16 v23, 0x0

    #@125
    aget-object v22, v22, v23

    #@127
    aget-byte v22, v22, v5

    #@129
    move/from16 v0, v22

    #@12b
    and-int/lit16 v0, v0, 0xff

    #@12d
    move/from16 v22, v0

    #@12f
    move-object/from16 v0, p0

    #@131
    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    #@134
    move-result v23

    #@135
    xor-int v22, v22, v23

    #@137
    aget v21, v21, v22

    #@139
    aput v21, v19, v20

    #@13b
    .line 402
    move-object/from16 v0, p0

    #@13d
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    #@13f
    move-object/from16 v19, v0

    #@141
    mul-int/lit8 v20, v9, 0x2

    #@143
    add-int/lit8 v20, v20, 0x1

    #@145
    move-object/from16 v0, p0

    #@147
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    #@149
    move-object/from16 v21, v0

    #@14b
    sget-object v22, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@14d
    const/16 v23, 0x0

    #@14f
    aget-object v22, v22, v23

    #@151
    aget-byte v22, v22, v6

    #@153
    move/from16 v0, v22

    #@155
    and-int/lit16 v0, v0, 0xff

    #@157
    move/from16 v22, v0

    #@159
    move-object/from16 v0, p0

    #@15b
    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    #@15e
    move-result v23

    #@15f
    xor-int v22, v22, v23

    #@161
    aget v21, v21, v22

    #@163
    aput v21, v19, v20

    #@165
    .line 403
    move-object/from16 v0, p0

    #@167
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    #@169
    move-object/from16 v19, v0

    #@16b
    mul-int/lit8 v20, v9, 0x2

    #@16d
    move/from16 v0, v20

    #@16f
    add-int/lit16 v0, v0, 0x200

    #@171
    move/from16 v20, v0

    #@173
    move-object/from16 v0, p0

    #@175
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    #@177
    move-object/from16 v21, v0

    #@179
    sget-object v22, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@17b
    const/16 v23, 0x1

    #@17d
    aget-object v22, v22, v23

    #@17f
    aget-byte v22, v22, v7

    #@181
    move/from16 v0, v22

    #@183
    and-int/lit16 v0, v0, 0xff

    #@185
    move/from16 v22, v0

    #@187
    move-object/from16 v0, p0

    #@189
    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    #@18c
    move-result v23

    #@18d
    xor-int v22, v22, v23

    #@18f
    aget v21, v21, v22

    #@191
    aput v21, v19, v20

    #@193
    .line 404
    move-object/from16 v0, p0

    #@195
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    #@197
    move-object/from16 v19, v0

    #@199
    mul-int/lit8 v20, v9, 0x2

    #@19b
    move/from16 v0, v20

    #@19d
    add-int/lit16 v0, v0, 0x201

    #@19f
    move/from16 v20, v0

    #@1a1
    move-object/from16 v0, p0

    #@1a3
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    #@1a5
    move-object/from16 v21, v0

    #@1a7
    sget-object v22, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@1a9
    const/16 v23, 0x1

    #@1ab
    aget-object v22, v22, v23

    #@1ad
    aget-byte v22, v22, v8

    #@1af
    move/from16 v0, v22

    #@1b1
    and-int/lit16 v0, v0, 0xff

    #@1b3
    move/from16 v22, v0

    #@1b5
    move-object/from16 v0, p0

    #@1b7
    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    #@1ba
    move-result v23

    #@1bb
    xor-int v22, v22, v23

    #@1bd
    aget v21, v21, v22

    #@1bf
    aput v21, v19, v20

    #@1c1
    goto/16 :goto_3

    #@1c3
    .line 407
    :pswitch_1
    sget-object v19, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@1c5
    const/16 v20, 0x1

    #@1c7
    aget-object v19, v19, v20

    #@1c9
    aget-byte v19, v19, v5

    #@1cb
    move/from16 v0, v19

    #@1cd
    and-int/lit16 v0, v0, 0xff

    #@1cf
    move/from16 v19, v0

    #@1d1
    move-object/from16 v0, p0

    #@1d3
    invoke-direct {v0, v13}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    #@1d6
    move-result v20

    #@1d7
    xor-int v5, v19, v20

    #@1d9
    .line 408
    sget-object v19, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@1db
    const/16 v20, 0x0

    #@1dd
    aget-object v19, v19, v20

    #@1df
    aget-byte v19, v19, v6

    #@1e1
    move/from16 v0, v19

    #@1e3
    and-int/lit16 v0, v0, 0xff

    #@1e5
    move/from16 v19, v0

    #@1e7
    move-object/from16 v0, p0

    #@1e9
    invoke-direct {v0, v13}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    #@1ec
    move-result v20

    #@1ed
    xor-int v6, v19, v20

    #@1ef
    .line 409
    sget-object v19, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@1f1
    const/16 v20, 0x0

    #@1f3
    aget-object v19, v19, v20

    #@1f5
    aget-byte v19, v19, v7

    #@1f7
    move/from16 v0, v19

    #@1f9
    and-int/lit16 v0, v0, 0xff

    #@1fb
    move/from16 v19, v0

    #@1fd
    move-object/from16 v0, p0

    #@1ff
    invoke-direct {v0, v13}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    #@202
    move-result v20

    #@203
    xor-int v7, v19, v20

    #@205
    .line 410
    sget-object v19, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@207
    const/16 v20, 0x1

    #@209
    aget-object v19, v19, v20

    #@20b
    aget-byte v19, v19, v8

    #@20d
    move/from16 v0, v19

    #@20f
    and-int/lit16 v0, v0, 0xff

    #@211
    move/from16 v19, v0

    #@213
    move-object/from16 v0, p0

    #@215
    invoke-direct {v0, v13}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    #@218
    move-result v20

    #@219
    xor-int v8, v19, v20

    #@21b
    .line 413
    :pswitch_2
    sget-object v19, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@21d
    const/16 v20, 0x1

    #@21f
    aget-object v19, v19, v20

    #@221
    aget-byte v19, v19, v5

    #@223
    move/from16 v0, v19

    #@225
    and-int/lit16 v0, v0, 0xff

    #@227
    move/from16 v19, v0

    #@229
    move-object/from16 v0, p0

    #@22b
    invoke-direct {v0, v12}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    #@22e
    move-result v20

    #@22f
    xor-int v5, v19, v20

    #@231
    .line 414
    sget-object v19, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@233
    const/16 v20, 0x1

    #@235
    aget-object v19, v19, v20

    #@237
    aget-byte v19, v19, v6

    #@239
    move/from16 v0, v19

    #@23b
    and-int/lit16 v0, v0, 0xff

    #@23d
    move/from16 v19, v0

    #@23f
    move-object/from16 v0, p0

    #@241
    invoke-direct {v0, v12}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    #@244
    move-result v20

    #@245
    xor-int v6, v19, v20

    #@247
    .line 415
    sget-object v19, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@249
    const/16 v20, 0x0

    #@24b
    aget-object v19, v19, v20

    #@24d
    aget-byte v19, v19, v7

    #@24f
    move/from16 v0, v19

    #@251
    and-int/lit16 v0, v0, 0xff

    #@253
    move/from16 v19, v0

    #@255
    move-object/from16 v0, p0

    #@257
    invoke-direct {v0, v12}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    #@25a
    move-result v20

    #@25b
    xor-int v7, v19, v20

    #@25d
    .line 416
    sget-object v19, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@25f
    const/16 v20, 0x0

    #@261
    aget-object v19, v19, v20

    #@263
    aget-byte v19, v19, v8

    #@265
    move/from16 v0, v19

    #@267
    and-int/lit16 v0, v0, 0xff

    #@269
    move/from16 v19, v0

    #@26b
    move-object/from16 v0, p0

    #@26d
    invoke-direct {v0, v12}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    #@270
    move-result v20

    #@271
    xor-int v8, v19, v20

    #@273
    .line 419
    :pswitch_3
    move-object/from16 v0, p0

    #@275
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    #@277
    move-object/from16 v19, v0

    #@279
    mul-int/lit8 v20, v9, 0x2

    #@27b
    move-object/from16 v0, p0

    #@27d
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    #@27f
    move-object/from16 v21, v0

    #@281
    sget-object v22, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@283
    const/16 v23, 0x0

    #@285
    aget-object v22, v22, v23

    #@287
    .line 420
    sget-object v23, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@289
    const/16 v24, 0x0

    #@28b
    aget-object v23, v23, v24

    #@28d
    aget-byte v23, v23, v5

    #@28f
    move/from16 v0, v23

    #@291
    and-int/lit16 v0, v0, 0xff

    #@293
    move/from16 v23, v0

    #@295
    move-object/from16 v0, p0

    #@297
    invoke-direct {v0, v11}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    #@29a
    move-result v24

    #@29b
    xor-int v23, v23, v24

    #@29d
    .line 419
    aget-byte v22, v22, v23

    #@29f
    move/from16 v0, v22

    #@2a1
    and-int/lit16 v0, v0, 0xff

    #@2a3
    move/from16 v22, v0

    #@2a5
    .line 420
    move-object/from16 v0, p0

    #@2a7
    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    #@2aa
    move-result v23

    #@2ab
    .line 419
    xor-int v22, v22, v23

    #@2ad
    aget v21, v21, v22

    #@2af
    aput v21, v19, v20

    #@2b1
    .line 421
    move-object/from16 v0, p0

    #@2b3
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    #@2b5
    move-object/from16 v19, v0

    #@2b7
    mul-int/lit8 v20, v9, 0x2

    #@2b9
    add-int/lit8 v20, v20, 0x1

    #@2bb
    move-object/from16 v0, p0

    #@2bd
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    #@2bf
    move-object/from16 v21, v0

    #@2c1
    sget-object v22, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@2c3
    const/16 v23, 0x0

    #@2c5
    aget-object v22, v22, v23

    #@2c7
    .line 422
    sget-object v23, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@2c9
    const/16 v24, 0x1

    #@2cb
    aget-object v23, v23, v24

    #@2cd
    aget-byte v23, v23, v6

    #@2cf
    move/from16 v0, v23

    #@2d1
    and-int/lit16 v0, v0, 0xff

    #@2d3
    move/from16 v23, v0

    #@2d5
    move-object/from16 v0, p0

    #@2d7
    invoke-direct {v0, v11}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    #@2da
    move-result v24

    #@2db
    xor-int v23, v23, v24

    #@2dd
    .line 421
    aget-byte v22, v22, v23

    #@2df
    move/from16 v0, v22

    #@2e1
    and-int/lit16 v0, v0, 0xff

    #@2e3
    move/from16 v22, v0

    #@2e5
    .line 422
    move-object/from16 v0, p0

    #@2e7
    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    #@2ea
    move-result v23

    #@2eb
    .line 421
    xor-int v22, v22, v23

    #@2ed
    aget v21, v21, v22

    #@2ef
    aput v21, v19, v20

    #@2f1
    .line 423
    move-object/from16 v0, p0

    #@2f3
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    #@2f5
    move-object/from16 v19, v0

    #@2f7
    mul-int/lit8 v20, v9, 0x2

    #@2f9
    move/from16 v0, v20

    #@2fb
    add-int/lit16 v0, v0, 0x200

    #@2fd
    move/from16 v20, v0

    #@2ff
    move-object/from16 v0, p0

    #@301
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    #@303
    move-object/from16 v21, v0

    #@305
    sget-object v22, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@307
    const/16 v23, 0x1

    #@309
    aget-object v22, v22, v23

    #@30b
    .line 424
    sget-object v23, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@30d
    const/16 v24, 0x0

    #@30f
    aget-object v23, v23, v24

    #@311
    aget-byte v23, v23, v7

    #@313
    move/from16 v0, v23

    #@315
    and-int/lit16 v0, v0, 0xff

    #@317
    move/from16 v23, v0

    #@319
    move-object/from16 v0, p0

    #@31b
    invoke-direct {v0, v11}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    #@31e
    move-result v24

    #@31f
    xor-int v23, v23, v24

    #@321
    .line 423
    aget-byte v22, v22, v23

    #@323
    move/from16 v0, v22

    #@325
    and-int/lit16 v0, v0, 0xff

    #@327
    move/from16 v22, v0

    #@329
    .line 424
    move-object/from16 v0, p0

    #@32b
    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    #@32e
    move-result v23

    #@32f
    .line 423
    xor-int v22, v22, v23

    #@331
    aget v21, v21, v22

    #@333
    aput v21, v19, v20

    #@335
    .line 425
    move-object/from16 v0, p0

    #@337
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    #@339
    move-object/from16 v19, v0

    #@33b
    mul-int/lit8 v20, v9, 0x2

    #@33d
    move/from16 v0, v20

    #@33f
    add-int/lit16 v0, v0, 0x201

    #@341
    move/from16 v20, v0

    #@343
    move-object/from16 v0, p0

    #@345
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    #@347
    move-object/from16 v21, v0

    #@349
    sget-object v22, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@34b
    const/16 v23, 0x1

    #@34d
    aget-object v22, v22, v23

    #@34f
    .line 426
    sget-object v23, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    #@351
    const/16 v24, 0x1

    #@353
    aget-object v23, v23, v24

    #@355
    aget-byte v23, v23, v8

    #@357
    move/from16 v0, v23

    #@359
    and-int/lit16 v0, v0, 0xff

    #@35b
    move/from16 v23, v0

    #@35d
    move-object/from16 v0, p0

    #@35f
    invoke-direct {v0, v11}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    #@362
    move-result v24

    #@363
    xor-int v23, v23, v24

    #@365
    .line 425
    aget-byte v22, v22, v23

    #@367
    move/from16 v0, v22

    #@369
    and-int/lit16 v0, v0, 0xff

    #@36b
    move/from16 v22, v0

    #@36d
    .line 426
    move-object/from16 v0, p0

    #@36f
    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    #@372
    move-result v23

    #@373
    .line 425
    xor-int v22, v22, v23

    #@375
    aget v21, v21, v22

    #@377
    aput v21, v19, v20

    #@379
    goto/16 :goto_3

    #@37b
    .line 339
    .end local v5    # "b0":I
    .end local v6    # "b1":I
    .end local v7    # "b2":I
    .end local v8    # "b3":I
    :cond_4
    return-void

    #@37c
    .line 398
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 286
    const-string/jumbo v0, "Twofish"

    #@3
    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 332
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    .line 271
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 273
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    #@6
    .line 274
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@8
    .end local p2    # "params":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    #@e
    .line 275
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    #@10
    array-length v0, v0

    #@11
    div-int/lit8 v0, v0, 0x8

    #@13
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    #@15
    .line 276
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    #@17
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    #@1a
    .line 278
    return-void

    #@1b
    .line 281
    .restart local p2    # "params":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "invalid parameter passed to Twofish init - "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    #@0
    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Twofish not initialised"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 300
    :cond_0
    add-int/lit8 v0, p2, 0x10

    #@f
    array-length v1, p1

    #@10
    if-le v0, v1, :cond_1

    #@12
    .line 302
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@14
    const-string/jumbo v1, "input buffer too short"

    #@17
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 305
    :cond_1
    add-int/lit8 v0, p4, 0x10

    #@1d
    array-length v1, p3

    #@1e
    if-le v0, v1, :cond_2

    #@20
    .line 307
    new-instance v0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    #@22
    const-string/jumbo v1, "output buffer too short"

    #@25
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 310
    :cond_2
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    #@2b
    if-eqz v0, :cond_3

    #@2d
    .line 312
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->encryptBlock([BI[BI)V

    #@30
    .line 319
    :goto_0
    const/16 v0, 0x10

    #@32
    return v0

    #@33
    .line 316
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->decryptBlock([BI[BI)V

    #@36
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 326
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    #@6
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    #@9
    .line 322
    :cond_0
    return-void
.end method
