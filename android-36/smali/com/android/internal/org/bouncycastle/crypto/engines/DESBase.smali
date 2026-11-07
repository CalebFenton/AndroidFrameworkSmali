.class Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;
.super Ljava/lang/Object;
.source "DESBase.java"


# static fields
.field protected static final blacklist BLOCK_SIZE:I = 0x8

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
    .registers 2

    .line 33
    const/16 v0, 0x8

    new-array v0, v0, [S

    fill-array-data v0, :array_68

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->bytebit:[S

    .line 38
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_74

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->bigbyte:[I

    .line 52
    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_a8

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->pc1:[B

    .line 60
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_c8

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->totrot:[B

    .line 66
    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_d4

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->pc2:[B

    .line 74
    const/16 v0, 0x40

    new-array v1, v0, [I

    fill-array-data v1, :array_f0

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP1:[I

    .line 93
    new-array v1, v0, [I

    fill-array-data v1, :array_174

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP2:[I

    .line 112
    new-array v1, v0, [I

    fill-array-data v1, :array_1f8

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP3:[I

    .line 131
    new-array v1, v0, [I

    fill-array-data v1, :array_27c

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP4:[I

    .line 150
    new-array v1, v0, [I

    fill-array-data v1, :array_300

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP5:[I

    .line 169
    new-array v1, v0, [I

    fill-array-data v1, :array_384

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP6:[I

    .line 188
    new-array v1, v0, [I

    fill-array-data v1, :array_408

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP7:[I

    .line 207
    new-array v0, v0, [I

    fill-array-data v0, :array_48c

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP8:[I

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

    .line 18
    return-void
.end method


# virtual methods
.method protected blacklist desFunc([I[BI[BI)V
    .registers 21
    .param p1, "wKey"    # [I
    .param p2, "in"    # [B
    .param p3, "inOff"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .line 336
    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-static/range {p2 .. p3}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    .line 337
    .local v2, "left":I
    add-int/lit8 v3, p3, 0x4

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v3

    .line 339
    .local v3, "right":I
    ushr-int/lit8 v5, v2, 0x4

    xor-int/2addr v5, v3

    const v6, 0xf0f0f0f

    and-int/2addr v5, v6

    .line 340
    .local v5, "work":I
    xor-int/2addr v3, v5

    .line 341
    shl-int/lit8 v7, v5, 0x4

    xor-int/2addr v2, v7

    .line 342
    ushr-int/lit8 v7, v2, 0x10

    xor-int/2addr v7, v3

    const v8, 0xffff

    and-int v5, v7, v8

    .line 343
    xor-int/2addr v3, v5

    .line 344
    shl-int/lit8 v7, v5, 0x10

    xor-int/2addr v2, v7

    .line 345
    ushr-int/lit8 v7, v3, 0x2

    xor-int/2addr v7, v2

    const v9, 0x33333333

    and-int v5, v7, v9

    .line 346
    xor-int/2addr v2, v5

    .line 347
    shl-int/lit8 v7, v5, 0x2

    xor-int/2addr v3, v7

    .line 348
    ushr-int/lit8 v7, v3, 0x8

    xor-int/2addr v7, v2

    const v10, 0xff00ff

    and-int v5, v7, v10

    .line 349
    xor-int/2addr v2, v5

    .line 350
    shl-int/lit8 v7, v5, 0x8

    xor-int/2addr v3, v7

    .line 351
    shl-int/lit8 v7, v3, 0x1

    ushr-int/lit8 v11, v3, 0x1f

    or-int v3, v7, v11

    .line 352
    xor-int v7, v2, v3

    const v11, -0x55555556

    and-int v5, v7, v11

    .line 353
    xor-int/2addr v2, v5

    .line 354
    xor-int/2addr v3, v5

    .line 355
    shl-int/lit8 v7, v2, 0x1

    ushr-int/lit8 v12, v2, 0x1f

    or-int v2, v7, v12

    .line 357
    const/4 v7, 0x0

    .local v7, "round":I
    :goto_55
    const/16 v12, 0x8

    if-ge v7, v12, :cond_10f

    .line 361
    shl-int/lit8 v12, v3, 0x1c

    ushr-int/lit8 v13, v3, 0x4

    or-int v5, v12, v13

    .line 362
    mul-int/lit8 v12, v7, 0x4

    add-int/lit8 v12, v12, 0x0

    aget v12, p1, v12

    xor-int/2addr v5, v12

    .line 363
    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP7:[I

    and-int/lit8 v13, v5, 0x3f

    aget v12, v12, v13

    .line 364
    .local v12, "fval":I
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP5:[I

    ushr-int/lit8 v14, v5, 0x8

    and-int/lit8 v14, v14, 0x3f

    aget v13, v13, v14

    or-int/2addr v12, v13

    .line 365
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP3:[I

    ushr-int/lit8 v14, v5, 0x10

    and-int/lit8 v14, v14, 0x3f

    aget v13, v13, v14

    or-int/2addr v12, v13

    .line 366
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP1:[I

    ushr-int/lit8 v14, v5, 0x18

    and-int/lit8 v14, v14, 0x3f

    aget v13, v13, v14

    or-int/2addr v12, v13

    .line 367
    mul-int/lit8 v13, v7, 0x4

    add-int/lit8 v13, v13, 0x1

    aget v13, p1, v13

    xor-int v5, v3, v13

    .line 368
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP8:[I

    and-int/lit8 v14, v5, 0x3f

    aget v13, v13, v14

    or-int/2addr v12, v13

    .line 369
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP6:[I

    ushr-int/lit8 v14, v5, 0x8

    and-int/lit8 v14, v14, 0x3f

    aget v13, v13, v14

    or-int/2addr v12, v13

    .line 370
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP4:[I

    ushr-int/lit8 v14, v5, 0x10

    and-int/lit8 v14, v14, 0x3f

    aget v13, v13, v14

    or-int/2addr v12, v13

    .line 371
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP2:[I

    ushr-int/lit8 v14, v5, 0x18

    and-int/lit8 v14, v14, 0x3f

    aget v13, v13, v14

    or-int/2addr v12, v13

    .line 372
    xor-int/2addr v2, v12

    .line 373
    shl-int/lit8 v13, v2, 0x1c

    ushr-int/lit8 v14, v2, 0x4

    or-int v5, v13, v14

    .line 374
    mul-int/lit8 v13, v7, 0x4

    add-int/lit8 v13, v13, 0x2

    aget v13, p1, v13

    xor-int/2addr v5, v13

    .line 375
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP7:[I

    and-int/lit8 v14, v5, 0x3f

    aget v12, v13, v14

    .line 376
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP5:[I

    ushr-int/lit8 v14, v5, 0x8

    and-int/lit8 v14, v14, 0x3f

    aget v13, v13, v14

    or-int/2addr v12, v13

    .line 377
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP3:[I

    ushr-int/lit8 v14, v5, 0x10

    and-int/lit8 v14, v14, 0x3f

    aget v13, v13, v14

    or-int/2addr v12, v13

    .line 378
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP1:[I

    ushr-int/lit8 v14, v5, 0x18

    and-int/lit8 v14, v14, 0x3f

    aget v13, v13, v14

    or-int/2addr v12, v13

    .line 379
    mul-int/lit8 v13, v7, 0x4

    add-int/lit8 v13, v13, 0x3

    aget v13, p1, v13

    xor-int v5, v2, v13

    .line 380
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP8:[I

    and-int/lit8 v14, v5, 0x3f

    aget v13, v13, v14

    or-int/2addr v12, v13

    .line 381
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP6:[I

    ushr-int/lit8 v14, v5, 0x8

    and-int/lit8 v14, v14, 0x3f

    aget v13, v13, v14

    or-int/2addr v12, v13

    .line 382
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP4:[I

    ushr-int/lit8 v14, v5, 0x10

    and-int/lit8 v14, v14, 0x3f

    aget v13, v13, v14

    or-int/2addr v12, v13

    .line 383
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->SP2:[I

    ushr-int/lit8 v14, v5, 0x18

    and-int/lit8 v14, v14, 0x3f

    aget v13, v13, v14

    or-int/2addr v12, v13

    .line 384
    xor-int/2addr v3, v12

    .line 357
    .end local v12    # "fval":I
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_55

    .line 387
    .end local v7    # "round":I
    :cond_10f
    shl-int/lit8 v7, v3, 0x1f

    ushr-int/lit8 v12, v3, 0x1

    or-int v3, v7, v12

    .line 388
    xor-int v7, v2, v3

    and-int v5, v7, v11

    .line 389
    xor-int/2addr v2, v5

    .line 390
    xor-int/2addr v3, v5

    .line 391
    shl-int/lit8 v7, v2, 0x1f

    ushr-int/lit8 v11, v2, 0x1

    or-int v2, v7, v11

    .line 392
    ushr-int/lit8 v7, v2, 0x8

    xor-int/2addr v7, v3

    and-int v5, v7, v10

    .line 393
    xor-int/2addr v3, v5

    .line 394
    shl-int/lit8 v7, v5, 0x8

    xor-int/2addr v2, v7

    .line 395
    ushr-int/lit8 v7, v2, 0x2

    xor-int/2addr v7, v3

    and-int v5, v7, v9

    .line 396
    xor-int/2addr v3, v5

    .line 397
    shl-int/lit8 v7, v5, 0x2

    xor-int/2addr v2, v7

    .line 398
    ushr-int/lit8 v7, v3, 0x10

    xor-int/2addr v7, v2

    and-int v5, v7, v8

    .line 399
    xor-int/2addr v2, v5

    .line 400
    shl-int/lit8 v7, v5, 0x10

    xor-int/2addr v3, v7

    .line 401
    ushr-int/lit8 v7, v3, 0x4

    xor-int/2addr v7, v2

    and-int v5, v7, v6

    .line 402
    xor-int/2addr v2, v5

    .line 403
    shl-int/lit8 v6, v5, 0x4

    xor-int/2addr v3, v6

    .line 405
    invoke-static {v3, v0, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 406
    add-int/lit8 v6, v1, 0x4

    invoke-static {v2, v0, v6}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 407
    return-void
.end method

.method protected blacklist generateWorkingKey(Z[B)[I
    .registers 16
    .param p1, "encrypting"    # Z
    .param p2, "key"    # [B

    .line 237
    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 238
    .local v1, "newKey":[I
    const/16 v2, 0x38

    new-array v3, v2, [Z

    .line 239
    .local v3, "pc1m":[Z
    new-array v4, v2, [Z

    .line 241
    .local v4, "pcr":[Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_b
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v5, v2, :cond_26

    .line 243
    sget-object v8, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->pc1:[B

    aget-byte v8, v8, v5

    .line 245
    .local v8, "l":I
    ushr-int/lit8 v9, v8, 0x3

    aget-byte v9, p2, v9

    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->bytebit:[S

    and-int/lit8 v11, v8, 0x7

    aget-short v10, v10, v11

    and-int/2addr v9, v10

    if-eqz v9, :cond_21

    move v6, v7

    :cond_21
    aput-boolean v6, v3, v5

    .line 241
    .end local v8    # "l":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 248
    .end local v5    # "j":I
    :cond_26
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_27
    const/16 v8, 0x10

    if-ge v5, v8, :cond_9b

    .line 252
    if-eqz p1, :cond_30

    .line 254
    shl-int/lit8 v8, v5, 0x1

    .local v8, "m":I
    goto :goto_33

    .line 258
    .end local v8    # "m":I
    :cond_30
    rsub-int/lit8 v8, v5, 0xf

    shl-int/2addr v8, v7

    .line 261
    .restart local v8    # "m":I
    :goto_33
    add-int/lit8 v9, v8, 0x1

    .line 262
    .local v9, "n":I
    aput v6, v1, v9

    aput v6, v1, v8

    .line 264
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3a
    const/16 v11, 0x1c

    if-ge v10, v11, :cond_53

    .line 266
    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->totrot:[B

    aget-byte v12, v12, v5

    add-int/2addr v12, v10

    .line 267
    .local v12, "l":I
    if-ge v12, v11, :cond_4a

    .line 269
    aget-boolean v11, v3, v12

    aput-boolean v11, v4, v10

    goto :goto_50

    .line 273
    :cond_4a
    add-int/lit8 v11, v12, -0x1c

    aget-boolean v11, v3, v11

    aput-boolean v11, v4, v10

    .line 264
    :goto_50
    add-int/lit8 v10, v10, 0x1

    goto :goto_3a

    .line 277
    .end local v10    # "j":I
    .end local v12    # "l":I
    :cond_53
    const/16 v10, 0x1c

    .restart local v10    # "j":I
    :goto_55
    if-ge v10, v2, :cond_6c

    .line 279
    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->totrot:[B

    aget-byte v11, v11, v5

    add-int/2addr v11, v10

    .line 280
    .local v11, "l":I
    if-ge v11, v2, :cond_63

    .line 282
    aget-boolean v12, v3, v11

    aput-boolean v12, v4, v10

    goto :goto_69

    .line 286
    :cond_63
    add-int/lit8 v12, v11, -0x1c

    aget-boolean v12, v3, v12

    aput-boolean v12, v4, v10

    .line 277
    :goto_69
    add-int/lit8 v10, v10, 0x1

    goto :goto_55

    .line 290
    .end local v10    # "j":I
    .end local v11    # "l":I
    :cond_6c
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_6d
    const/16 v11, 0x18

    if-ge v10, v11, :cond_98

    .line 292
    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->pc2:[B

    aget-byte v11, v11, v10

    aget-boolean v11, v4, v11

    if-eqz v11, :cond_82

    .line 294
    aget v11, v1, v8

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->bigbyte:[I

    aget v12, v12, v10

    or-int/2addr v11, v12

    aput v11, v1, v8

    .line 297
    :cond_82
    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->pc2:[B

    add-int/lit8 v12, v10, 0x18

    aget-byte v11, v11, v12

    aget-boolean v11, v4, v11

    if-eqz v11, :cond_95

    .line 299
    aget v11, v1, v9

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;->bigbyte:[I

    aget v12, v12, v10

    or-int/2addr v11, v12

    aput v11, v1, v9

    .line 290
    :cond_95
    add-int/lit8 v10, v10, 0x1

    goto :goto_6d

    .line 248
    .end local v8    # "m":I
    .end local v9    # "n":I
    .end local v10    # "j":I
    :cond_98
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 307
    .end local v5    # "i":I
    :cond_9b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9c
    if-eq v2, v0, :cond_d3

    .line 311
    aget v5, v1, v2

    .line 312
    .local v5, "i1":I
    add-int/lit8 v6, v2, 0x1

    aget v6, v1, v6

    .line 314
    .local v6, "i2":I
    const/high16 v7, 0xfc0000

    and-int v9, v5, v7

    shl-int/lit8 v9, v9, 0x6

    and-int/lit16 v10, v5, 0xfc0

    shl-int/lit8 v10, v10, 0xa

    or-int/2addr v9, v10

    and-int/2addr v7, v6

    ushr-int/lit8 v7, v7, 0xa

    or-int/2addr v7, v9

    and-int/lit16 v9, v6, 0xfc0

    ushr-int/lit8 v9, v9, 0x6

    or-int/2addr v7, v9

    aput v7, v1, v2

    .line 317
    add-int/lit8 v7, v2, 0x1

    const v9, 0x3f000

    and-int v10, v5, v9

    shl-int/lit8 v10, v10, 0xc

    and-int/lit8 v11, v5, 0x3f

    shl-int/2addr v11, v8

    or-int/2addr v10, v11

    and-int/2addr v9, v6

    ushr-int/lit8 v9, v9, 0x4

    or-int/2addr v9, v10

    and-int/lit8 v10, v6, 0x3f

    or-int/2addr v9, v10

    aput v9, v1, v7

    .line 307
    .end local v5    # "i1":I
    .end local v6    # "i2":I
    add-int/lit8 v2, v2, 0x2

    goto :goto_9c

    .line 321
    .end local v2    # "i":I
    :cond_d3
    return-object v1
.end method
