.class public Lcom/android/org/bouncycastle/crypto/engines/DESEngine;
.super Ljava/lang/Object;
.source "DESEngine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BlockCipher;


# static fields
.field protected static final BLOCK_SIZE:I = 0x8

.field private static final SP1:[I

.field private static final SP2:[I

.field private static final SP3:[I

.field private static final SP4:[I

.field private static final SP5:[I

.field private static final SP6:[I

.field private static final SP7:[I

.field private static final SP8:[I

.field private static final bigbyte:[I

.field private static final bytebit:[S

.field private static final pc1:[B

.field private static final pc2:[B

.field private static final totrot:[B


# instance fields
.field private workingKey:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x40

    #@2
    .line 108
    const/16 v0, 0x8

    #@4
    new-array v0, v0, [S

    #@6
    fill-array-data v0, :array_0

    #@9
    .line 107
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->bytebit:[S

    #@b
    .line 113
    const/16 v0, 0x18

    #@d
    new-array v0, v0, [I

    #@f
    fill-array-data v0, :array_1

    #@12
    .line 112
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->bigbyte:[I

    #@14
    .line 127
    const/16 v0, 0x38

    #@16
    new-array v0, v0, [B

    #@18
    fill-array-data v0, :array_2

    #@1b
    .line 126
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->pc1:[B

    #@1d
    .line 135
    const/16 v0, 0x10

    #@1f
    new-array v0, v0, [B

    #@21
    fill-array-data v0, :array_3

    #@24
    .line 134
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->totrot:[B

    #@26
    .line 141
    const/16 v0, 0x30

    #@28
    new-array v0, v0, [B

    #@2a
    fill-array-data v0, :array_4

    #@2d
    .line 140
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->pc2:[B

    #@2f
    .line 148
    new-array v0, v1, [I

    #@31
    fill-array-data v0, :array_5

    #@34
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP1:[I

    #@36
    .line 167
    new-array v0, v1, [I

    #@38
    fill-array-data v0, :array_6

    #@3b
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP2:[I

    #@3d
    .line 186
    new-array v0, v1, [I

    #@3f
    fill-array-data v0, :array_7

    #@42
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP3:[I

    #@44
    .line 205
    new-array v0, v1, [I

    #@46
    fill-array-data v0, :array_8

    #@49
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP4:[I

    #@4b
    .line 224
    new-array v0, v1, [I

    #@4d
    fill-array-data v0, :array_9

    #@50
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP5:[I

    #@52
    .line 243
    new-array v0, v1, [I

    #@54
    fill-array-data v0, :array_a

    #@57
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP6:[I

    #@59
    .line 262
    new-array v0, v1, [I

    #@5b
    fill-array-data v0, :array_b

    #@5e
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP7:[I

    #@60
    .line 281
    new-array v0, v1, [I

    #@62
    fill-array-data v0, :array_c

    #@65
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP8:[I

    #@67
    .line 12
    return-void

    #@68
    .line 108
    :array_0
    .array-data 2
        0x80s
        0x40s
        0x20s
        0x10s
        0x8s
        0x4s
        0x2s
        0x1s
    .end array-data

    #@74
    .line 113
    :array_1
    .array-data 4
        0x800000
        0x400000
        0x200000
        0x100000
        0x80000
        0x40000
        0x20000
        0x10000
        0x8000
        0x4000
        0x2000
        0x1000
        0x800
        0x400
        0x200
        0x100
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data

    #@a8
    .line 127
    :array_2
    .array-data 1
        0x38t
        0x30t
        0x28t
        0x20t
        0x18t
        0x10t
        0x8t
        0x0t
        0x39t
        0x31t
        0x29t
        0x21t
        0x19t
        0x11t
        0x9t
        0x1t
        0x3at
        0x32t
        0x2at
        0x22t
        0x1at
        0x12t
        0xat
        0x2t
        0x3bt
        0x33t
        0x2bt
        0x23t
        0x3et
        0x36t
        0x2et
        0x26t
        0x1et
        0x16t
        0xet
        0x6t
        0x3dt
        0x35t
        0x2dt
        0x25t
        0x1dt
        0x15t
        0xdt
        0x5t
        0x3ct
        0x34t
        0x2ct
        0x24t
        0x1ct
        0x14t
        0xct
        0x4t
        0x1bt
        0x13t
        0xbt
        0x3t
    .end array-data

    #@c8
    .line 135
    :array_3
    .array-data 1
        0x1t
        0x2t
        0x4t
        0x6t
        0x8t
        0xat
        0xct
        0xet
        0xft
        0x11t
        0x13t
        0x15t
        0x17t
        0x19t
        0x1bt
        0x1ct
    .end array-data

    #@d4
    .line 141
    :array_4
    .array-data 1
        0xdt
        0x10t
        0xat
        0x17t
        0x0t
        0x4t
        0x2t
        0x1bt
        0xet
        0x5t
        0x14t
        0x9t
        0x16t
        0x12t
        0xbt
        0x3t
        0x19t
        0x7t
        0xft
        0x6t
        0x1at
        0x13t
        0xct
        0x1t
        0x28t
        0x33t
        0x1et
        0x24t
        0x2et
        0x36t
        0x1dt
        0x27t
        0x32t
        0x2ct
        0x20t
        0x2ft
        0x2bt
        0x30t
        0x26t
        0x37t
        0x21t
        0x34t
        0x2dt
        0x29t
        0x31t
        0x23t
        0x1ct
        0x1ft
    .end array-data

    #@f0
    .line 148
    :array_5
    .array-data 4
        0x1010400
        0x0
        0x10000
        0x1010404
        0x1010004
        0x10404
        0x4
        0x10000
        0x400
        0x1010400
        0x1010404
        0x400
        0x1000404
        0x1010004
        0x1000000
        0x4
        0x404
        0x1000400
        0x1000400
        0x10400
        0x10400
        0x1010000
        0x1010000
        0x1000404
        0x10004
        0x1000004
        0x1000004
        0x10004
        0x0
        0x404
        0x10404
        0x1000000
        0x10000
        0x1010404
        0x4
        0x1010000
        0x1010400
        0x1000000
        0x1000000
        0x400
        0x1010004
        0x10000
        0x10400
        0x1000004
        0x400
        0x4
        0x1000404
        0x10404
        0x1010404
        0x10004
        0x1010000
        0x1000404
        0x1000004
        0x404
        0x10404
        0x1010400
        0x404
        0x1000400
        0x1000400
        0x0
        0x10004
        0x10400
        0x0
        0x1010004
    .end array-data

    #@174
    .line 167
    :array_6
    .array-data 4
        -0x7fef7fe0
        -0x7fff8000
        0x8000
        0x108020
        0x100000
        0x20
        -0x7fefffe0
        -0x7fff7fe0
        -0x7fffffe0
        -0x7fef7fe0
        -0x7fef8000
        -0x80000000
        -0x7fff8000
        0x100000
        0x20
        -0x7fefffe0
        0x108000
        0x100020
        -0x7fff7fe0
        0x0
        -0x80000000
        0x8000
        0x108020
        -0x7ff00000
        0x100020
        -0x7fffffe0
        0x0
        0x108000
        0x8020
        -0x7fef8000
        -0x7ff00000
        0x8020
        0x0
        0x108020
        -0x7fefffe0
        0x100000
        -0x7fff7fe0
        -0x7ff00000
        -0x7fef8000
        0x8000
        -0x7ff00000
        -0x7fff8000
        0x20
        -0x7fef7fe0
        0x108020
        0x20
        0x8000
        -0x80000000
        0x8020
        -0x7fef8000
        0x100000
        -0x7fffffe0
        0x100020
        -0x7fff7fe0
        -0x7fffffe0
        0x100020
        0x108000
        0x0
        -0x7fff8000
        0x8020
        -0x80000000
        -0x7fefffe0
        -0x7fef7fe0
        0x108000
    .end array-data

    #@1f8
    .line 186
    :array_7
    .array-data 4
        0x208
        0x8020200
        0x0
        0x8020008
        0x8000200
        0x0
        0x20208
        0x8000200
        0x20008
        0x8000008
        0x8000008
        0x20000
        0x8020208
        0x20008
        0x8020000
        0x208
        0x8000000
        0x8
        0x8020200
        0x200
        0x20200
        0x8020000
        0x8020008
        0x20208
        0x8000208
        0x20200
        0x20000
        0x8000208
        0x8
        0x8020208
        0x200
        0x8000000
        0x8020200
        0x8000000
        0x20008
        0x208
        0x20000
        0x8020200
        0x8000200
        0x0
        0x200
        0x20008
        0x8020208
        0x8000200
        0x8000008
        0x200
        0x0
        0x8020008
        0x8000208
        0x20000
        0x8000000
        0x8020208
        0x8
        0x20208
        0x20200
        0x8000008
        0x8020000
        0x8000208
        0x208
        0x8020000
        0x20208
        0x8
        0x8020008
        0x20200
    .end array-data

    #@27c
    .line 205
    :array_8
    .array-data 4
        0x802001
        0x2081
        0x2081
        0x80
        0x802080
        0x800081
        0x800001
        0x2001
        0x0
        0x802000
        0x802000
        0x802081
        0x81
        0x0
        0x800080
        0x800001
        0x1
        0x2000
        0x800000
        0x802001
        0x80
        0x800000
        0x2001
        0x2080
        0x800081
        0x1
        0x2080
        0x800080
        0x2000
        0x802080
        0x802081
        0x81
        0x800080
        0x800001
        0x802000
        0x802081
        0x81
        0x0
        0x0
        0x802000
        0x2080
        0x800080
        0x800081
        0x1
        0x802001
        0x2081
        0x2081
        0x80
        0x802081
        0x81
        0x1
        0x2000
        0x800001
        0x2001
        0x802080
        0x800081
        0x2001
        0x2080
        0x800000
        0x802001
        0x80
        0x800000
        0x2000
        0x802080
    .end array-data

    #@300
    .line 224
    :array_9
    .array-data 4
        0x100
        0x2080100
        0x2080000
        0x42000100    # 32.000977f
        0x80000
        0x100
        0x40000000    # 2.0f
        0x2080000
        0x40080100
        0x80000
        0x2000100
        0x40080100
        0x42000100    # 32.000977f
        0x42080000    # 34.0f
        0x80100
        0x40000000    # 2.0f
        0x2000000
        0x40080000    # 2.125f
        0x40080000    # 2.125f
        0x0
        0x40000100    # 2.000061f
        0x42080100    # 34.000977f
        0x42080100    # 34.000977f
        0x2000100
        0x42080000    # 34.0f
        0x40000100    # 2.000061f
        0x0
        0x42000000    # 32.0f
        0x2080100
        0x2000000
        0x42000000    # 32.0f
        0x80100
        0x80000
        0x42000100    # 32.000977f
        0x100
        0x2000000
        0x40000000    # 2.0f
        0x2080000
        0x42000100    # 32.000977f
        0x40080100
        0x2000100
        0x40000000    # 2.0f
        0x42080000    # 34.0f
        0x2080100
        0x40080100
        0x100
        0x2000000
        0x42080000    # 34.0f
        0x42080100    # 34.000977f
        0x80100
        0x42000000    # 32.0f
        0x42080100    # 34.000977f
        0x2080000
        0x0
        0x40080000    # 2.125f
        0x42000000    # 32.0f
        0x80100
        0x2000100
        0x40000100    # 2.000061f
        0x80000
        0x0
        0x40080000    # 2.125f
        0x2080100
        0x40000100    # 2.000061f
    .end array-data

    #@384
    .line 243
    :array_a
    .array-data 4
        0x20000010
        0x20400000
        0x4000
        0x20404010
        0x20400000
        0x10
        0x20404010
        0x400000
        0x20004000
        0x404010
        0x400000
        0x20000010
        0x400010
        0x20004000
        0x20000000
        0x4010
        0x0
        0x400010
        0x20004010
        0x4000
        0x404000
        0x20004010
        0x10
        0x20400010
        0x20400010
        0x0
        0x404010
        0x20404000
        0x4010
        0x404000
        0x20404000
        0x20000000
        0x20004000
        0x10
        0x20400010
        0x404000
        0x20404010
        0x400000
        0x4010
        0x20000010
        0x400000
        0x20004000
        0x20000000
        0x4010
        0x20000010
        0x20404010
        0x404000
        0x20400000
        0x404010
        0x20404000
        0x0
        0x20400010
        0x10
        0x4000
        0x20400000
        0x404010
        0x4000
        0x400010
        0x20004010
        0x0
        0x20404000
        0x20000000
        0x400010
        0x20004010
    .end array-data

    #@408
    .line 262
    :array_b
    .array-data 4
        0x200000
        0x4200002
        0x4000802    # 1.5050005E-36f
        0x0
        0x800
        0x4000802    # 1.5050005E-36f
        0x200802
        0x4200800
        0x4200802
        0x200000
        0x0
        0x4000002
        0x2
        0x4000000
        0x4200002
        0x802
        0x4000800    # 1.5050001E-36f
        0x200802
        0x200002
        0x4000800    # 1.5050001E-36f
        0x4000002
        0x4200000
        0x4200800
        0x200002
        0x4200000
        0x800
        0x802
        0x4200802
        0x200800
        0x2
        0x4000000
        0x200800
        0x4000000
        0x200800
        0x200000
        0x4000802    # 1.5050005E-36f
        0x4000802    # 1.5050005E-36f
        0x4200002
        0x4200002
        0x2
        0x200002
        0x4000000
        0x4000800    # 1.5050001E-36f
        0x200000
        0x4200800
        0x802
        0x200802
        0x4200800
        0x802
        0x4000002
        0x4200802
        0x4200000
        0x200800
        0x0
        0x2
        0x4200802
        0x0
        0x200802
        0x4200000
        0x800
        0x4000002
        0x4000800    # 1.5050001E-36f
        0x800
        0x200002
    .end array-data

    #@48c
    .line 281
    :array_c
    .array-data 4
        0x10001040
        0x1000
        0x40000
        0x10041040
        0x10000000
        0x10001040
        0x40
        0x10000000
        0x40040
        0x10040000
        0x10041040
        0x41000
        0x10041000
        0x41040
        0x1000
        0x40
        0x10040000
        0x10000040
        0x10001000
        0x1040
        0x41000
        0x40040
        0x10040040
        0x10041000
        0x1040
        0x0
        0x0
        0x10040040
        0x10000040
        0x10001000
        0x41040
        0x40000
        0x41040
        0x40000
        0x10041000
        0x1000
        0x40
        0x10040040
        0x1000
        0x41040
        0x10001000
        0x40
        0x10000040
        0x10040000
        0x10040040
        0x10000000
        0x40000
        0x10001040
        0x0
        0x10041040
        0x40040
        0x10000040
        0x10040000
        0x10001000
        0x10001040
        0x0
        0x10041040
        0x41000
        0x41000
        0x1040
        0x1040
        0x40040
        0x10000000
        0x10041000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 17
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    #@6
    .line 22
    return-void
.end method


# virtual methods
.method protected desFunc([I[BI[BI)V
    .locals 7
    .param p1, "wKey"    # [I
    .param p2, "in"    # [B
    .param p3, "inOff"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    #@0
    .prologue
    .line 410
    add-int/lit8 v5, p3, 0x0

    #@2
    aget-byte v5, p2, v5

    #@4
    and-int/lit16 v5, v5, 0xff

    #@6
    shl-int/lit8 v1, v5, 0x18

    #@8
    .line 411
    .local v1, "left":I
    add-int/lit8 v5, p3, 0x1

    #@a
    aget-byte v5, p2, v5

    #@c
    and-int/lit16 v5, v5, 0xff

    #@e
    shl-int/lit8 v5, v5, 0x10

    #@10
    or-int/2addr v1, v5

    #@11
    .line 412
    add-int/lit8 v5, p3, 0x2

    #@13
    aget-byte v5, p2, v5

    #@15
    and-int/lit16 v5, v5, 0xff

    #@17
    shl-int/lit8 v5, v5, 0x8

    #@19
    or-int/2addr v1, v5

    #@1a
    .line 413
    add-int/lit8 v5, p3, 0x3

    #@1c
    aget-byte v5, p2, v5

    #@1e
    and-int/lit16 v5, v5, 0xff

    #@20
    or-int/2addr v1, v5

    #@21
    .line 415
    add-int/lit8 v5, p3, 0x4

    #@23
    aget-byte v5, p2, v5

    #@25
    and-int/lit16 v5, v5, 0xff

    #@27
    shl-int/lit8 v2, v5, 0x18

    #@29
    .line 416
    .local v2, "right":I
    add-int/lit8 v5, p3, 0x5

    #@2b
    aget-byte v5, p2, v5

    #@2d
    and-int/lit16 v5, v5, 0xff

    #@2f
    shl-int/lit8 v5, v5, 0x10

    #@31
    or-int/2addr v2, v5

    #@32
    .line 417
    add-int/lit8 v5, p3, 0x6

    #@34
    aget-byte v5, p2, v5

    #@36
    and-int/lit16 v5, v5, 0xff

    #@38
    shl-int/lit8 v5, v5, 0x8

    #@3a
    or-int/2addr v2, v5

    #@3b
    .line 418
    add-int/lit8 v5, p3, 0x7

    #@3d
    aget-byte v5, p2, v5

    #@3f
    and-int/lit16 v5, v5, 0xff

    #@41
    or-int/2addr v2, v5

    #@42
    .line 420
    ushr-int/lit8 v5, v1, 0x4

    #@44
    xor-int/2addr v5, v2

    #@45
    const v6, 0xf0f0f0f

    #@48
    and-int v4, v5, v6

    #@4a
    .line 421
    .local v4, "work":I
    xor-int/2addr v2, v4

    #@4b
    .line 422
    shl-int/lit8 v5, v4, 0x4

    #@4d
    xor-int/2addr v1, v5

    #@4e
    .line 423
    ushr-int/lit8 v5, v1, 0x10

    #@50
    xor-int/2addr v5, v2

    #@51
    const v6, 0xffff

    #@54
    and-int v4, v5, v6

    #@56
    .line 424
    xor-int/2addr v2, v4

    #@57
    .line 425
    shl-int/lit8 v5, v4, 0x10

    #@59
    xor-int/2addr v1, v5

    #@5a
    .line 426
    ushr-int/lit8 v5, v2, 0x2

    #@5c
    xor-int/2addr v5, v1

    #@5d
    const v6, 0x33333333

    #@60
    and-int v4, v5, v6

    #@62
    .line 427
    xor-int/2addr v1, v4

    #@63
    .line 428
    shl-int/lit8 v5, v4, 0x2

    #@65
    xor-int/2addr v2, v5

    #@66
    .line 429
    ushr-int/lit8 v5, v2, 0x8

    #@68
    xor-int/2addr v5, v1

    #@69
    const v6, 0xff00ff

    #@6c
    and-int v4, v5, v6

    #@6e
    .line 430
    xor-int/2addr v1, v4

    #@6f
    .line 431
    shl-int/lit8 v5, v4, 0x8

    #@71
    xor-int/2addr v2, v5

    #@72
    .line 432
    shl-int/lit8 v5, v2, 0x1

    #@74
    ushr-int/lit8 v6, v2, 0x1f

    #@76
    and-int/lit8 v6, v6, 0x1

    #@78
    or-int/2addr v5, v6

    #@79
    and-int/lit8 v2, v5, -0x1

    #@7b
    .line 433
    xor-int v5, v1, v2

    #@7d
    const v6, -0x55555556

    #@80
    and-int v4, v5, v6

    #@82
    .line 434
    xor-int/2addr v1, v4

    #@83
    .line 435
    xor-int/2addr v2, v4

    #@84
    .line 436
    shl-int/lit8 v5, v1, 0x1

    #@86
    ushr-int/lit8 v6, v1, 0x1f

    #@88
    and-int/lit8 v6, v6, 0x1

    #@8a
    or-int/2addr v5, v6

    #@8b
    and-int/lit8 v1, v5, -0x1

    #@8d
    .line 438
    const/4 v3, 0x0

    #@8e
    .local v3, "round":I
    :goto_0
    const/16 v5, 0x8

    #@90
    if-ge v3, v5, :cond_0

    #@92
    .line 442
    shl-int/lit8 v5, v2, 0x1c

    #@94
    ushr-int/lit8 v6, v2, 0x4

    #@96
    or-int v4, v5, v6

    #@98
    .line 443
    mul-int/lit8 v5, v3, 0x4

    #@9a
    add-int/lit8 v5, v5, 0x0

    #@9c
    aget v5, p1, v5

    #@9e
    xor-int/2addr v4, v5

    #@9f
    .line 444
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP7:[I

    #@a1
    and-int/lit8 v6, v4, 0x3f

    #@a3
    aget v0, v5, v6

    #@a5
    .line 445
    .local v0, "fval":I
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP5:[I

    #@a7
    ushr-int/lit8 v6, v4, 0x8

    #@a9
    and-int/lit8 v6, v6, 0x3f

    #@ab
    aget v5, v5, v6

    #@ad
    or-int/2addr v0, v5

    #@ae
    .line 446
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP3:[I

    #@b0
    ushr-int/lit8 v6, v4, 0x10

    #@b2
    and-int/lit8 v6, v6, 0x3f

    #@b4
    aget v5, v5, v6

    #@b6
    or-int/2addr v0, v5

    #@b7
    .line 447
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP1:[I

    #@b9
    ushr-int/lit8 v6, v4, 0x18

    #@bb
    and-int/lit8 v6, v6, 0x3f

    #@bd
    aget v5, v5, v6

    #@bf
    or-int/2addr v0, v5

    #@c0
    .line 448
    mul-int/lit8 v5, v3, 0x4

    #@c2
    add-int/lit8 v5, v5, 0x1

    #@c4
    aget v5, p1, v5

    #@c6
    xor-int v4, v2, v5

    #@c8
    .line 449
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP8:[I

    #@ca
    and-int/lit8 v6, v4, 0x3f

    #@cc
    aget v5, v5, v6

    #@ce
    or-int/2addr v0, v5

    #@cf
    .line 450
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP6:[I

    #@d1
    ushr-int/lit8 v6, v4, 0x8

    #@d3
    and-int/lit8 v6, v6, 0x3f

    #@d5
    aget v5, v5, v6

    #@d7
    or-int/2addr v0, v5

    #@d8
    .line 451
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP4:[I

    #@da
    ushr-int/lit8 v6, v4, 0x10

    #@dc
    and-int/lit8 v6, v6, 0x3f

    #@de
    aget v5, v5, v6

    #@e0
    or-int/2addr v0, v5

    #@e1
    .line 452
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP2:[I

    #@e3
    ushr-int/lit8 v6, v4, 0x18

    #@e5
    and-int/lit8 v6, v6, 0x3f

    #@e7
    aget v5, v5, v6

    #@e9
    or-int/2addr v0, v5

    #@ea
    .line 453
    xor-int/2addr v1, v0

    #@eb
    .line 454
    shl-int/lit8 v5, v1, 0x1c

    #@ed
    ushr-int/lit8 v6, v1, 0x4

    #@ef
    or-int v4, v5, v6

    #@f1
    .line 455
    mul-int/lit8 v5, v3, 0x4

    #@f3
    add-int/lit8 v5, v5, 0x2

    #@f5
    aget v5, p1, v5

    #@f7
    xor-int/2addr v4, v5

    #@f8
    .line 456
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP7:[I

    #@fa
    and-int/lit8 v6, v4, 0x3f

    #@fc
    aget v0, v5, v6

    #@fe
    .line 457
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP5:[I

    #@100
    ushr-int/lit8 v6, v4, 0x8

    #@102
    and-int/lit8 v6, v6, 0x3f

    #@104
    aget v5, v5, v6

    #@106
    or-int/2addr v0, v5

    #@107
    .line 458
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP3:[I

    #@109
    ushr-int/lit8 v6, v4, 0x10

    #@10b
    and-int/lit8 v6, v6, 0x3f

    #@10d
    aget v5, v5, v6

    #@10f
    or-int/2addr v0, v5

    #@110
    .line 459
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP1:[I

    #@112
    ushr-int/lit8 v6, v4, 0x18

    #@114
    and-int/lit8 v6, v6, 0x3f

    #@116
    aget v5, v5, v6

    #@118
    or-int/2addr v0, v5

    #@119
    .line 460
    mul-int/lit8 v5, v3, 0x4

    #@11b
    add-int/lit8 v5, v5, 0x3

    #@11d
    aget v5, p1, v5

    #@11f
    xor-int v4, v1, v5

    #@121
    .line 461
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP8:[I

    #@123
    and-int/lit8 v6, v4, 0x3f

    #@125
    aget v5, v5, v6

    #@127
    or-int/2addr v0, v5

    #@128
    .line 462
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP6:[I

    #@12a
    ushr-int/lit8 v6, v4, 0x8

    #@12c
    and-int/lit8 v6, v6, 0x3f

    #@12e
    aget v5, v5, v6

    #@130
    or-int/2addr v0, v5

    #@131
    .line 463
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP4:[I

    #@133
    ushr-int/lit8 v6, v4, 0x10

    #@135
    and-int/lit8 v6, v6, 0x3f

    #@137
    aget v5, v5, v6

    #@139
    or-int/2addr v0, v5

    #@13a
    .line 464
    sget-object v5, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->SP2:[I

    #@13c
    ushr-int/lit8 v6, v4, 0x18

    #@13e
    and-int/lit8 v6, v6, 0x3f

    #@140
    aget v5, v5, v6

    #@142
    or-int/2addr v0, v5

    #@143
    .line 465
    xor-int/2addr v2, v0

    #@144
    .line 438
    add-int/lit8 v3, v3, 0x1

    #@146
    goto/16 :goto_0

    #@148
    .line 468
    .end local v0    # "fval":I
    :cond_0
    shl-int/lit8 v5, v2, 0x1f

    #@14a
    ushr-int/lit8 v6, v2, 0x1

    #@14c
    or-int v2, v5, v6

    #@14e
    .line 469
    xor-int v5, v1, v2

    #@150
    const v6, -0x55555556

    #@153
    and-int v4, v5, v6

    #@155
    .line 470
    xor-int/2addr v1, v4

    #@156
    .line 471
    xor-int/2addr v2, v4

    #@157
    .line 472
    shl-int/lit8 v5, v1, 0x1f

    #@159
    ushr-int/lit8 v6, v1, 0x1

    #@15b
    or-int v1, v5, v6

    #@15d
    .line 473
    ushr-int/lit8 v5, v1, 0x8

    #@15f
    xor-int/2addr v5, v2

    #@160
    const v6, 0xff00ff

    #@163
    and-int v4, v5, v6

    #@165
    .line 474
    xor-int/2addr v2, v4

    #@166
    .line 475
    shl-int/lit8 v5, v4, 0x8

    #@168
    xor-int/2addr v1, v5

    #@169
    .line 476
    ushr-int/lit8 v5, v1, 0x2

    #@16b
    xor-int/2addr v5, v2

    #@16c
    const v6, 0x33333333

    #@16f
    and-int v4, v5, v6

    #@171
    .line 477
    xor-int/2addr v2, v4

    #@172
    .line 478
    shl-int/lit8 v5, v4, 0x2

    #@174
    xor-int/2addr v1, v5

    #@175
    .line 479
    ushr-int/lit8 v5, v2, 0x10

    #@177
    xor-int/2addr v5, v1

    #@178
    const v6, 0xffff

    #@17b
    and-int v4, v5, v6

    #@17d
    .line 480
    xor-int/2addr v1, v4

    #@17e
    .line 481
    shl-int/lit8 v5, v4, 0x10

    #@180
    xor-int/2addr v2, v5

    #@181
    .line 482
    ushr-int/lit8 v5, v2, 0x4

    #@183
    xor-int/2addr v5, v1

    #@184
    const v6, 0xf0f0f0f

    #@187
    and-int v4, v5, v6

    #@189
    .line 483
    xor-int/2addr v1, v4

    #@18a
    .line 484
    shl-int/lit8 v5, v4, 0x4

    #@18c
    xor-int/2addr v2, v5

    #@18d
    .line 486
    add-int/lit8 v5, p5, 0x0

    #@18f
    ushr-int/lit8 v6, v2, 0x18

    #@191
    and-int/lit16 v6, v6, 0xff

    #@193
    int-to-byte v6, v6

    #@194
    aput-byte v6, p4, v5

    #@196
    .line 487
    add-int/lit8 v5, p5, 0x1

    #@198
    ushr-int/lit8 v6, v2, 0x10

    #@19a
    and-int/lit16 v6, v6, 0xff

    #@19c
    int-to-byte v6, v6

    #@19d
    aput-byte v6, p4, v5

    #@19f
    .line 488
    add-int/lit8 v5, p5, 0x2

    #@1a1
    ushr-int/lit8 v6, v2, 0x8

    #@1a3
    and-int/lit16 v6, v6, 0xff

    #@1a5
    int-to-byte v6, v6

    #@1a6
    aput-byte v6, p4, v5

    #@1a8
    .line 489
    add-int/lit8 v5, p5, 0x3

    #@1aa
    and-int/lit16 v6, v2, 0xff

    #@1ac
    int-to-byte v6, v6

    #@1ad
    aput-byte v6, p4, v5

    #@1af
    .line 490
    add-int/lit8 v5, p5, 0x4

    #@1b1
    ushr-int/lit8 v6, v1, 0x18

    #@1b3
    and-int/lit16 v6, v6, 0xff

    #@1b5
    int-to-byte v6, v6

    #@1b6
    aput-byte v6, p4, v5

    #@1b8
    .line 491
    add-int/lit8 v5, p5, 0x5

    #@1ba
    ushr-int/lit8 v6, v1, 0x10

    #@1bc
    and-int/lit16 v6, v6, 0xff

    #@1be
    int-to-byte v6, v6

    #@1bf
    aput-byte v6, p4, v5

    #@1c1
    .line 492
    add-int/lit8 v5, p5, 0x6

    #@1c3
    ushr-int/lit8 v6, v1, 0x8

    #@1c5
    and-int/lit16 v6, v6, 0xff

    #@1c7
    int-to-byte v6, v6

    #@1c8
    aput-byte v6, p4, v5

    #@1ca
    .line 493
    add-int/lit8 v5, p5, 0x7

    #@1cc
    and-int/lit16 v6, v1, 0xff

    #@1ce
    int-to-byte v6, v6

    #@1cf
    aput-byte v6, p4, v5

    #@1d1
    .line 406
    return-void
.end method

.method protected generateWorkingKey(Z[B)[I
    .locals 13
    .param p1, "encrypting"    # Z
    .param p2, "key"    # [B

    #@0
    .prologue
    .line 311
    const/16 v10, 0x20

    #@2
    new-array v7, v10, [I

    #@4
    .line 312
    .local v7, "newKey":[I
    const/16 v10, 0x38

    #@6
    new-array v8, v10, [Z

    #@8
    .line 313
    .local v8, "pc1m":[Z
    const/16 v10, 0x38

    #@a
    new-array v9, v10, [Z

    #@c
    .line 315
    .local v9, "pcr":[Z
    const/4 v3, 0x0

    #@d
    .local v3, "j":I
    :goto_0
    const/16 v10, 0x38

    #@f
    if-ge v3, v10, :cond_1

    #@11
    .line 317
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->pc1:[B

    #@13
    aget-byte v4, v10, v3

    #@15
    .line 319
    .local v4, "l":I
    ushr-int/lit8 v10, v4, 0x3

    #@17
    aget-byte v10, p2, v10

    #@19
    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->bytebit:[S

    #@1b
    and-int/lit8 v12, v4, 0x7

    #@1d
    aget-short v11, v11, v12

    #@1f
    and-int/2addr v10, v11

    #@20
    if-eqz v10, :cond_0

    #@22
    const/4 v10, 0x1

    #@23
    :goto_1
    aput-boolean v10, v8, v3

    #@25
    .line 315
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_0

    #@28
    .line 319
    :cond_0
    const/4 v10, 0x0

    #@29
    goto :goto_1

    #@2a
    .line 322
    .end local v4    # "l":I
    :cond_1
    const/4 v0, 0x0

    #@2b
    .local v0, "i":I
    :goto_2
    const/16 v10, 0x10

    #@2d
    if-ge v0, v10, :cond_a

    #@2f
    .line 326
    if-eqz p1, :cond_2

    #@31
    .line 328
    shl-int/lit8 v5, v0, 0x1

    #@33
    .line 335
    .local v5, "m":I
    :goto_3
    add-int/lit8 v6, v5, 0x1

    #@35
    .line 336
    .local v6, "n":I
    const/4 v10, 0x0

    #@36
    aput v10, v7, v6

    #@38
    const/4 v10, 0x0

    #@39
    aput v10, v7, v5

    #@3b
    .line 338
    const/4 v3, 0x0

    #@3c
    :goto_4
    const/16 v10, 0x1c

    #@3e
    if-ge v3, v10, :cond_4

    #@40
    .line 340
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->totrot:[B

    #@42
    aget-byte v10, v10, v0

    #@44
    add-int v4, v3, v10

    #@46
    .line 341
    .restart local v4    # "l":I
    const/16 v10, 0x1c

    #@48
    if-ge v4, v10, :cond_3

    #@4a
    .line 343
    aget-boolean v10, v8, v4

    #@4c
    aput-boolean v10, v9, v3

    #@4e
    .line 338
    :goto_5
    add-int/lit8 v3, v3, 0x1

    #@50
    goto :goto_4

    #@51
    .line 332
    .end local v4    # "l":I
    .end local v5    # "m":I
    .end local v6    # "n":I
    :cond_2
    rsub-int/lit8 v10, v0, 0xf

    #@53
    shl-int/lit8 v5, v10, 0x1

    #@55
    .restart local v5    # "m":I
    goto :goto_3

    #@56
    .line 347
    .restart local v4    # "l":I
    .restart local v6    # "n":I
    :cond_3
    add-int/lit8 v10, v4, -0x1c

    #@58
    aget-boolean v10, v8, v10

    #@5a
    aput-boolean v10, v9, v3

    #@5c
    goto :goto_5

    #@5d
    .line 351
    .end local v4    # "l":I
    :cond_4
    const/16 v3, 0x1c

    #@5f
    :goto_6
    const/16 v10, 0x38

    #@61
    if-ge v3, v10, :cond_6

    #@63
    .line 353
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->totrot:[B

    #@65
    aget-byte v10, v10, v0

    #@67
    add-int v4, v3, v10

    #@69
    .line 354
    .restart local v4    # "l":I
    const/16 v10, 0x38

    #@6b
    if-ge v4, v10, :cond_5

    #@6d
    .line 356
    aget-boolean v10, v8, v4

    #@6f
    aput-boolean v10, v9, v3

    #@71
    .line 351
    :goto_7
    add-int/lit8 v3, v3, 0x1

    #@73
    goto :goto_6

    #@74
    .line 360
    :cond_5
    add-int/lit8 v10, v4, -0x1c

    #@76
    aget-boolean v10, v8, v10

    #@78
    aput-boolean v10, v9, v3

    #@7a
    goto :goto_7

    #@7b
    .line 364
    .end local v4    # "l":I
    :cond_6
    const/4 v3, 0x0

    #@7c
    :goto_8
    const/16 v10, 0x18

    #@7e
    if-ge v3, v10, :cond_9

    #@80
    .line 366
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->pc2:[B

    #@82
    aget-byte v10, v10, v3

    #@84
    aget-boolean v10, v9, v10

    #@86
    if-eqz v10, :cond_7

    #@88
    .line 368
    aget v10, v7, v5

    #@8a
    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->bigbyte:[I

    #@8c
    aget v11, v11, v3

    #@8e
    or-int/2addr v10, v11

    #@8f
    aput v10, v7, v5

    #@91
    .line 371
    :cond_7
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->pc2:[B

    #@93
    add-int/lit8 v11, v3, 0x18

    #@95
    aget-byte v10, v10, v11

    #@97
    aget-boolean v10, v9, v10

    #@99
    if-eqz v10, :cond_8

    #@9b
    .line 373
    aget v10, v7, v6

    #@9d
    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->bigbyte:[I

    #@9f
    aget v11, v11, v3

    #@a1
    or-int/2addr v10, v11

    #@a2
    aput v10, v7, v6

    #@a4
    .line 364
    :cond_8
    add-int/lit8 v3, v3, 0x1

    #@a6
    goto :goto_8

    #@a7
    .line 322
    :cond_9
    add-int/lit8 v0, v0, 0x1

    #@a9
    goto :goto_2

    #@aa
    .line 381
    .end local v5    # "m":I
    .end local v6    # "n":I
    :cond_a
    const/4 v0, 0x0

    #@ab
    :goto_9
    const/16 v10, 0x20

    #@ad
    if-eq v0, v10, :cond_b

    #@af
    .line 385
    aget v1, v7, v0

    #@b1
    .line 386
    .local v1, "i1":I
    add-int/lit8 v10, v0, 0x1

    #@b3
    aget v2, v7, v10

    #@b5
    .line 388
    .local v2, "i2":I
    const/high16 v10, 0xfc0000

    #@b7
    and-int/2addr v10, v1

    #@b8
    shl-int/lit8 v10, v10, 0x6

    #@ba
    and-int/lit16 v11, v1, 0xfc0

    #@bc
    shl-int/lit8 v11, v11, 0xa

    #@be
    or-int/2addr v10, v11

    #@bf
    .line 389
    const/high16 v11, 0xfc0000

    #@c1
    and-int/2addr v11, v2

    #@c2
    ushr-int/lit8 v11, v11, 0xa

    #@c4
    .line 388
    or-int/2addr v10, v11

    #@c5
    .line 389
    and-int/lit16 v11, v2, 0xfc0

    #@c7
    ushr-int/lit8 v11, v11, 0x6

    #@c9
    .line 388
    or-int/2addr v10, v11

    #@ca
    aput v10, v7, v0

    #@cc
    .line 391
    add-int/lit8 v10, v0, 0x1

    #@ce
    const v11, 0x3f000

    #@d1
    and-int/2addr v11, v1

    #@d2
    shl-int/lit8 v11, v11, 0xc

    #@d4
    and-int/lit8 v12, v1, 0x3f

    #@d6
    shl-int/lit8 v12, v12, 0x10

    #@d8
    or-int/2addr v11, v12

    #@d9
    .line 392
    const v12, 0x3f000

    #@dc
    and-int/2addr v12, v2

    #@dd
    ushr-int/lit8 v12, v12, 0x4

    #@df
    .line 391
    or-int/2addr v11, v12

    #@e0
    .line 392
    and-int/lit8 v12, v2, 0x3f

    #@e2
    .line 391
    or-int/2addr v11, v12

    #@e3
    aput v11, v7, v10

    #@e5
    .line 381
    add-int/lit8 v0, v0, 0x2

    #@e7
    goto :goto_9

    #@e8
    .line 395
    .end local v1    # "i1":I
    .end local v2    # "i2":I
    :cond_b
    return-object v7
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 56
    const-string/jumbo v0, "DES"

    #@3
    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 61
    const/16 v0, 0x8

    #@2
    return v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    .line 38
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@2
    if-eqz v0, :cond_1

    #@4
    move-object v0, p2

    #@5
    .line 40
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@7
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    const/16 v1, 0x8

    #@e
    if-le v0, v1, :cond_0

    #@10
    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "DES key too long - should be 8 bytes"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 46
    :cond_0
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@1b
    .end local p2    # "params":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    #@1e
    move-result-object v0

    #@1f
    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->generateWorkingKey(Z[B)[I

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    #@25
    .line 48
    return-void

    #@26
    .line 51
    .restart local p2    # "params":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "invalid parameter passed to DES init - "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@47
    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "DES engine not initialised"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 75
    :cond_0
    add-int/lit8 v0, p2, 0x8

    #@f
    array-length v1, p1

    #@10
    if-le v0, v1, :cond_1

    #@12
    .line 77
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@14
    const-string/jumbo v1, "input buffer too short"

    #@17
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 80
    :cond_1
    add-int/lit8 v0, p4, 0x8

    #@1d
    array-length v1, p3

    #@1e
    if-le v0, v1, :cond_2

    #@20
    .line 82
    new-instance v0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    #@22
    const-string/jumbo v1, "output buffer too short"

    #@25
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 85
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->workingKey:[I

    #@2b
    move-object v0, p0

    #@2c
    move-object v2, p1

    #@2d
    move v3, p2

    #@2e
    move-object v4, p3

    #@2f
    move v5, p4

    #@30
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;->desFunc([I[BI[BI)V

    #@33
    .line 87
    const/16 v0, 0x8

    #@35
    return v0
.end method

.method public reset()V
    .locals 0

    #@0
    .prologue
    .line 90
    return-void
.end method
