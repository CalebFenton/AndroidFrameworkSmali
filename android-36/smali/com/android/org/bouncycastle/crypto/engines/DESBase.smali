.class abstract Lcom/android/org/bouncycastle/crypto/engines/DESBase;
.super Ljava/lang/Object;
.source "DESBase.java"


# static fields
.field private static final blacklist SP1:[I

.field private static final blacklist SP2:[I

.field private static final blacklist SP3:[I

.field private static final blacklist SP4:[I

.field private static final blacklist SP5:[I

.field private static final blacklist SP6:[I

.field private static final blacklist SP7:[I

.field private static final blacklist SP8:[I

.field private static final blacklist bigbyte:[I

.field private static final blacklist bytebit:[S

.field private static final blacklist pc1:[B

.field private static final blacklist pc2:[B

.field private static final blacklist totrot:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    const/16 v0, 0x40

    const/16 v1, 0x10

    const/16 v2, 0x8

    .line 33
    new-array v2, v2, [S

    fill-array-data v2, :array_68

    sput-object v2, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->bytebit:[S

    const/16 v2, 0x18

    .line 38
    new-array v2, v2, [I

    fill-array-data v2, :array_74

    sput-object v2, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->bigbyte:[I

    const/16 v2, 0x38

    .line 52
    new-array v2, v2, [B

    fill-array-data v2, :array_a8

    sput-object v2, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->pc1:[B

    .line 60
    new-array v1, v1, [B

    fill-array-data v1, :array_c8

    sput-object v1, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->totrot:[B

    const/16 v1, 0x30

    .line 66
    new-array v1, v1, [B

    fill-array-data v1, :array_d4

    sput-object v1, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->pc2:[B

    .line 74
    new-array v1, v0, [I

    fill-array-data v1, :array_f0

    sput-object v1, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->SP1:[I

    .line 93
    new-array v1, v0, [I

    fill-array-data v1, :array_174

    sput-object v1, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->SP2:[I

    .line 112
    new-array v1, v0, [I

    fill-array-data v1, :array_1f8

    sput-object v1, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->SP3:[I

    .line 131
    new-array v1, v0, [I

    fill-array-data v1, :array_27c

    sput-object v1, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->SP4:[I

    .line 150
    new-array v1, v0, [I

    fill-array-data v1, :array_300

    sput-object v1, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->SP5:[I

    .line 169
    new-array v1, v0, [I

    fill-array-data v1, :array_384

    sput-object v1, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->SP6:[I

    .line 188
    new-array v1, v0, [I

    fill-array-data v1, :array_408

    sput-object v1, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->SP7:[I

    .line 207
    new-array v0, v0, [I

    fill-array-data v0, :array_48c

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->SP8:[I

    return-void

    :array_68
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

    :array_74
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

    :array_a8
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

    :array_c8
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

    :array_d4
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

    :array_f0
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

    :array_174
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

    :array_1f8
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

    :array_27c
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

    :array_300
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

    :array_384
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

    :array_408
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

    :array_48c
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

.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist desFunc([I[BI[BI)V
    .registers 28

    move-object/from16 v0, p4

    move/from16 v1, p5

    .line 336
    invoke-static/range {p2 .. p3}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    add-int/lit8 v3, p3, 0x4

    move-object/from16 v4, p2

    .line 337
    invoke-static {v4, v3}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v3

    ushr-int/lit8 v4, v2, 0x4

    xor-int/2addr v4, v3

    const v5, 0xf0f0f0f

    and-int/2addr v4, v5

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v4, 0x4

    xor-int/2addr v2, v4

    ushr-int/lit8 v4, v2, 0x10

    xor-int/2addr v4, v3

    const v6, 0xffff

    and-int/2addr v4, v6

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v4, 0x10

    xor-int/2addr v2, v4

    ushr-int/lit8 v4, v3, 0x2

    xor-int/2addr v4, v2

    const v7, 0x33333333

    and-int/2addr v4, v7

    xor-int/2addr v2, v4

    shl-int/lit8 v4, v4, 0x2

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v3, 0x8

    xor-int/2addr v4, v2

    const v8, 0xff00ff

    and-int/2addr v4, v8

    xor-int/2addr v2, v4

    const/16 v9, 0x8

    shl-int/2addr v4, v9

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v3, v3, 0x1f

    or-int/2addr v3, v4

    xor-int v4, v2, v3

    const v10, -0x55555556

    and-int/2addr v4, v10

    xor-int/2addr v2, v4

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1f

    or-int/2addr v2, v4

    const/4 v4, 0x0

    :goto_50
    if-ge v4, v9, :cond_f1

    shl-int/lit8 v11, v3, 0x1c

    ushr-int/lit8 v12, v3, 0x4

    or-int/2addr v11, v12

    mul-int/lit8 v12, v4, 0x4

    .line 362
    aget v13, p1, v12

    xor-int/2addr v11, v13

    .line 363
    sget-object v13, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->SP7:[I

    and-int/lit8 v14, v11, 0x3f

    aget v14, v13, v14

    .line 364
    sget-object v15, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->SP5:[I

    ushr-int/lit8 v16, v11, 0x8

    and-int/lit8 v16, v16, 0x3f

    aget v16, v15, v16

    or-int v14, v14, v16

    .line 365
    sget-object v16, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->SP3:[I

    ushr-int/lit8 v17, v11, 0x10

    and-int/lit8 v17, v17, 0x3f

    aget v17, v16, v17

    or-int v14, v14, v17

    .line 366
    sget-object v17, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->SP1:[I

    ushr-int/lit8 v11, v11, 0x18

    and-int/lit8 v11, v11, 0x3f

    aget v11, v17, v11

    or-int/2addr v11, v14

    add-int/lit8 v14, v12, 0x1

    .line 367
    aget v14, p1, v14

    xor-int/2addr v14, v3

    .line 368
    sget-object v18, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->SP8:[I

    and-int/lit8 v19, v14, 0x3f

    aget v19, v18, v19

    or-int v11, v11, v19

    .line 369
    sget-object v19, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->SP6:[I

    ushr-int/lit8 v20, v14, 0x8

    and-int/lit8 v20, v20, 0x3f

    aget v20, v19, v20

    or-int v11, v11, v20

    .line 370
    sget-object v20, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->SP4:[I

    ushr-int/lit8 v21, v14, 0x10

    and-int/lit8 v21, v21, 0x3f

    aget v21, v20, v21

    or-int v11, v11, v21

    .line 371
    sget-object v21, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->SP2:[I

    ushr-int/lit8 v14, v14, 0x18

    and-int/lit8 v14, v14, 0x3f

    aget v14, v21, v14

    or-int/2addr v11, v14

    xor-int/2addr v2, v11

    shl-int/lit8 v11, v2, 0x1c

    ushr-int/lit8 v14, v2, 0x4

    or-int/2addr v11, v14

    add-int/lit8 v14, v12, 0x2

    .line 374
    aget v14, p1, v14

    xor-int/2addr v11, v14

    and-int/lit8 v14, v11, 0x3f

    .line 375
    aget v13, v13, v14

    ushr-int/lit8 v14, v11, 0x8

    and-int/lit8 v14, v14, 0x3f

    .line 376
    aget v14, v15, v14

    or-int/2addr v13, v14

    ushr-int/lit8 v14, v11, 0x10

    and-int/lit8 v14, v14, 0x3f

    .line 377
    aget v14, v16, v14

    or-int/2addr v13, v14

    ushr-int/lit8 v11, v11, 0x18

    and-int/lit8 v11, v11, 0x3f

    .line 378
    aget v11, v17, v11

    or-int/2addr v11, v13

    add-int/lit8 v12, v12, 0x3

    .line 379
    aget v12, p1, v12

    xor-int/2addr v12, v2

    and-int/lit8 v13, v12, 0x3f

    .line 380
    aget v13, v18, v13

    or-int/2addr v11, v13

    ushr-int/lit8 v13, v12, 0x8

    and-int/lit8 v13, v13, 0x3f

    .line 381
    aget v13, v19, v13

    or-int/2addr v11, v13

    ushr-int/lit8 v13, v12, 0x10

    and-int/lit8 v13, v13, 0x3f

    .line 382
    aget v13, v20, v13

    or-int/2addr v11, v13

    ushr-int/lit8 v12, v12, 0x18

    and-int/lit8 v12, v12, 0x3f

    .line 383
    aget v12, v21, v12

    or-int/2addr v11, v12

    xor-int/2addr v3, v11

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_50

    :cond_f1
    shl-int/lit8 v4, v3, 0x1f

    ushr-int/lit8 v3, v3, 0x1

    or-int/2addr v3, v4

    xor-int v4, v2, v3

    and-int/2addr v4, v10

    xor-int/2addr v2, v4

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x1f

    ushr-int/lit8 v2, v2, 0x1

    or-int/2addr v2, v4

    ushr-int/lit8 v4, v2, 0x8

    xor-int/2addr v4, v3

    and-int/2addr v4, v8

    xor-int/2addr v3, v4

    shl-int/2addr v4, v9

    xor-int/2addr v2, v4

    ushr-int/lit8 v4, v2, 0x2

    xor-int/2addr v4, v3

    and-int/2addr v4, v7

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v4, 0x2

    xor-int/2addr v2, v4

    ushr-int/lit8 v4, v3, 0x10

    xor-int/2addr v4, v2

    and-int/2addr v4, v6

    xor-int/2addr v2, v4

    shl-int/lit8 v4, v4, 0x10

    xor-int/2addr v3, v4

    ushr-int/lit8 v4, v3, 0x4

    xor-int/2addr v4, v2

    and-int/2addr v4, v5

    xor-int/2addr v2, v4

    shl-int/lit8 v4, v4, 0x4

    xor-int/2addr v3, v4

    .line 405
    invoke-static {v3, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    add-int/lit8 v1, v1, 0x4

    .line 406
    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    return-void
.end method

.method protected blacklist generateWorkingKey(Z[B)[I
    .registers 15

    const/16 p0, 0x20

    .line 237
    new-array v0, p0, [I

    const/16 v1, 0x38

    .line 238
    new-array v2, v1, [Z

    .line 239
    new-array v3, v1, [Z

    const/4 v4, 0x0

    move v5, v4

    :goto_c
    const/4 v6, 0x1

    if-ge v5, v1, :cond_27

    .line 243
    sget-object v7, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->pc1:[B

    aget-byte v7, v7, v5

    ushr-int/lit8 v8, v7, 0x3

    .line 245
    aget-byte v8, p2, v8

    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->bytebit:[S

    and-int/lit8 v7, v7, 0x7

    aget-short v7, v9, v7

    and-int/2addr v7, v8

    if-eqz v7, :cond_21

    goto :goto_22

    :cond_21
    move v6, v4

    :goto_22
    aput-boolean v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_27
    move p2, v4

    :goto_28
    const/16 v5, 0x10

    if-ge p2, v5, :cond_98

    if-eqz p1, :cond_31

    shl-int/lit8 v5, p2, 0x1

    goto :goto_34

    :cond_31
    rsub-int/lit8 v5, p2, 0xf

    shl-int/2addr v5, v6

    :goto_34
    add-int/lit8 v7, v5, 0x1

    .line 262
    aput v4, v0, v7

    aput v4, v0, v5

    move v8, v4

    :goto_3b
    const/16 v9, 0x1c

    if-ge v8, v9, :cond_54

    .line 266
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->totrot:[B

    aget-byte v10, v10, p2

    add-int/2addr v10, v8

    if-ge v10, v9, :cond_4b

    .line 269
    aget-boolean v9, v2, v10

    aput-boolean v9, v3, v8

    goto :goto_51

    :cond_4b
    add-int/lit8 v10, v10, -0x1c

    .line 273
    aget-boolean v9, v2, v10

    aput-boolean v9, v3, v8

    :goto_51
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    :cond_54
    :goto_54
    if-ge v9, v1, :cond_6b

    .line 279
    sget-object v8, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->totrot:[B

    aget-byte v8, v8, p2

    add-int/2addr v8, v9

    if-ge v8, v1, :cond_62

    .line 282
    aget-boolean v8, v2, v8

    aput-boolean v8, v3, v9

    goto :goto_68

    :cond_62
    add-int/lit8 v8, v8, -0x1c

    .line 286
    aget-boolean v8, v2, v8

    aput-boolean v8, v3, v9

    :goto_68
    add-int/lit8 v9, v9, 0x1

    goto :goto_54

    :cond_6b
    move v8, v4

    :goto_6c
    const/16 v9, 0x18

    if-ge v8, v9, :cond_95

    .line 292
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->pc2:[B

    aget-byte v10, v9, v8

    aget-boolean v10, v3, v10

    if-eqz v10, :cond_81

    .line 294
    aget v10, v0, v5

    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->bigbyte:[I

    aget v11, v11, v8

    or-int/2addr v10, v11

    aput v10, v0, v5

    :cond_81
    add-int/lit8 v10, v8, 0x18

    .line 297
    aget-byte v9, v9, v10

    aget-boolean v9, v3, v9

    if-eqz v9, :cond_92

    .line 299
    aget v9, v0, v7

    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->bigbyte:[I

    aget v10, v10, v8

    or-int/2addr v9, v10

    aput v9, v0, v7

    :cond_92
    add-int/lit8 v8, v8, 0x1

    goto :goto_6c

    :cond_95
    add-int/lit8 p2, p2, 0x1

    goto :goto_28

    :cond_98
    :goto_98
    if-eq v4, p0, :cond_cd

    .line 311
    aget p1, v0, v4

    add-int/lit8 p2, v4, 0x1

    .line 312
    aget v1, v0, p2

    const/high16 v2, 0xfc0000

    and-int v3, p1, v2

    shl-int/lit8 v3, v3, 0x6

    and-int/lit16 v6, p1, 0xfc0

    shl-int/lit8 v6, v6, 0xa

    or-int/2addr v3, v6

    and-int/2addr v2, v1

    ushr-int/lit8 v2, v2, 0xa

    or-int/2addr v2, v3

    and-int/lit16 v3, v1, 0xfc0

    ushr-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    .line 314
    aput v2, v0, v4

    const v2, 0x3f000

    and-int v3, p1, v2

    shl-int/lit8 v3, v3, 0xc

    and-int/lit8 p1, p1, 0x3f

    shl-int/2addr p1, v5

    or-int/2addr p1, v3

    and-int/2addr v2, v1

    ushr-int/lit8 v2, v2, 0x4

    or-int/2addr p1, v2

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr p1, v1

    .line 317
    aput p1, v0, p2

    add-int/lit8 v4, v4, 0x2

    goto :goto_98

    :cond_cd
    return-object v0
.end method
