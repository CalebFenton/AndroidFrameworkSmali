.class public Ljava/lang/FloatingDecimal;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/FloatingDecimal$1;,
        Ljava/lang/FloatingDecimal$2;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final TL_INSTANCE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/FloatingDecimal;",
            ">;"
        }
    .end annotation
.end field

.field private static b5p:[Lsun/misc/FDBigInt; = null

.field private static final big10pow:[D

.field static final bigDecimalExponent:I = 0x144

.field static final expBias:I = 0x3ff

.field static final expMask:J = 0x7ff0000000000000L

.field static final expOne:J = 0x3ff0000000000000L

.field static final expShift:I = 0x34

.field static final fractHOB:J = 0x10000000000000L

.field static final fractMask:J = 0xfffffffffffffL

.field private static hexFloatPattern:Ljava/util/regex/Pattern; = null

.field static final highbit:J = -0x8000000000000000L

.field static final highbyte:J = -0x100000000000000L

.field private static final infinity:[C

.field static final intDecimalDigits:I = 0x9

.field private static final long5pow:[J

.field static final lowbytes:J = 0xffffffffffffffL

.field static final maxDecimalDigits:I = 0xf

.field static final maxDecimalExponent:I = 0x134

.field static final maxSmallBinExp:I = 0x3e

.field private static final maxSmallTen:I

.field static final minDecimalExponent:I = -0x144

.field static final minSmallBinExp:I = -0x15

.field private static final n5bits:[I

.field private static final notANumber:[C

.field private static perThreadBuffer:Ljava/lang/ThreadLocal; = null

.field static final signMask:J = -0x8000000000000000L

.field static final singleExpBias:I = 0x7f

.field static final singleExpMask:I = 0x7f800000

.field static final singleExpShift:I = 0x17

.field static final singleFractHOB:I = 0x800000

.field static final singleFractMask:I = 0x7fffff

.field static final singleMaxDecimalDigits:I = 0x7

.field static final singleMaxDecimalExponent:I = 0x26

.field private static final singleMaxSmallTen:I

.field static final singleMinDecimalExponent:I = -0x2d

.field static final singleSignMask:I = -0x80000000

.field private static final singleSmall10pow:[F

.field private static final small10pow:[D

.field private static final small5pow:[I

.field private static final tiny10pow:[D

.field private static final zero:[C


# instance fields
.field bigIntExp:I

.field bigIntNBits:I

.field decExponent:I

.field digits:[C

.field fromHex:Z

.field isExceptional:Z

.field isNegative:Z

.field mustSetRoundDir:Z

.field nDigits:I

.field roundDir:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x1b

    #@2
    const/16 v2, 0x8

    #@4
    const/4 v1, 0x5

    #@5
    const-class v0, Ljava/lang/FloatingDecimal;

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    const/4 v0, 0x0

    #@e
    :goto_0
    sput-boolean v0, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

    #@10
    .line 395
    new-instance v0, Ljava/lang/FloatingDecimal$1;

    #@12
    invoke-direct {v0}, Ljava/lang/FloatingDecimal$1;-><init>()V

    #@15
    sput-object v0, Ljava/lang/FloatingDecimal;->TL_INSTANCE:Ljava/lang/ThreadLocal;

    #@17
    .line 994
    new-instance v0, Ljava/lang/FloatingDecimal$2;

    #@19
    invoke-direct {v0}, Ljava/lang/FloatingDecimal$2;-><init>()V

    #@1c
    sput-object v0, Ljava/lang/FloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    #@1e
    .line 1821
    const/16 v0, 0x17

    #@20
    new-array v0, v0, [D

    #@22
    fill-array-data v0, :array_0

    #@25
    sput-object v0, Ljava/lang/FloatingDecimal;->small10pow:[D

    #@27
    .line 1830
    const/16 v0, 0xb

    #@29
    new-array v0, v0, [F

    #@2b
    fill-array-data v0, :array_1

    #@2e
    sput-object v0, Ljava/lang/FloatingDecimal;->singleSmall10pow:[F

    #@30
    .line 1836
    new-array v0, v1, [D

    #@32
    fill-array-data v0, :array_2

    #@35
    sput-object v0, Ljava/lang/FloatingDecimal;->big10pow:[D

    #@37
    .line 1838
    new-array v0, v1, [D

    #@39
    fill-array-data v0, :array_3

    #@3c
    sput-object v0, Ljava/lang/FloatingDecimal;->tiny10pow:[D

    #@3e
    .line 1841
    sget-object v0, Ljava/lang/FloatingDecimal;->small10pow:[D

    #@40
    array-length v0, v0

    #@41
    add-int/lit8 v0, v0, -0x1

    #@43
    sput v0, Ljava/lang/FloatingDecimal;->maxSmallTen:I

    #@45
    .line 1842
    sget-object v0, Ljava/lang/FloatingDecimal;->singleSmall10pow:[F

    #@47
    array-length v0, v0

    #@48
    add-int/lit8 v0, v0, -0x1

    #@4a
    sput v0, Ljava/lang/FloatingDecimal;->singleMaxSmallTen:I

    #@4c
    .line 1844
    const/16 v0, 0xe

    #@4e
    new-array v0, v0, [I

    #@50
    fill-array-data v0, :array_4

    #@53
    sput-object v0, Ljava/lang/FloatingDecimal;->small5pow:[I

    #@55
    .line 1862
    new-array v0, v3, [J

    #@57
    fill-array-data v0, :array_5

    #@5a
    sput-object v0, Ljava/lang/FloatingDecimal;->long5pow:[J

    #@5c
    .line 1893
    new-array v0, v3, [I

    #@5e
    fill-array-data v0, :array_6

    #@61
    sput-object v0, Ljava/lang/FloatingDecimal;->n5bits:[I

    #@63
    .line 1923
    new-array v0, v2, [C

    #@65
    fill-array-data v0, :array_7

    #@68
    sput-object v0, Ljava/lang/FloatingDecimal;->infinity:[C

    #@6a
    .line 1924
    const/4 v0, 0x3

    #@6b
    new-array v0, v0, [C

    #@6d
    fill-array-data v0, :array_8

    #@70
    sput-object v0, Ljava/lang/FloatingDecimal;->notANumber:[C

    #@72
    .line 1925
    new-array v0, v2, [C

    #@74
    fill-array-data v0, :array_9

    #@77
    sput-object v0, Ljava/lang/FloatingDecimal;->zero:[C

    #@79
    .line 1932
    const/4 v0, 0x0

    #@7a
    sput-object v0, Ljava/lang/FloatingDecimal;->hexFloatPattern:Ljava/util/regex/Pattern;

    #@7c
    .line 34
    return-void

    #@7d
    :cond_0
    const/4 v0, 0x1

    #@7e
    goto :goto_0

    #@7f
    .line 1821
    nop

    #@80
    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
        0x4480f0cf064dd592L    # 1.0E22
    .end array-data

    #@e0
    .line 1830
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x41200000    # 10.0f
        0x42c80000    # 100.0f
        0x447a0000    # 1000.0f
        0x461c4000    # 10000.0f
        0x47c35000    # 100000.0f
        0x49742400    # 1000000.0f
        0x4b189680    # 1.0E7f
        0x4cbebc20    # 1.0E8f
        0x4e6e6b28    # 1.0E9f
        0x501502f9    # 1.0E10f
    .end array-data

    #@fa
    .line 1836
    :array_2
    .array-data 8
        0x4341c37937e08000L    # 1.0E16
        0x4693b8b5b5056e17L    # 1.0E32
        0x4d384f03e93ff9f5L    # 1.0E64
        0x5a827748f9301d32L    # 1.0E128
        0x75154fdd7f73bf3cL    # 1.0E256
    .end array-data

    #@112
    .line 1838
    :array_3
    .array-data 8
        0x3c9cd2b297d889bcL    # 1.0E-16
        0x3949f623d5a8a733L    # 1.0E-32
        0x32a50ffd44f4a73dL    # 1.0E-64
        0x255bba08cf8c979dL    # 1.0E-128
        0xac8062864ac6f43L    # 1.0E-256
    .end array-data

    #@12a
    .line 1844
    :array_4
    .array-data 4
        0x1
        0x5
        0x19
        0x7d
        0x271
        0xc35
        0x3d09
        0x1312d
        0x5f5e1
        0x1dcd65
        0x9502f9
        0x2e90edd
        0xe8d4a51
        0x48c27395
    .end array-data

    #@14a
    .line 1862
    :array_5
    .array-data 8
        0x1
        0x5
        0x19
        0x7d
        0x271
        0xc35
        0x3d09
        0x1312d
        0x5f5e1
        0x1dcd65
        0x9502f9
        0x2e90edd
        0xe8d4a51
        0x48c27395
        0x16bcc41e9L
        0x71afd498dL
        0x2386f26fc1L
        0xb1a2bc2ec5L
        0x3782dace9d9L
        0x1158e460913dL
        0x56bc75e2d631L
        0x1b1ae4d6e2ef5L
        0x878678326eac9L
        0x2a5a058fc295edL
        0xd3c21bcecceda1L
        0x422ca8b0a00a425L    # 9.6411383183208E-289
        0x14adf4b7320334b9L
    .end array-data

    #@1ba
    .line 1893
    :array_6
    .array-data 4
        0x0
        0x3
        0x5
        0x7
        0xa
        0xc
        0xe
        0x11
        0x13
        0x15
        0x18
        0x1a
        0x1c
        0x1f
        0x21
        0x23
        0x26
        0x28
        0x2a
        0x2d
        0x2f
        0x31
        0x34
        0x36
        0x38
        0x3b
        0x3d
    .end array-data

    #@1f4
    .line 1923
    :array_7
    .array-data 2
        0x49s
        0x6es
        0x66s
        0x69s
        0x6es
        0x69s
        0x74s
        0x79s
    .end array-data

    #@200
    .line 1924
    :array_8
    .array-data 2
        0x4es
        0x61s
        0x4es
    .end array-data

    #@207
    .line 1925
    nop

    #@208
    :array_9
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 42
    iput-boolean v0, p0, Ljava/lang/FloatingDecimal;->mustSetRoundDir:Z

    #@6
    .line 43
    iput-boolean v0, p0, Ljava/lang/FloatingDecimal;->fromHex:Z

    #@8
    .line 44
    iput v0, p0, Ljava/lang/FloatingDecimal;->roundDir:I

    #@a
    .line 393
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/FloatingDecimal;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/FloatingDecimal;-><init>()V

    #@3
    return-void
.end method

.method private static declared-synchronized big5pow(I)Lsun/misc/FDBigInt;
    .locals 10
    .param p0, "p"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const-class v6, Ljava/lang/FloatingDecimal;

    #@3
    monitor-enter v6

    #@4
    .line 120
    :try_start_0
    sget-boolean v7, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

    #@6
    if-nez v7, :cond_1

    #@8
    if-ltz p0, :cond_0

    #@a
    const/4 v5, 0x1

    #@b
    :cond_0
    if-nez v5, :cond_1

    #@d
    new-instance v5, Ljava/lang/AssertionError;

    #@f
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v7

    #@13
    invoke-direct {v5, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@16
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :catchall_0
    move-exception v5

    #@18
    monitor-exit v6

    #@19
    throw v5

    #@1a
    .line 121
    :cond_1
    :try_start_1
    sget-object v5, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@1c
    if-nez v5, :cond_3

    #@1e
    .line 122
    add-int/lit8 v5, p0, 0x1

    #@20
    new-array v5, v5, [Lsun/misc/FDBigInt;

    #@22
    sput-object v5, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@24
    .line 128
    :cond_2
    :goto_0
    sget-object v5, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@26
    aget-object v5, v5, p0

    #@28
    if-eqz v5, :cond_4

    #@2a
    .line 129
    sget-object v5, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@2c
    aget-object v5, v5, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    monitor-exit v6

    #@2f
    return-object v5

    #@30
    .line 123
    :cond_3
    :try_start_2
    sget-object v5, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@32
    array-length v5, v5

    #@33
    if-gt v5, p0, :cond_2

    #@35
    .line 124
    add-int/lit8 v5, p0, 0x1

    #@37
    new-array v4, v5, [Lsun/misc/FDBigInt;

    #@39
    .line 125
    .local v4, "t":[Lsun/misc/FDBigInt;
    sget-object v5, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@3b
    sget-object v7, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@3d
    array-length v7, v7

    #@3e
    const/4 v8, 0x0

    #@3f
    const/4 v9, 0x0

    #@40
    invoke-static {v5, v8, v4, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@43
    .line 126
    sput-object v4, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@45
    goto :goto_0

    #@46
    .line 130
    .end local v4    # "t":[Lsun/misc/FDBigInt;
    :cond_4
    sget-object v5, Ljava/lang/FloatingDecimal;->small5pow:[I

    #@48
    array-length v5, v5

    #@49
    if-ge p0, v5, :cond_5

    #@4b
    .line 131
    new-instance v5, Lsun/misc/FDBigInt;

    #@4d
    sget-object v7, Ljava/lang/FloatingDecimal;->small5pow:[I

    #@4f
    aget v7, v7, p0

    #@51
    invoke-direct {v5, v7}, Lsun/misc/FDBigInt;-><init>(I)V

    #@54
    sget-object v7, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@56
    aput-object v5, v7, p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@58
    monitor-exit v6

    #@59
    return-object v5

    #@5a
    .line 132
    :cond_5
    :try_start_3
    sget-object v5, Ljava/lang/FloatingDecimal;->long5pow:[J

    #@5c
    array-length v5, v5

    #@5d
    if-ge p0, v5, :cond_6

    #@5f
    .line 133
    new-instance v5, Lsun/misc/FDBigInt;

    #@61
    sget-object v7, Ljava/lang/FloatingDecimal;->long5pow:[J

    #@63
    aget-wide v8, v7, p0

    #@65
    invoke-direct {v5, v8, v9}, Lsun/misc/FDBigInt;-><init>(J)V

    #@68
    sget-object v7, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@6a
    aput-object v5, v7, p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6c
    monitor-exit v6

    #@6d
    return-object v5

    #@6e
    .line 142
    :cond_6
    shr-int/lit8 v2, p0, 0x1

    #@70
    .line 143
    .local v2, "q":I
    sub-int v3, p0, v2

    #@72
    .line 144
    .local v3, "r":I
    :try_start_4
    sget-object v5, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@74
    aget-object v0, v5, v2

    #@76
    .line 145
    .local v0, "bigq":Lsun/misc/FDBigInt;
    if-nez v0, :cond_7

    #@78
    .line 146
    invoke-static {v2}, Ljava/lang/FloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    #@7b
    move-result-object v0

    #@7c
    .line 147
    :cond_7
    sget-object v5, Ljava/lang/FloatingDecimal;->small5pow:[I

    #@7e
    array-length v5, v5

    #@7f
    if-ge v3, v5, :cond_8

    #@81
    .line 148
    sget-object v5, Ljava/lang/FloatingDecimal;->small5pow:[I

    #@83
    aget v5, v5, v3

    #@85
    invoke-virtual {v0, v5}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    #@88
    move-result-object v5

    #@89
    sget-object v7, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@8b
    aput-object v5, v7, p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@8d
    monitor-exit v6

    #@8e
    return-object v5

    #@8f
    .line 150
    :cond_8
    :try_start_5
    sget-object v5, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@91
    aget-object v1, v5, v3

    #@93
    .line 151
    .local v1, "bigr":Lsun/misc/FDBigInt;
    if-nez v1, :cond_9

    #@95
    .line 152
    invoke-static {v3}, Ljava/lang/FloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    #@98
    move-result-object v1

    #@99
    .line 153
    :cond_9
    invoke-virtual {v0, v1}, Lsun/misc/FDBigInt;->mult(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    #@9c
    move-result-object v5

    #@9d
    sget-object v7, Ljava/lang/FloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@9f
    aput-object v5, v7, p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@a1
    monitor-exit v6

    #@a2
    return-object v5
.end method

.method private static constructPow52(II)Lsun/misc/FDBigInt;
    .locals 2
    .param p0, "p5"    # I
    .param p1, "p2"    # I

    #@0
    .prologue
    .line 181
    new-instance v0, Lsun/misc/FDBigInt;

    #@2
    invoke-static {p0}, Ljava/lang/FloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lsun/misc/FDBigInt;-><init>(Lsun/misc/FDBigInt;)V

    #@9
    .line 182
    .local v0, "v":Lsun/misc/FDBigInt;
    if-eqz p1, :cond_0

    #@b
    .line 183
    invoke-virtual {v0, p1}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    #@e
    .line 185
    :cond_0
    return-object v0
.end method

.method private static countBits(J)I
    .locals 8
    .param p0, "v"    # J

    #@0
    .prologue
    const/16 v7, 0x8

    #@2
    const/4 v6, 0x1

    #@3
    const-wide/16 v4, 0x0

    #@5
    .line 92
    cmp-long v1, p0, v4

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v1, 0x0

    #@a
    return v1

    #@b
    .line 94
    :cond_0
    :goto_0
    const-wide/high16 v2, -0x100000000000000L

    #@d
    and-long/2addr v2, p0

    #@e
    cmp-long v1, v2, v4

    #@10
    if-nez v1, :cond_1

    #@12
    .line 95
    shl-long/2addr p0, v7

    #@13
    goto :goto_0

    #@14
    .line 97
    :cond_1
    :goto_1
    cmp-long v1, p0, v4

    #@16
    if-lez v1, :cond_2

    #@18
    .line 98
    shl-long/2addr p0, v6

    #@19
    goto :goto_1

    #@1a
    .line 101
    :cond_2
    const/4 v0, 0x0

    #@1b
    .line 102
    .local v0, "n":I
    :goto_2
    const-wide v2, 0xffffffffffffffL

    #@20
    and-long/2addr v2, p0

    #@21
    cmp-long v1, v2, v4

    #@23
    if-eqz v1, :cond_3

    #@25
    .line 103
    shl-long/2addr p0, v7

    #@26
    .line 104
    add-int/lit8 v0, v0, 0x8

    #@28
    goto :goto_2

    #@29
    .line 106
    :cond_3
    :goto_3
    cmp-long v1, p0, v4

    #@2b
    if-eqz v1, :cond_4

    #@2d
    .line 107
    shl-long/2addr p0, v6

    #@2e
    .line 108
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_3

    #@31
    .line 110
    :cond_4
    return v0
.end method

.method private developLongDigits(IJJ)V
    .locals 16
    .param p1, "decExponent"    # I
    .param p2, "lvalue"    # J
    .param p4, "insignificant"    # J

    #@0
    .prologue
    .line 302
    const/4 v6, 0x0

    #@1
    .local v6, "i":I
    :goto_0
    const-wide/16 v14, 0xa

    #@3
    cmp-long v14, p4, v14

    #@5
    if-ltz v14, :cond_0

    #@7
    .line 303
    const-wide/16 v14, 0xa

    #@9
    div-long p4, p4, v14

    #@b
    .line 302
    add-int/lit8 v6, v6, 0x1

    #@d
    goto :goto_0

    #@e
    .line 304
    :cond_0
    if-eqz v6, :cond_1

    #@10
    .line 305
    sget-object v14, Ljava/lang/FloatingDecimal;->long5pow:[J

    #@12
    aget-wide v14, v14, v6

    #@14
    shl-long v10, v14, v6

    #@16
    .line 306
    .local v10, "pow10":J
    rem-long v12, p2, v10

    #@18
    .line 307
    .local v12, "residue":J
    div-long p2, p2, v10

    #@1a
    .line 308
    add-int p1, p1, v6

    #@1c
    .line 309
    const/4 v14, 0x1

    #@1d
    shr-long v14, v10, v14

    #@1f
    cmp-long v14, v12, v14

    #@21
    if-ltz v14, :cond_1

    #@23
    .line 311
    const-wide/16 v14, 0x1

    #@25
    add-long p2, p2, v14

    #@27
    .line 314
    .end local v10    # "pow10":J
    .end local v12    # "residue":J
    :cond_1
    const-wide/32 v14, 0x7fffffff

    #@2a
    cmp-long v14, p2, v14

    #@2c
    if-gtz v14, :cond_6

    #@2e
    .line 315
    sget-boolean v14, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

    #@30
    if-nez v14, :cond_3

    #@32
    const-wide/16 v14, 0x0

    #@34
    cmp-long v14, p2, v14

    #@36
    if-lez v14, :cond_2

    #@38
    const/4 v14, 0x1

    #@39
    :goto_1
    if-nez v14, :cond_3

    #@3b
    new-instance v14, Ljava/lang/AssertionError;

    #@3d
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@40
    move-result-object v15

    #@41
    invoke-direct {v14, v15}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@44
    throw v14

    #@45
    :cond_2
    const/4 v14, 0x0

    #@46
    goto :goto_1

    #@47
    .line 318
    :cond_3
    move-wide/from16 v0, p2

    #@49
    long-to-int v7, v0

    #@4a
    .line 319
    .local v7, "ivalue":I
    const/16 v8, 0xa

    #@4c
    .line 320
    .local v8, "ndigits":I
    sget-object v14, Ljava/lang/FloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    #@4e
    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@51
    move-result-object v5

    #@52
    check-cast v5, [C

    #@54
    .line 321
    .local v5, "digits":[C
    const/16 v3, 0x9

    #@56
    .line 322
    .local v3, "digitno":I
    rem-int/lit8 v2, v7, 0xa

    #@58
    .line 323
    .local v2, "c":I
    div-int/lit8 v7, v7, 0xa

    #@5a
    .line 324
    :goto_2
    if-nez v2, :cond_4

    #@5c
    .line 325
    add-int/lit8 p1, p1, 0x1

    #@5e
    .line 326
    rem-int/lit8 v2, v7, 0xa

    #@60
    .line 327
    div-int/lit8 v7, v7, 0xa

    #@62
    goto :goto_2

    #@63
    .line 329
    .end local v3    # "digitno":I
    .local v4, "digitno":I
    :goto_3
    if-eqz v7, :cond_5

    #@65
    .line 330
    add-int/lit8 v3, v4, -0x1

    #@67
    .end local v4    # "digitno":I
    .restart local v3    # "digitno":I
    add-int/lit8 v14, v2, 0x30

    #@69
    int-to-char v14, v14

    #@6a
    aput-char v14, v5, v4

    #@6c
    .line 331
    add-int/lit8 p1, p1, 0x1

    #@6e
    .line 332
    rem-int/lit8 v2, v7, 0xa

    #@70
    .line 333
    div-int/lit8 v7, v7, 0xa

    #@72
    :cond_4
    move v4, v3

    #@73
    .end local v3    # "digitno":I
    .restart local v4    # "digitno":I
    goto :goto_3

    #@74
    .line 335
    :cond_5
    add-int/lit8 v14, v2, 0x30

    #@76
    int-to-char v14, v14

    #@77
    aput-char v14, v5, v4

    #@79
    move v3, v4

    #@7a
    .line 358
    .end local v4    # "digitno":I
    .end local v7    # "ivalue":I
    .restart local v3    # "digitno":I
    :goto_4
    sub-int/2addr v8, v3

    #@7b
    .line 359
    new-array v9, v8, [C

    #@7d
    .line 360
    .local v9, "result":[C
    const/4 v14, 0x0

    #@7e
    invoke-static {v5, v3, v9, v14, v8}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@81
    .line 361
    move-object/from16 v0, p0

    #@83
    iput-object v9, v0, Ljava/lang/FloatingDecimal;->digits:[C

    #@85
    .line 362
    add-int/lit8 v14, p1, 0x1

    #@87
    move-object/from16 v0, p0

    #@89
    iput v14, v0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@8b
    .line 363
    move-object/from16 v0, p0

    #@8d
    iput v8, v0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@8f
    .line 293
    return-void

    #@90
    .line 339
    .end local v2    # "c":I
    .end local v3    # "digitno":I
    .end local v5    # "digits":[C
    .end local v8    # "ndigits":I
    .end local v9    # "result":[C
    :cond_6
    const/16 v8, 0x14

    #@92
    .line 340
    .restart local v8    # "ndigits":I
    sget-object v14, Ljava/lang/FloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    #@94
    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@97
    move-result-object v5

    #@98
    check-cast v5, [C

    #@9a
    .line 341
    .restart local v5    # "digits":[C
    const/16 v3, 0x13

    #@9c
    .line 342
    .restart local v3    # "digitno":I
    const-wide/16 v14, 0xa

    #@9e
    rem-long v14, p2, v14

    #@a0
    long-to-int v2, v14

    #@a1
    .line 343
    .restart local v2    # "c":I
    const-wide/16 v14, 0xa

    #@a3
    div-long p2, p2, v14

    #@a5
    .line 344
    :goto_5
    if-nez v2, :cond_7

    #@a7
    .line 345
    add-int/lit8 p1, p1, 0x1

    #@a9
    .line 346
    const-wide/16 v14, 0xa

    #@ab
    rem-long v14, p2, v14

    #@ad
    long-to-int v2, v14

    #@ae
    .line 347
    const-wide/16 v14, 0xa

    #@b0
    div-long p2, p2, v14

    #@b2
    goto :goto_5

    #@b3
    .line 349
    .end local v3    # "digitno":I
    .restart local v4    # "digitno":I
    :goto_6
    const-wide/16 v14, 0x0

    #@b5
    cmp-long v14, p2, v14

    #@b7
    if-eqz v14, :cond_8

    #@b9
    .line 350
    add-int/lit8 v3, v4, -0x1

    #@bb
    .end local v4    # "digitno":I
    .restart local v3    # "digitno":I
    add-int/lit8 v14, v2, 0x30

    #@bd
    int-to-char v14, v14

    #@be
    aput-char v14, v5, v4

    #@c0
    .line 351
    add-int/lit8 p1, p1, 0x1

    #@c2
    .line 352
    const-wide/16 v14, 0xa

    #@c4
    rem-long v14, p2, v14

    #@c6
    long-to-int v2, v14

    #@c7
    .line 353
    const-wide/16 v14, 0xa

    #@c9
    div-long p2, p2, v14

    #@cb
    :cond_7
    move v4, v3

    #@cc
    .end local v3    # "digitno":I
    .restart local v4    # "digitno":I
    goto :goto_6

    #@cd
    .line 355
    :cond_8
    add-int/lit8 v14, v2, 0x30

    #@cf
    int-to-char v14, v14

    #@d0
    aput-char v14, v5, v4

    #@d2
    move v3, v4

    #@d3
    .end local v4    # "digitno":I
    .restart local v3    # "digitno":I
    goto :goto_4
.end method

.method private doubleToBigInt(D)Lsun/misc/FDBigInt;
    .locals 11
    .param p1, "dval"    # D

    #@0
    .prologue
    .line 200
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@3
    move-result-wide v6

    #@4
    const-wide v8, 0x7fffffffffffffffL

    #@9
    and-long v2, v6, v8

    #@b
    .line 201
    .local v2, "lbits":J
    const/16 v5, 0x34

    #@d
    ushr-long v6, v2, v5

    #@f
    long-to-int v0, v6

    #@10
    .line 202
    .local v0, "binexp":I
    const-wide v6, 0xfffffffffffffL

    #@15
    and-long/2addr v2, v6

    #@16
    .line 203
    if-lez v0, :cond_1

    #@18
    .line 204
    const-wide/high16 v6, 0x10000000000000L

    #@1a
    or-long/2addr v2, v6

    #@1b
    .line 213
    :cond_0
    add-int/lit16 v0, v0, -0x3ff

    #@1d
    .line 214
    invoke-static {v2, v3}, Ljava/lang/FloatingDecimal;->countBits(J)I

    #@20
    move-result v4

    #@21
    .line 219
    .local v4, "nbits":I
    rsub-int/lit8 v1, v4, 0x35

    #@23
    .line 220
    .local v1, "lowOrderZeros":I
    ushr-long/2addr v2, v1

    #@24
    .line 222
    add-int/lit8 v5, v0, 0x1

    #@26
    sub-int/2addr v5, v4

    #@27
    iput v5, p0, Ljava/lang/FloatingDecimal;->bigIntExp:I

    #@29
    .line 223
    iput v4, p0, Ljava/lang/FloatingDecimal;->bigIntNBits:I

    #@2b
    .line 224
    new-instance v5, Lsun/misc/FDBigInt;

    #@2d
    invoke-direct {v5, v2, v3}, Lsun/misc/FDBigInt;-><init>(J)V

    #@30
    return-object v5

    #@31
    .line 206
    .end local v1    # "lowOrderZeros":I
    .end local v4    # "nbits":I
    :cond_1
    sget-boolean v5, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

    #@33
    if-nez v5, :cond_3

    #@35
    const-wide/16 v6, 0x0

    #@37
    cmp-long v5, v2, v6

    #@39
    if-eqz v5, :cond_2

    #@3b
    const/4 v5, 0x1

    #@3c
    :goto_0
    if-nez v5, :cond_3

    #@3e
    new-instance v5, Ljava/lang/AssertionError;

    #@40
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@43
    move-result-object v6

    #@44
    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@47
    throw v5

    #@48
    :cond_2
    const/4 v5, 0x0

    #@49
    goto :goto_0

    #@4a
    .line 207
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@4c
    .line 208
    :goto_1
    const-wide/high16 v6, 0x10000000000000L

    #@4e
    and-long/2addr v6, v2

    #@4f
    const-wide/16 v8, 0x0

    #@51
    cmp-long v5, v6, v8

    #@53
    if-nez v5, :cond_0

    #@55
    .line 209
    const/4 v5, 0x1

    #@56
    shl-long/2addr v2, v5

    #@57
    .line 210
    add-int/lit8 v0, v0, -0x1

    #@59
    goto :goto_1
.end method

.method private dtoa(IJI)V
    .locals 50
    .param p1, "binExp"    # I
    .param p2, "fractBits"    # J
    .param p4, "nSignificantBits"    # I

    #@0
    .prologue
    .line 542
    invoke-static/range {p2 .. p3}, Ljava/lang/FloatingDecimal;->countBits(J)I

    #@3
    move-result v31

    #@4
    .line 543
    .local v31, "nFractBits":I
    sub-int v2, v31, p1

    #@6
    add-int/lit8 v2, v2, -0x1

    #@8
    const/4 v3, 0x0

    #@9
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    #@c
    move-result v34

    #@d
    .line 544
    .local v34, "nTinyBits":I
    const/16 v2, 0x3e

    #@f
    move/from16 v0, p1

    #@11
    if-gt v0, v2, :cond_2

    #@13
    const/16 v2, -0x15

    #@15
    move/from16 v0, p1

    #@17
    if-lt v0, v2, :cond_2

    #@19
    .line 548
    sget-object v2, Ljava/lang/FloatingDecimal;->long5pow:[J

    #@1b
    array-length v2, v2

    #@1c
    move/from16 v0, v34

    #@1e
    if-ge v0, v2, :cond_2

    #@20
    sget-object v2, Ljava/lang/FloatingDecimal;->n5bits:[I

    #@22
    aget v2, v2, v34

    #@24
    add-int v2, v2, v31

    #@26
    const/16 v3, 0x40

    #@28
    if-ge v2, v3, :cond_2

    #@2a
    .line 565
    if-nez v34, :cond_2

    #@2c
    .line 566
    move/from16 v0, p1

    #@2e
    move/from16 v1, p4

    #@30
    if-le v0, v1, :cond_0

    #@32
    .line 567
    sub-int v2, p1, p4

    #@34
    add-int/lit8 v2, v2, -0x1

    #@36
    const-wide/16 v4, 0x1

    #@38
    shl-long v6, v4, v2

    #@3a
    .line 571
    .local v6, "halfULP":J
    :goto_0
    const/16 v2, 0x34

    #@3c
    move/from16 v0, p1

    #@3e
    if-lt v0, v2, :cond_1

    #@40
    .line 572
    add-int/lit8 v2, p1, -0x34

    #@42
    shl-long p2, p2, v2

    #@44
    .line 576
    :goto_1
    const/4 v3, 0x0

    #@45
    move-object/from16 v2, p0

    #@47
    move-wide/from16 v4, p2

    #@49
    invoke-direct/range {v2 .. v7}, Ljava/lang/FloatingDecimal;->developLongDigits(IJJ)V

    #@4c
    .line 577
    return-void

    #@4d
    .line 569
    .end local v6    # "halfULP":J
    :cond_0
    const-wide/16 v6, 0x0

    #@4f
    .restart local v6    # "halfULP":J
    goto :goto_0

    #@50
    .line 574
    :cond_1
    rsub-int/lit8 v2, p1, 0x34

    #@52
    ushr-long p2, p2, v2

    #@54
    goto :goto_1

    #@55
    .line 629
    .end local v6    # "halfULP":J
    :cond_2
    const-wide v2, -0x10000000000001L

    #@5a
    and-long v2, v2, p2

    #@5c
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    #@5e
    or-long/2addr v2, v4

    #@5f
    .line 628
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@62
    move-result-wide v22

    #@63
    .line 631
    .local v22, "d2":D
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    #@65
    sub-double v2, v22, v2

    #@67
    const-wide v4, 0x3fd287a762c9bd93L    # 0.289529654

    #@6c
    mul-double/2addr v2, v4

    #@6d
    const-wide v4, 0x3fc68a288b421b8cL    # 0.176091259

    #@72
    add-double/2addr v2, v4

    #@73
    move/from16 v0, p1

    #@75
    int-to-double v4, v0

    #@76
    const-wide v48, 0x3fd34413509f79fbL    # 0.301029995663981

    #@7b
    mul-double v4, v4, v48

    #@7d
    add-double/2addr v2, v4

    #@7e
    .line 630
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    #@81
    move-result-wide v2

    #@82
    double-to-int v0, v2

    #@83
    move/from16 v24, v0

    #@85
    .line 639
    .local v24, "decExp":I
    move/from16 v0, v24

    #@87
    neg-int v2, v0

    #@88
    const/4 v3, 0x0

    #@89
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    #@8c
    move-result v9

    #@8d
    .line 640
    .local v9, "B5":I
    add-int v2, v9, v34

    #@8f
    add-int v8, v2, p1

    #@91
    .line 642
    .local v8, "B2":I
    const/4 v2, 0x0

    #@92
    move/from16 v0, v24

    #@94
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    #@97
    move-result v16

    #@98
    .line 643
    .local v16, "S5":I
    add-int v15, v16, v34

    #@9a
    .line 645
    .local v15, "S2":I
    move v13, v9

    #@9b
    .line 646
    .local v13, "M5":I
    sub-int v12, v8, p4

    #@9d
    .line 656
    .local v12, "M2":I
    rsub-int/lit8 v2, v31, 0x35

    #@9f
    ushr-long p2, p2, v2

    #@a1
    .line 657
    add-int/lit8 v2, v31, -0x1

    #@a3
    sub-int/2addr v8, v2

    #@a4
    .line 658
    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    #@a7
    move-result v19

    #@a8
    .line 659
    .local v19, "common2factor":I
    sub-int v8, v8, v19

    #@aa
    .line 660
    sub-int v15, v15, v19

    #@ac
    .line 661
    sub-int v12, v12, v19

    #@ae
    .line 669
    const/4 v2, 0x1

    #@af
    move/from16 v0, v31

    #@b1
    if-ne v0, v2, :cond_3

    #@b3
    .line 670
    add-int/lit8 v12, v12, -0x1

    #@b5
    .line 672
    :cond_3
    if-gez v12, :cond_4

    #@b7
    .line 676
    sub-int/2addr v8, v12

    #@b8
    .line 677
    sub-int/2addr v15, v12

    #@b9
    .line 678
    const/4 v12, 0x0

    #@ba
    .line 688
    :cond_4
    const/16 v2, 0x12

    #@bc
    new-array v0, v2, [C

    #@be
    move-object/from16 v25, v0

    #@c0
    move-object/from16 v0, v25

    #@c2
    move-object/from16 v1, p0

    #@c4
    iput-object v0, v1, Ljava/lang/FloatingDecimal;->digits:[C

    #@c6
    .line 689
    .local v25, "digits":[C
    const/16 v35, 0x0

    #@c8
    .line 709
    .local v35, "ndigit":I
    add-int v3, v31, v8

    #@ca
    sget-object v2, Ljava/lang/FloatingDecimal;->n5bits:[I

    #@cc
    array-length v2, v2

    #@cd
    if-ge v9, v2, :cond_5

    #@cf
    sget-object v2, Ljava/lang/FloatingDecimal;->n5bits:[I

    #@d1
    aget v2, v2, v9

    #@d3
    :goto_2
    add-int v10, v3, v2

    #@d5
    .line 710
    .local v10, "Bbits":I
    add-int/lit8 v3, v15, 0x1

    #@d7
    add-int/lit8 v2, v16, 0x1

    #@d9
    sget-object v4, Ljava/lang/FloatingDecimal;->n5bits:[I

    #@db
    array-length v4, v4

    #@dc
    if-ge v2, v4, :cond_6

    #@de
    sget-object v2, Ljava/lang/FloatingDecimal;->n5bits:[I

    #@e0
    add-int/lit8 v4, v16, 0x1

    #@e2
    aget v2, v2, v4

    #@e4
    :goto_3
    add-int v42, v3, v2

    #@e6
    .line 711
    .local v42, "tenSbits":I
    const/16 v2, 0x40

    #@e8
    if-ge v10, v2, :cond_27

    #@ea
    const/16 v2, 0x40

    #@ec
    move/from16 v0, v42

    #@ee
    if-ge v0, v2, :cond_27

    #@f0
    .line 712
    const/16 v2, 0x20

    #@f2
    if-ge v10, v2, :cond_17

    #@f4
    const/16 v2, 0x20

    #@f6
    move/from16 v0, v42

    #@f8
    if-ge v0, v2, :cond_17

    #@fa
    .line 714
    move-wide/from16 v0, p2

    #@fc
    long-to-int v2, v0

    #@fd
    sget-object v3, Ljava/lang/FloatingDecimal;->small5pow:[I

    #@ff
    aget v3, v3, v9

    #@101
    mul-int/2addr v2, v3

    #@102
    shl-int v18, v2, v8

    #@104
    .line 715
    .local v18, "b":I
    sget-object v2, Ljava/lang/FloatingDecimal;->small5pow:[I

    #@106
    aget v2, v2, v16

    #@108
    shl-int v38, v2, v15

    #@10a
    .line 716
    .local v38, "s":I
    sget-object v2, Ljava/lang/FloatingDecimal;->small5pow:[I

    #@10c
    aget v2, v2, v9

    #@10e
    shl-int v30, v2, v12

    #@110
    .line 717
    .local v30, "m":I
    mul-int/lit8 v44, v38, 0xa

    #@112
    .line 723
    .local v44, "tens":I
    const/16 v35, 0x0

    #@114
    .line 724
    div-int v37, v18, v38

    #@116
    .line 725
    .local v37, "q":I
    rem-int v2, v18, v38

    #@118
    mul-int/lit8 v18, v2, 0xa

    #@11a
    .line 726
    mul-int/lit8 v30, v30, 0xa

    #@11c
    .line 727
    move/from16 v0, v18

    #@11e
    move/from16 v1, v30

    #@120
    if-ge v0, v1, :cond_7

    #@122
    const/16 v27, 0x1

    #@124
    .line 728
    .local v27, "low":Z
    :goto_4
    add-int v2, v18, v30

    #@126
    move/from16 v0, v44

    #@128
    if-le v2, v0, :cond_8

    #@12a
    const/16 v26, 0x1

    #@12c
    .line 729
    .local v26, "high":Z
    :goto_5
    sget-boolean v2, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

    #@12e
    if-nez v2, :cond_a

    #@130
    const/16 v2, 0xa

    #@132
    move/from16 v0, v37

    #@134
    if-ge v0, v2, :cond_9

    #@136
    const/4 v2, 0x1

    #@137
    :goto_6
    if-nez v2, :cond_a

    #@139
    new-instance v2, Ljava/lang/AssertionError;

    #@13b
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13e
    move-result-object v3

    #@13f
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@142
    throw v2

    #@143
    .line 709
    .end local v10    # "Bbits":I
    .end local v18    # "b":I
    .end local v26    # "high":Z
    .end local v27    # "low":Z
    .end local v30    # "m":I
    .end local v37    # "q":I
    .end local v38    # "s":I
    .end local v42    # "tenSbits":I
    .end local v44    # "tens":I
    :cond_5
    mul-int/lit8 v2, v9, 0x3

    #@145
    goto :goto_2

    #@146
    .line 710
    .restart local v10    # "Bbits":I
    :cond_6
    add-int/lit8 v2, v16, 0x1

    #@148
    mul-int/lit8 v2, v2, 0x3

    #@14a
    goto :goto_3

    #@14b
    .line 727
    .restart local v18    # "b":I
    .restart local v30    # "m":I
    .restart local v37    # "q":I
    .restart local v38    # "s":I
    .restart local v42    # "tenSbits":I
    .restart local v44    # "tens":I
    :cond_7
    const/16 v27, 0x0

    #@14d
    .restart local v27    # "low":Z
    goto :goto_4

    #@14e
    .line 728
    :cond_8
    const/16 v26, 0x0

    #@150
    .restart local v26    # "high":Z
    goto :goto_5

    #@151
    .line 729
    :cond_9
    const/4 v2, 0x0

    #@152
    goto :goto_6

    #@153
    .line 730
    :cond_a
    if-nez v37, :cond_b

    #@155
    if-eqz v26, :cond_f

    #@157
    .line 723
    :cond_b
    const/4 v2, 0x0

    #@158
    .line 734
    const/16 v35, 0x1

    #@15a
    add-int/lit8 v3, v37, 0x30

    #@15c
    int-to-char v3, v3

    #@15d
    aput-char v3, v25, v2

    #@15f
    .line 742
    :goto_7
    const/4 v2, -0x3

    #@160
    move/from16 v0, v24

    #@162
    if-lt v0, v2, :cond_c

    #@164
    const/16 v2, 0x8

    #@166
    move/from16 v0, v24

    #@168
    if-lt v0, v2, :cond_10

    #@16a
    .line 743
    :cond_c
    const/16 v27, 0x0

    #@16c
    const/16 v26, 0x0

    #@16e
    move/from16 v36, v35

    #@170
    .line 745
    .end local v35    # "ndigit":I
    .local v36, "ndigit":I
    :goto_8
    if-nez v27, :cond_d

    #@172
    if-eqz v26, :cond_11

    #@174
    .line 764
    :cond_d
    shl-int/lit8 v2, v18, 0x1

    #@176
    sub-int v2, v2, v44

    #@178
    int-to-long v0, v2

    #@179
    move-wide/from16 v28, v0

    #@17b
    .local v28, "lowDigitDifference":J
    move/from16 v35, v36

    #@17d
    .line 876
    .end local v18    # "b":I
    .end local v30    # "m":I
    .end local v36    # "ndigit":I
    .end local v38    # "s":I
    .end local v44    # "tens":I
    .restart local v35    # "ndigit":I
    :goto_9
    add-int/lit8 v2, v24, 0x1

    #@17f
    move-object/from16 v0, p0

    #@181
    iput v2, v0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@183
    .line 877
    move-object/from16 v0, v25

    #@185
    move-object/from16 v1, p0

    #@187
    iput-object v0, v1, Ljava/lang/FloatingDecimal;->digits:[C

    #@189
    .line 878
    move/from16 v0, v35

    #@18b
    move-object/from16 v1, p0

    #@18d
    iput v0, v1, Ljava/lang/FloatingDecimal;->nDigits:I

    #@18f
    .line 882
    if-eqz v26, :cond_e

    #@191
    .line 883
    if-eqz v27, :cond_38

    #@193
    .line 884
    const-wide/16 v2, 0x0

    #@195
    cmp-long v2, v28, v2

    #@197
    if-nez v2, :cond_37

    #@199
    .line 887
    move-object/from16 v0, p0

    #@19b
    iget v2, v0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@19d
    add-int/lit8 v2, v2, -0x1

    #@19f
    aget-char v2, v25, v2

    #@1a1
    and-int/lit8 v2, v2, 0x1

    #@1a3
    if-eqz v2, :cond_e

    #@1a5
    invoke-direct/range {p0 .. p0}, Ljava/lang/FloatingDecimal;->roundup()V

    #@1a8
    .line 533
    :cond_e
    :goto_a
    return-void

    #@1a9
    .line 732
    .end local v28    # "lowDigitDifference":J
    .restart local v18    # "b":I
    .restart local v30    # "m":I
    .restart local v38    # "s":I
    .restart local v44    # "tens":I
    :cond_f
    add-int/lit8 v24, v24, -0x1

    #@1ab
    .line 730
    goto :goto_7

    #@1ac
    :cond_10
    move/from16 v36, v35

    #@1ae
    .line 742
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    goto :goto_8

    #@1af
    .line 746
    :cond_11
    div-int v37, v18, v38

    #@1b1
    .line 747
    rem-int v2, v18, v38

    #@1b3
    mul-int/lit8 v18, v2, 0xa

    #@1b5
    .line 748
    mul-int/lit8 v30, v30, 0xa

    #@1b7
    .line 749
    sget-boolean v2, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

    #@1b9
    if-nez v2, :cond_13

    #@1bb
    const/16 v2, 0xa

    #@1bd
    move/from16 v0, v37

    #@1bf
    if-ge v0, v2, :cond_12

    #@1c1
    const/4 v2, 0x1

    #@1c2
    :goto_b
    if-nez v2, :cond_13

    #@1c4
    new-instance v2, Ljava/lang/AssertionError;

    #@1c6
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c9
    move-result-object v3

    #@1ca
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1cd
    throw v2

    #@1ce
    :cond_12
    const/4 v2, 0x0

    #@1cf
    goto :goto_b

    #@1d0
    .line 750
    :cond_13
    move/from16 v0, v30

    #@1d2
    int-to-long v2, v0

    #@1d3
    const-wide/16 v4, 0x0

    #@1d5
    cmp-long v2, v2, v4

    #@1d7
    if-lez v2, :cond_16

    #@1d9
    .line 751
    move/from16 v0, v18

    #@1db
    move/from16 v1, v30

    #@1dd
    if-ge v0, v1, :cond_14

    #@1df
    const/16 v27, 0x1

    #@1e1
    .line 752
    :goto_c
    add-int v2, v18, v30

    #@1e3
    move/from16 v0, v44

    #@1e5
    if-le v2, v0, :cond_15

    #@1e7
    const/16 v26, 0x1

    #@1e9
    .line 762
    :goto_d
    add-int/lit8 v35, v36, 0x1

    #@1eb
    .end local v36    # "ndigit":I
    .restart local v35    # "ndigit":I
    add-int/lit8 v2, v37, 0x30

    #@1ed
    int-to-char v2, v2

    #@1ee
    aput-char v2, v25, v36

    #@1f0
    move/from16 v36, v35

    #@1f2
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    goto/16 :goto_8

    #@1f4
    .line 751
    :cond_14
    const/16 v27, 0x0

    #@1f6
    goto :goto_c

    #@1f7
    .line 752
    :cond_15
    const/16 v26, 0x0

    #@1f9
    goto :goto_d

    #@1fa
    .line 759
    :cond_16
    const/16 v27, 0x1

    #@1fc
    .line 760
    const/16 v26, 0x1

    #@1fe
    goto :goto_d

    #@1ff
    .line 767
    .end local v18    # "b":I
    .end local v26    # "high":Z
    .end local v27    # "low":Z
    .end local v30    # "m":I
    .end local v36    # "ndigit":I
    .end local v37    # "q":I
    .end local v38    # "s":I
    .end local v44    # "tens":I
    .restart local v35    # "ndigit":I
    :cond_17
    sget-object v2, Ljava/lang/FloatingDecimal;->long5pow:[J

    #@201
    aget-wide v2, v2, v9

    #@203
    mul-long v2, v2, p2

    #@205
    shl-long v20, v2, v8

    #@207
    .line 768
    .local v20, "b":J
    sget-object v2, Ljava/lang/FloatingDecimal;->long5pow:[J

    #@209
    aget-wide v2, v2, v16

    #@20b
    shl-long v40, v2, v15

    #@20d
    .line 769
    .local v40, "s":J
    sget-object v2, Ljava/lang/FloatingDecimal;->long5pow:[J

    #@20f
    aget-wide v2, v2, v9

    #@211
    shl-long v32, v2, v12

    #@213
    .line 770
    .local v32, "m":J
    const-wide/16 v2, 0xa

    #@215
    mul-long v46, v40, v2

    #@217
    .line 776
    .local v46, "tens":J
    const/16 v35, 0x0

    #@219
    .line 777
    div-long v2, v20, v40

    #@21b
    long-to-int v0, v2

    #@21c
    move/from16 v37, v0

    #@21e
    .line 778
    .restart local v37    # "q":I
    rem-long v2, v20, v40

    #@220
    const-wide/16 v4, 0xa

    #@222
    mul-long v20, v4, v2

    #@224
    .line 779
    const-wide/16 v2, 0xa

    #@226
    mul-long v32, v32, v2

    #@228
    .line 780
    cmp-long v2, v20, v32

    #@22a
    if-gez v2, :cond_18

    #@22c
    const/16 v27, 0x1

    #@22e
    .line 781
    .restart local v27    # "low":Z
    :goto_e
    add-long v2, v20, v32

    #@230
    cmp-long v2, v2, v46

    #@232
    if-lez v2, :cond_19

    #@234
    const/16 v26, 0x1

    #@236
    .line 782
    .restart local v26    # "high":Z
    :goto_f
    sget-boolean v2, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

    #@238
    if-nez v2, :cond_1b

    #@23a
    const/16 v2, 0xa

    #@23c
    move/from16 v0, v37

    #@23e
    if-ge v0, v2, :cond_1a

    #@240
    const/4 v2, 0x1

    #@241
    :goto_10
    if-nez v2, :cond_1b

    #@243
    new-instance v2, Ljava/lang/AssertionError;

    #@245
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@248
    move-result-object v3

    #@249
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@24c
    throw v2

    #@24d
    .line 780
    .end local v26    # "high":Z
    .end local v27    # "low":Z
    :cond_18
    const/16 v27, 0x0

    #@24f
    .restart local v27    # "low":Z
    goto :goto_e

    #@250
    .line 781
    :cond_19
    const/16 v26, 0x0

    #@252
    .restart local v26    # "high":Z
    goto :goto_f

    #@253
    .line 782
    :cond_1a
    const/4 v2, 0x0

    #@254
    goto :goto_10

    #@255
    .line 783
    :cond_1b
    if-nez v37, :cond_1c

    #@257
    if-eqz v26, :cond_1f

    #@259
    .line 776
    :cond_1c
    const/4 v2, 0x0

    #@25a
    .line 787
    const/16 v35, 0x1

    #@25c
    add-int/lit8 v3, v37, 0x30

    #@25e
    int-to-char v3, v3

    #@25f
    aput-char v3, v25, v2

    #@261
    .line 795
    :goto_11
    const/4 v2, -0x3

    #@262
    move/from16 v0, v24

    #@264
    if-lt v0, v2, :cond_1d

    #@266
    const/16 v2, 0x8

    #@268
    move/from16 v0, v24

    #@26a
    if-lt v0, v2, :cond_20

    #@26c
    .line 796
    :cond_1d
    const/16 v27, 0x0

    #@26e
    const/16 v26, 0x0

    #@270
    move/from16 v36, v35

    #@272
    .line 798
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    :goto_12
    if-nez v27, :cond_1e

    #@274
    if-eqz v26, :cond_21

    #@276
    .line 817
    :cond_1e
    const/4 v2, 0x1

    #@277
    shl-long v2, v20, v2

    #@279
    sub-long v28, v2, v46

    #@27b
    .restart local v28    # "lowDigitDifference":J
    move/from16 v35, v36

    #@27d
    .end local v36    # "ndigit":I
    .restart local v35    # "ndigit":I
    goto/16 :goto_9

    #@27f
    .line 785
    .end local v28    # "lowDigitDifference":J
    :cond_1f
    add-int/lit8 v24, v24, -0x1

    #@281
    .line 783
    goto :goto_11

    #@282
    :cond_20
    move/from16 v36, v35

    #@284
    .line 795
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    goto :goto_12

    #@285
    .line 799
    :cond_21
    div-long v2, v20, v40

    #@287
    long-to-int v0, v2

    #@288
    move/from16 v37, v0

    #@28a
    .line 800
    rem-long v2, v20, v40

    #@28c
    const-wide/16 v4, 0xa

    #@28e
    mul-long v20, v4, v2

    #@290
    .line 801
    const-wide/16 v2, 0xa

    #@292
    mul-long v32, v32, v2

    #@294
    .line 802
    sget-boolean v2, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

    #@296
    if-nez v2, :cond_23

    #@298
    const/16 v2, 0xa

    #@29a
    move/from16 v0, v37

    #@29c
    if-ge v0, v2, :cond_22

    #@29e
    const/4 v2, 0x1

    #@29f
    :goto_13
    if-nez v2, :cond_23

    #@2a1
    new-instance v2, Ljava/lang/AssertionError;

    #@2a3
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a6
    move-result-object v3

    #@2a7
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2aa
    throw v2

    #@2ab
    :cond_22
    const/4 v2, 0x0

    #@2ac
    goto :goto_13

    #@2ad
    .line 803
    :cond_23
    const-wide/16 v2, 0x0

    #@2af
    cmp-long v2, v32, v2

    #@2b1
    if-lez v2, :cond_26

    #@2b3
    .line 804
    cmp-long v2, v20, v32

    #@2b5
    if-gez v2, :cond_24

    #@2b7
    const/16 v27, 0x1

    #@2b9
    .line 805
    :goto_14
    add-long v2, v20, v32

    #@2bb
    cmp-long v2, v2, v46

    #@2bd
    if-lez v2, :cond_25

    #@2bf
    const/16 v26, 0x1

    #@2c1
    .line 815
    :goto_15
    add-int/lit8 v35, v36, 0x1

    #@2c3
    .end local v36    # "ndigit":I
    .restart local v35    # "ndigit":I
    add-int/lit8 v2, v37, 0x30

    #@2c5
    int-to-char v2, v2

    #@2c6
    aput-char v2, v25, v36

    #@2c8
    move/from16 v36, v35

    #@2ca
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    goto :goto_12

    #@2cb
    .line 804
    :cond_24
    const/16 v27, 0x0

    #@2cd
    goto :goto_14

    #@2ce
    .line 805
    :cond_25
    const/16 v26, 0x0

    #@2d0
    goto :goto_15

    #@2d1
    .line 812
    :cond_26
    const/16 v27, 0x1

    #@2d3
    .line 813
    const/16 v26, 0x1

    #@2d5
    goto :goto_15

    #@2d6
    .line 827
    .end local v20    # "b":J
    .end local v26    # "high":Z
    .end local v27    # "low":Z
    .end local v32    # "m":J
    .end local v36    # "ndigit":I
    .end local v37    # "q":I
    .end local v40    # "s":J
    .end local v46    # "tens":J
    .restart local v35    # "ndigit":I
    :cond_27
    new-instance v2, Lsun/misc/FDBigInt;

    #@2d8
    move-wide/from16 v0, p2

    #@2da
    invoke-direct {v2, v0, v1}, Lsun/misc/FDBigInt;-><init>(J)V

    #@2dd
    invoke-static {v2, v9, v8}, Ljava/lang/FloatingDecimal;->multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;

    #@2e0
    move-result-object v11

    #@2e1
    .line 828
    .local v11, "Bval":Lsun/misc/FDBigInt;
    move/from16 v0, v16

    #@2e3
    invoke-static {v0, v15}, Ljava/lang/FloatingDecimal;->constructPow52(II)Lsun/misc/FDBigInt;

    #@2e6
    move-result-object v17

    #@2e7
    .line 829
    .local v17, "Sval":Lsun/misc/FDBigInt;
    invoke-static {v9, v12}, Ljava/lang/FloatingDecimal;->constructPow52(II)Lsun/misc/FDBigInt;

    #@2ea
    move-result-object v14

    #@2eb
    .line 833
    .local v14, "Mval":Lsun/misc/FDBigInt;
    invoke-virtual/range {v17 .. v17}, Lsun/misc/FDBigInt;->normalizeMe()I

    #@2ee
    move-result v39

    #@2ef
    .local v39, "shiftBias":I
    move/from16 v0, v39

    #@2f1
    invoke-virtual {v11, v0}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    #@2f4
    .line 834
    move/from16 v0, v39

    #@2f6
    invoke-virtual {v14, v0}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    #@2f9
    .line 835
    const/16 v2, 0xa

    #@2fb
    move-object/from16 v0, v17

    #@2fd
    invoke-virtual {v0, v2}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    #@300
    move-result-object v43

    #@301
    .line 841
    .local v43, "tenSval":Lsun/misc/FDBigInt;
    const/16 v35, 0x0

    #@303
    .line 842
    move-object/from16 v0, v17

    #@305
    invoke-virtual {v11, v0}, Lsun/misc/FDBigInt;->quoRemIteration(Lsun/misc/FDBigInt;)I

    #@308
    move-result v37

    #@309
    .line 843
    .restart local v37    # "q":I
    const/16 v2, 0xa

    #@30b
    invoke-virtual {v14, v2}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    #@30e
    move-result-object v14

    #@30f
    .line 844
    invoke-virtual {v11, v14}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    #@312
    move-result v2

    #@313
    if-gez v2, :cond_28

    #@315
    const/16 v27, 0x1

    #@317
    .line 845
    .restart local v27    # "low":Z
    :goto_16
    invoke-virtual {v11, v14}, Lsun/misc/FDBigInt;->add(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    #@31a
    move-result-object v2

    #@31b
    move-object/from16 v0, v43

    #@31d
    invoke-virtual {v2, v0}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    #@320
    move-result v2

    #@321
    if-lez v2, :cond_29

    #@323
    const/16 v26, 0x1

    #@325
    .line 846
    .restart local v26    # "high":Z
    :goto_17
    sget-boolean v2, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

    #@327
    if-nez v2, :cond_2b

    #@329
    const/16 v2, 0xa

    #@32b
    move/from16 v0, v37

    #@32d
    if-ge v0, v2, :cond_2a

    #@32f
    const/4 v2, 0x1

    #@330
    :goto_18
    if-nez v2, :cond_2b

    #@332
    new-instance v2, Ljava/lang/AssertionError;

    #@334
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@337
    move-result-object v3

    #@338
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@33b
    throw v2

    #@33c
    .line 844
    .end local v26    # "high":Z
    .end local v27    # "low":Z
    :cond_28
    const/16 v27, 0x0

    #@33e
    .restart local v27    # "low":Z
    goto :goto_16

    #@33f
    .line 845
    :cond_29
    const/16 v26, 0x0

    #@341
    .restart local v26    # "high":Z
    goto :goto_17

    #@342
    .line 846
    :cond_2a
    const/4 v2, 0x0

    #@343
    goto :goto_18

    #@344
    .line 847
    :cond_2b
    if-nez v37, :cond_2c

    #@346
    if-eqz v26, :cond_2f

    #@348
    .line 841
    :cond_2c
    const/4 v2, 0x0

    #@349
    .line 851
    const/16 v35, 0x1

    #@34b
    add-int/lit8 v3, v37, 0x30

    #@34d
    int-to-char v3, v3

    #@34e
    aput-char v3, v25, v2

    #@350
    .line 859
    :goto_19
    const/4 v2, -0x3

    #@351
    move/from16 v0, v24

    #@353
    if-lt v0, v2, :cond_2d

    #@355
    const/16 v2, 0x8

    #@357
    move/from16 v0, v24

    #@359
    if-lt v0, v2, :cond_30

    #@35b
    .line 860
    :cond_2d
    const/16 v27, 0x0

    #@35d
    const/16 v26, 0x0

    #@35f
    move/from16 v36, v35

    #@361
    .line 862
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    :goto_1a
    if-nez v27, :cond_2e

    #@363
    if-eqz v26, :cond_31

    #@365
    .line 870
    :cond_2e
    if-eqz v26, :cond_36

    #@367
    if-eqz v27, :cond_36

    #@369
    .line 871
    const/4 v2, 0x1

    #@36a
    invoke-virtual {v11, v2}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    #@36d
    .line 872
    move-object/from16 v0, v43

    #@36f
    invoke-virtual {v11, v0}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    #@372
    move-result v2

    #@373
    int-to-long v0, v2

    #@374
    move-wide/from16 v28, v0

    #@376
    .restart local v28    # "lowDigitDifference":J
    move/from16 v35, v36

    #@378
    .end local v36    # "ndigit":I
    .restart local v35    # "ndigit":I
    goto/16 :goto_9

    #@37a
    .line 849
    .end local v28    # "lowDigitDifference":J
    :cond_2f
    add-int/lit8 v24, v24, -0x1

    #@37c
    .line 847
    goto :goto_19

    #@37d
    :cond_30
    move/from16 v36, v35

    #@37f
    .line 859
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    goto :goto_1a

    #@380
    .line 863
    :cond_31
    move-object/from16 v0, v17

    #@382
    invoke-virtual {v11, v0}, Lsun/misc/FDBigInt;->quoRemIteration(Lsun/misc/FDBigInt;)I

    #@385
    move-result v37

    #@386
    .line 864
    const/16 v2, 0xa

    #@388
    invoke-virtual {v14, v2}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    #@38b
    move-result-object v14

    #@38c
    .line 865
    sget-boolean v2, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

    #@38e
    if-nez v2, :cond_33

    #@390
    const/16 v2, 0xa

    #@392
    move/from16 v0, v37

    #@394
    if-ge v0, v2, :cond_32

    #@396
    const/4 v2, 0x1

    #@397
    :goto_1b
    if-nez v2, :cond_33

    #@399
    new-instance v2, Ljava/lang/AssertionError;

    #@39b
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39e
    move-result-object v3

    #@39f
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@3a2
    throw v2

    #@3a3
    :cond_32
    const/4 v2, 0x0

    #@3a4
    goto :goto_1b

    #@3a5
    .line 866
    :cond_33
    invoke-virtual {v11, v14}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    #@3a8
    move-result v2

    #@3a9
    if-gez v2, :cond_34

    #@3ab
    const/16 v27, 0x1

    #@3ad
    .line 867
    :goto_1c
    invoke-virtual {v11, v14}, Lsun/misc/FDBigInt;->add(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    #@3b0
    move-result-object v2

    #@3b1
    move-object/from16 v0, v43

    #@3b3
    invoke-virtual {v2, v0}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    #@3b6
    move-result v2

    #@3b7
    if-lez v2, :cond_35

    #@3b9
    const/16 v26, 0x1

    #@3bb
    .line 868
    :goto_1d
    add-int/lit8 v35, v36, 0x1

    #@3bd
    .end local v36    # "ndigit":I
    .restart local v35    # "ndigit":I
    add-int/lit8 v2, v37, 0x30

    #@3bf
    int-to-char v2, v2

    #@3c0
    aput-char v2, v25, v36

    #@3c2
    move/from16 v36, v35

    #@3c4
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    goto :goto_1a

    #@3c5
    .line 866
    :cond_34
    const/16 v27, 0x0

    #@3c7
    goto :goto_1c

    #@3c8
    .line 867
    :cond_35
    const/16 v26, 0x0

    #@3ca
    goto :goto_1d

    #@3cb
    .line 874
    :cond_36
    const-wide/16 v28, 0x0

    #@3cd
    .restart local v28    # "lowDigitDifference":J
    move/from16 v35, v36

    #@3cf
    .end local v36    # "ndigit":I
    .restart local v35    # "ndigit":I
    goto/16 :goto_9

    #@3d1
    .line 888
    .end local v11    # "Bval":Lsun/misc/FDBigInt;
    .end local v14    # "Mval":Lsun/misc/FDBigInt;
    .end local v17    # "Sval":Lsun/misc/FDBigInt;
    .end local v39    # "shiftBias":I
    .end local v43    # "tenSval":Lsun/misc/FDBigInt;
    :cond_37
    const-wide/16 v2, 0x0

    #@3d3
    cmp-long v2, v28, v2

    #@3d5
    if-lez v2, :cond_e

    #@3d7
    .line 889
    invoke-direct/range {p0 .. p0}, Ljava/lang/FloatingDecimal;->roundup()V

    #@3da
    goto/16 :goto_a

    #@3dc
    .line 892
    :cond_38
    invoke-direct/range {p0 .. p0}, Ljava/lang/FloatingDecimal;->roundup()V

    #@3df
    goto/16 :goto_a
.end method

.method private getChars([C)I
    .locals 12
    .param p1, "result"    # [C

    #@0
    .prologue
    const/16 v11, 0x2d

    #@2
    const/4 v6, 0x1

    #@3
    const/16 v10, 0x30

    #@5
    const/16 v9, 0x2e

    #@7
    const/4 v7, 0x0

    #@8
    .line 920
    sget-boolean v5, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

    #@a
    if-nez v5, :cond_1

    #@c
    iget v5, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@e
    const/16 v8, 0x13

    #@10
    if-gt v5, v8, :cond_0

    #@12
    move v5, v6

    #@13
    :goto_0
    if-nez v5, :cond_1

    #@15
    new-instance v5, Ljava/lang/AssertionError;

    #@17
    iget v6, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@19
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v6

    #@1d
    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@20
    throw v5

    #@21
    :cond_0
    move v5, v7

    #@22
    goto :goto_0

    #@23
    .line 921
    :cond_1
    const/4 v2, 0x0

    #@24
    .line 922
    .local v2, "i":I
    iget-boolean v5, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@26
    if-eqz v5, :cond_2

    #@28
    aput-char v11, p1, v7

    #@2a
    const/4 v2, 0x1

    #@2b
    .line 923
    :cond_2
    iget-boolean v5, p0, Ljava/lang/FloatingDecimal;->isExceptional:Z

    #@2d
    if-eqz v5, :cond_3

    #@2f
    .line 924
    iget-object v5, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@31
    iget v6, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@33
    invoke-static {v5, v7, p1, v2, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@36
    .line 925
    iget v5, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@38
    add-int/2addr v2, v5

    #@39
    .line 990
    :goto_1
    return v2

    #@3a
    .line 927
    :cond_3
    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@3c
    if-lez v5, :cond_6

    #@3e
    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@40
    const/16 v8, 0x8

    #@42
    if-ge v5, v8, :cond_6

    #@44
    .line 929
    iget v5, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@46
    iget v6, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@48
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@4b
    move-result v0

    #@4c
    .line 930
    .local v0, "charLength":I
    iget-object v5, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@4e
    invoke-static {v5, v7, p1, v2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@51
    .line 931
    add-int/2addr v2, v0

    #@52
    .line 932
    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@54
    if-ge v0, v5, :cond_4

    #@56
    .line 933
    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@58
    sub-int v0, v5, v0

    #@5a
    .line 934
    sget-object v5, Ljava/lang/FloatingDecimal;->zero:[C

    #@5c
    invoke-static {v5, v7, p1, v2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@5f
    .line 935
    add-int/2addr v2, v0

    #@60
    .line 936
    add-int/lit8 v3, v2, 0x1

    #@62
    .end local v2    # "i":I
    .local v3, "i":I
    aput-char v9, p1, v2

    #@64
    .line 937
    add-int/lit8 v2, v3, 0x1

    #@66
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-char v10, p1, v3

    #@68
    goto :goto_1

    #@69
    .line 939
    :cond_4
    add-int/lit8 v3, v2, 0x1

    #@6b
    .end local v2    # "i":I
    .restart local v3    # "i":I
    aput-char v9, p1, v2

    #@6d
    .line 940
    iget v5, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@6f
    if-ge v0, v5, :cond_5

    #@71
    .line 941
    iget v5, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@73
    sub-int v4, v5, v0

    #@75
    .line 942
    .local v4, "t":I
    iget-object v5, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@77
    invoke-static {v5, v0, p1, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@7a
    .line 943
    add-int v2, v3, v4

    #@7c
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    #@7d
    .line 945
    .end local v2    # "i":I
    .end local v4    # "t":I
    .restart local v3    # "i":I
    :cond_5
    add-int/lit8 v2, v3, 0x1

    #@7f
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-char v10, p1, v3

    #@81
    goto :goto_1

    #@82
    .line 948
    .end local v0    # "charLength":I
    :cond_6
    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@84
    if-gtz v5, :cond_8

    #@86
    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@88
    const/4 v8, -0x3

    #@89
    if-le v5, v8, :cond_8

    #@8b
    .line 950
    add-int/lit8 v3, v2, 0x1

    #@8d
    .end local v2    # "i":I
    .restart local v3    # "i":I
    aput-char v10, p1, v2

    #@8f
    .line 951
    add-int/lit8 v2, v3, 0x1

    #@91
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-char v9, p1, v3

    #@93
    .line 952
    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@95
    if-eqz v5, :cond_7

    #@97
    .line 953
    sget-object v5, Ljava/lang/FloatingDecimal;->zero:[C

    #@99
    iget v6, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@9b
    neg-int v6, v6

    #@9c
    invoke-static {v5, v7, p1, v2, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@9f
    .line 954
    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@a1
    sub-int/2addr v2, v5

    #@a2
    .line 956
    :cond_7
    iget-object v5, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@a4
    iget v6, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@a6
    invoke-static {v5, v7, p1, v2, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@a9
    .line 957
    iget v5, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@ab
    add-int/2addr v2, v5

    #@ac
    .line 948
    goto :goto_1

    #@ad
    .line 960
    :cond_8
    add-int/lit8 v3, v2, 0x1

    #@af
    .end local v2    # "i":I
    .restart local v3    # "i":I
    iget-object v5, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@b1
    aget-char v5, v5, v7

    #@b3
    aput-char v5, p1, v2

    #@b5
    .line 961
    add-int/lit8 v2, v3, 0x1

    #@b7
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-char v9, p1, v3

    #@b9
    .line 962
    iget v5, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@bb
    if-le v5, v6, :cond_9

    #@bd
    .line 963
    iget-object v5, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@bf
    iget v7, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@c1
    add-int/lit8 v7, v7, -0x1

    #@c3
    invoke-static {v5, v6, p1, v2, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@c6
    .line 964
    iget v5, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@c8
    add-int/lit8 v5, v5, -0x1

    #@ca
    add-int/2addr v2, v5

    #@cb
    .line 968
    :goto_2
    add-int/lit8 v3, v2, 0x1

    #@cd
    .end local v2    # "i":I
    .restart local v3    # "i":I
    const/16 v5, 0x45

    #@cf
    aput-char v5, p1, v2

    #@d1
    .line 970
    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@d3
    if-gtz v5, :cond_a

    #@d5
    .line 971
    add-int/lit8 v2, v3, 0x1

    #@d7
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-char v11, p1, v3

    #@d9
    .line 972
    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@db
    neg-int v5, v5

    #@dc
    add-int/lit8 v1, v5, 0x1

    #@de
    .local v1, "e":I
    move v3, v2

    #@df
    .line 977
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :goto_3
    const/16 v5, 0x9

    #@e1
    if-gt v1, v5, :cond_b

    #@e3
    .line 978
    add-int/lit8 v2, v3, 0x1

    #@e5
    .end local v3    # "i":I
    .restart local v2    # "i":I
    add-int/lit8 v5, v1, 0x30

    #@e7
    int-to-char v5, v5

    #@e8
    aput-char v5, p1, v3

    #@ea
    goto/16 :goto_1

    #@ec
    .line 966
    .end local v1    # "e":I
    :cond_9
    add-int/lit8 v3, v2, 0x1

    #@ee
    .end local v2    # "i":I
    .restart local v3    # "i":I
    aput-char v10, p1, v2

    #@f0
    move v2, v3

    #@f1
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    #@f2
    .line 974
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_a
    iget v5, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@f4
    add-int/lit8 v1, v5, -0x1

    #@f6
    .restart local v1    # "e":I
    goto :goto_3

    #@f7
    .line 979
    :cond_b
    const/16 v5, 0x63

    #@f9
    if-gt v1, v5, :cond_c

    #@fb
    .line 980
    add-int/lit8 v2, v3, 0x1

    #@fd
    .end local v3    # "i":I
    .restart local v2    # "i":I
    div-int/lit8 v5, v1, 0xa

    #@ff
    add-int/lit8 v5, v5, 0x30

    #@101
    int-to-char v5, v5

    #@102
    aput-char v5, p1, v3

    #@104
    .line 981
    add-int/lit8 v3, v2, 0x1

    #@106
    .end local v2    # "i":I
    .restart local v3    # "i":I
    rem-int/lit8 v5, v1, 0xa

    #@108
    add-int/lit8 v5, v5, 0x30

    #@10a
    int-to-char v5, v5

    #@10b
    aput-char v5, p1, v2

    #@10d
    move v2, v3

    #@10e
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_1

    #@110
    .line 983
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_c
    add-int/lit8 v2, v3, 0x1

    #@112
    .end local v3    # "i":I
    .restart local v2    # "i":I
    div-int/lit8 v5, v1, 0x64

    #@114
    add-int/lit8 v5, v5, 0x30

    #@116
    int-to-char v5, v5

    #@117
    aput-char v5, p1, v3

    #@119
    .line 984
    rem-int/lit8 v1, v1, 0x64

    #@11b
    .line 985
    add-int/lit8 v3, v2, 0x1

    #@11d
    .end local v2    # "i":I
    .restart local v3    # "i":I
    div-int/lit8 v5, v1, 0xa

    #@11f
    add-int/lit8 v5, v5, 0x30

    #@121
    int-to-char v5, v5

    #@122
    aput-char v5, p1, v2

    #@124
    .line 986
    add-int/lit8 v2, v3, 0x1

    #@126
    .end local v3    # "i":I
    .restart local v2    # "i":I
    rem-int/lit8 v5, v1, 0xa

    #@128
    add-int/lit8 v5, v5, 0x30

    #@12a
    int-to-char v5, v5

    #@12b
    aput-char v5, p1, v3

    #@12d
    goto/16 :goto_1
.end method

.method static getHexDigit(Ljava/lang/String;I)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "position"    # I

    #@0
    .prologue
    const/16 v2, 0x10

    #@2
    .line 2467
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@5
    move-result v1

    #@6
    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    #@9
    move-result v0

    #@a
    .line 2468
    .local v0, "value":I
    const/4 v1, -0x1

    #@b
    if-le v0, v1, :cond_0

    #@d
    if-lt v0, v2, :cond_1

    #@f
    .line 2469
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    #@11
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "Unexpected failure of digit conversion of "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    .line 2470
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@20
    move-result v3

    #@21
    .line 2469
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2c
    throw v1

    #@2d
    .line 2472
    :cond_1
    return v0
.end method

.method private static declared-synchronized getHexFloatPattern()Ljava/util/regex/Pattern;
    .locals 2

    #@0
    .prologue
    const-class v1, Ljava/lang/FloatingDecimal;

    #@2
    monitor-enter v1

    #@3
    .line 1934
    :try_start_0
    sget-object v0, Ljava/lang/FloatingDecimal;->hexFloatPattern:Ljava/util/regex/Pattern;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1937
    const-string/jumbo v0, "([-+])?0[xX](((\\p{XDigit}+)\\.?)|((\\p{XDigit}*)\\.(\\p{XDigit}+)))[pP]([-+])?(\\p{Digit}+)[fFdD]?"

    #@a
    .line 1935
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Ljava/lang/FloatingDecimal;->hexFloatPattern:Ljava/util/regex/Pattern;

    #@10
    .line 1940
    :cond_0
    sget-object v0, Ljava/lang/FloatingDecimal;->hexFloatPattern:Ljava/util/regex/Pattern;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    return-object v0

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public static getThreadLocalInstance()Ljava/lang/FloatingDecimal;
    .locals 1

    #@0
    .prologue
    .line 401
    sget-object v0, Ljava/lang/FloatingDecimal;->TL_INSTANCE:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/FloatingDecimal;

    #@8
    return-object v0
.end method

.method private static multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;
    .locals 1
    .param p0, "v"    # Lsun/misc/FDBigInt;
    .param p1, "p5"    # I
    .param p2, "p2"    # I

    #@0
    .prologue
    .line 163
    if-eqz p1, :cond_0

    #@2
    .line 164
    sget-object v0, Ljava/lang/FloatingDecimal;->small5pow:[I

    #@4
    array-length v0, v0

    #@5
    if-ge p1, v0, :cond_2

    #@7
    .line 165
    sget-object v0, Ljava/lang/FloatingDecimal;->small5pow:[I

    #@9
    aget v0, v0, p1

    #@b
    invoke-virtual {p0, v0}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    #@e
    move-result-object p0

    #@f
    .line 170
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    #@11
    .line 171
    invoke-virtual {p0, p2}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    #@14
    .line 173
    :cond_1
    return-object p0

    #@15
    .line 167
    :cond_2
    invoke-static {p1}, Ljava/lang/FloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p0, v0}, Lsun/misc/FDBigInt;->mult(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    #@1c
    move-result-object p0

    #@1d
    goto :goto_0
.end method

.method private roundup()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/16 v4, 0x39

    #@3
    .line 376
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@5
    iget v3, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@7
    add-int/lit8 v0, v3, -0x1

    #@9
    .local v0, "i":I
    aget-char v1, v2, v0

    #@b
    .line 377
    .local v1, "q":I
    if-ne v1, v4, :cond_1

    #@d
    .line 378
    :goto_0
    if-ne v1, v4, :cond_0

    #@f
    if-lez v0, :cond_0

    #@11
    .line 379
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@13
    const/16 v3, 0x30

    #@15
    aput-char v3, v2, v0

    #@17
    .line 380
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@19
    add-int/lit8 v0, v0, -0x1

    #@1b
    aget-char v1, v2, v0

    #@1d
    goto :goto_0

    #@1e
    .line 382
    :cond_0
    if-ne v1, v4, :cond_1

    #@20
    .line 384
    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@22
    add-int/lit8 v2, v2, 0x1

    #@24
    iput v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@26
    .line 385
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@28
    const/16 v3, 0x31

    #@2a
    aput-char v3, v2, v5

    #@2c
    .line 386
    return-void

    #@2d
    .line 390
    :cond_1
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@2f
    add-int/lit8 v3, v1, 0x1

    #@31
    int-to-char v3, v3

    #@32
    aput-char v3, v2, v0

    #@34
    .line 374
    return-void
.end method

.method static stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2459
    const-string/jumbo v0, "^0+"

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method private static ulp(DZ)D
    .locals 12
    .param p0, "dval"    # D
    .param p2, "subtracting"    # Z

    #@0
    .prologue
    const/16 v10, 0x34

    #@2
    .line 234
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@5
    move-result-wide v6

    #@6
    const-wide v8, 0x7fffffffffffffffL

    #@b
    and-long v2, v6, v8

    #@d
    .line 235
    .local v2, "lbits":J
    ushr-long v6, v2, v10

    #@f
    long-to-int v0, v6

    #@10
    .line 237
    .local v0, "binexp":I
    if-eqz p2, :cond_0

    #@12
    if-lt v0, v10, :cond_0

    #@14
    const-wide v6, 0xfffffffffffffL

    #@19
    and-long/2addr v6, v2

    #@1a
    const-wide/16 v8, 0x0

    #@1c
    cmp-long v1, v6, v8

    #@1e
    if-nez v1, :cond_0

    #@20
    .line 240
    add-int/lit8 v0, v0, -0x1

    #@22
    .line 242
    :cond_0
    if-le v0, v10, :cond_2

    #@24
    .line 243
    add-int/lit8 v1, v0, -0x34

    #@26
    int-to-long v6, v1

    #@27
    shl-long/2addr v6, v10

    #@28
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@2b
    move-result-wide v4

    #@2c
    .line 249
    .local v4, "ulpval":D
    :goto_0
    if-eqz p2, :cond_1

    #@2e
    neg-double v4, v4

    #@2f
    .line 251
    :cond_1
    return-wide v4

    #@30
    .line 244
    .end local v4    # "ulpval":D
    :cond_2
    if-nez v0, :cond_3

    #@32
    .line 245
    const-wide/16 v4, 0x1

    #@34
    .restart local v4    # "ulpval":D
    goto :goto_0

    #@35
    .line 247
    .end local v4    # "ulpval":D
    :cond_3
    add-int/lit8 v1, v0, -0x1

    #@37
    const-wide/16 v6, 0x1

    #@39
    shl-long/2addr v6, v1

    #@3a
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@3d
    move-result-wide v4

    #@3e
    .restart local v4    # "ulpval":D
    goto :goto_0
.end method


# virtual methods
.method public appendTo(Ljava/lang/AbstractStringBuilder;)V
    .locals 9
    .param p1, "buf"    # Ljava/lang/AbstractStringBuilder;

    #@0
    .prologue
    const/16 v8, 0x30

    #@2
    const/16 v7, 0x2e

    #@4
    const/16 v6, 0x2d

    #@6
    const/4 v5, 0x1

    #@7
    const/4 v4, 0x0

    #@8
    .line 1001
    iget-boolean v2, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-virtual {p1, v6}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    #@f
    .line 1002
    :cond_0
    iget-boolean v2, p0, Ljava/lang/FloatingDecimal;->isExceptional:Z

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 1003
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@15
    iget v3, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@17
    invoke-virtual {p1, v2, v4, v3}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;

    #@1a
    .line 1004
    return-void

    #@1b
    .line 1006
    :cond_1
    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@1d
    if-lez v2, :cond_4

    #@1f
    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@21
    const/16 v3, 0x8

    #@23
    if-ge v2, v3, :cond_4

    #@25
    .line 1008
    iget v2, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@27
    iget v3, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@29
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@2c
    move-result v0

    #@2d
    .line 1009
    .local v0, "charLength":I
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@2f
    invoke-virtual {p1, v2, v4, v0}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;

    #@32
    .line 1010
    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@34
    if-ge v0, v2, :cond_2

    #@36
    .line 1011
    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@38
    sub-int v0, v2, v0

    #@3a
    .line 1012
    sget-object v2, Ljava/lang/FloatingDecimal;->zero:[C

    #@3c
    invoke-virtual {p1, v2, v4, v0}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;

    #@3f
    .line 1013
    const-string/jumbo v2, ".0"

    #@42
    invoke-virtual {p1, v2}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    #@45
    .line 1000
    .end local v0    # "charLength":I
    :goto_0
    return-void

    #@46
    .line 1015
    .restart local v0    # "charLength":I
    :cond_2
    invoke-virtual {p1, v7}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    #@49
    .line 1016
    iget v2, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@4b
    if-ge v0, v2, :cond_3

    #@4d
    .line 1017
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@4f
    iget v3, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@51
    sub-int/2addr v3, v0

    #@52
    invoke-virtual {p1, v2, v0, v3}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;

    #@55
    goto :goto_0

    #@56
    .line 1019
    :cond_3
    invoke-virtual {p1, v8}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    #@59
    goto :goto_0

    #@5a
    .line 1022
    .end local v0    # "charLength":I
    :cond_4
    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@5c
    if-gtz v2, :cond_6

    #@5e
    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@60
    const/4 v3, -0x3

    #@61
    if-le v2, v3, :cond_6

    #@63
    .line 1023
    const-string/jumbo v2, "0."

    #@66
    invoke-virtual {p1, v2}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    #@69
    .line 1024
    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@6b
    if-eqz v2, :cond_5

    #@6d
    .line 1025
    sget-object v2, Ljava/lang/FloatingDecimal;->zero:[C

    #@6f
    iget v3, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@71
    neg-int v3, v3

    #@72
    invoke-virtual {p1, v2, v4, v3}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;

    #@75
    .line 1027
    :cond_5
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@77
    iget v3, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@79
    invoke-virtual {p1, v2, v4, v3}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;

    #@7c
    goto :goto_0

    #@7d
    .line 1029
    :cond_6
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@7f
    aget-char v2, v2, v4

    #@81
    invoke-virtual {p1, v2}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    #@84
    .line 1030
    invoke-virtual {p1, v7}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    #@87
    .line 1031
    iget v2, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@89
    if-le v2, v5, :cond_7

    #@8b
    .line 1032
    iget-object v2, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@8d
    iget v3, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@8f
    add-int/lit8 v3, v3, -0x1

    #@91
    invoke-virtual {p1, v2, v5, v3}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;

    #@94
    .line 1036
    :goto_1
    const/16 v2, 0x45

    #@96
    invoke-virtual {p1, v2}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    #@99
    .line 1038
    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@9b
    if-gtz v2, :cond_8

    #@9d
    .line 1039
    invoke-virtual {p1, v6}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    #@a0
    .line 1040
    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@a2
    neg-int v2, v2

    #@a3
    add-int/lit8 v1, v2, 0x1

    #@a5
    .line 1045
    .local v1, "e":I
    :goto_2
    const/16 v2, 0x9

    #@a7
    if-gt v1, v2, :cond_9

    #@a9
    .line 1046
    add-int/lit8 v2, v1, 0x30

    #@ab
    int-to-char v2, v2

    #@ac
    invoke-virtual {p1, v2}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    #@af
    goto :goto_0

    #@b0
    .line 1034
    .end local v1    # "e":I
    :cond_7
    invoke-virtual {p1, v8}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    #@b3
    goto :goto_1

    #@b4
    .line 1042
    :cond_8
    iget v2, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@b6
    add-int/lit8 v1, v2, -0x1

    #@b8
    .restart local v1    # "e":I
    goto :goto_2

    #@b9
    .line 1047
    :cond_9
    const/16 v2, 0x63

    #@bb
    if-gt v1, v2, :cond_a

    #@bd
    .line 1048
    div-int/lit8 v2, v1, 0xa

    #@bf
    add-int/lit8 v2, v2, 0x30

    #@c1
    int-to-char v2, v2

    #@c2
    invoke-virtual {p1, v2}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    #@c5
    .line 1049
    rem-int/lit8 v2, v1, 0xa

    #@c7
    add-int/lit8 v2, v2, 0x30

    #@c9
    int-to-char v2, v2

    #@ca
    invoke-virtual {p1, v2}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    #@cd
    goto/16 :goto_0

    #@cf
    .line 1051
    :cond_a
    div-int/lit8 v2, v1, 0x64

    #@d1
    add-int/lit8 v2, v2, 0x30

    #@d3
    int-to-char v2, v2

    #@d4
    invoke-virtual {p1, v2}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    #@d7
    .line 1052
    rem-int/lit8 v1, v1, 0x64

    #@d9
    .line 1053
    div-int/lit8 v2, v1, 0xa

    #@db
    add-int/lit8 v2, v2, 0x30

    #@dd
    int-to-char v2, v2

    #@de
    invoke-virtual {p1, v2}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    #@e1
    .line 1054
    rem-int/lit8 v2, v1, 0xa

    #@e3
    add-int/lit8 v2, v2, 0x30

    #@e5
    int-to-char v2, v2

    #@e6
    invoke-virtual {p1, v2}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;

    #@e9
    goto/16 :goto_0
.end method

.method public strictfp doubleValue()D
    .locals 42

    #@0
    .prologue
    .line 1319
    move-object/from16 v0, p0

    #@2
    iget v8, v0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@4
    const/16 v10, 0x10

    #@6
    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    #@9
    move-result v9

    #@a
    .line 1325
    .local v9, "kDigits":I
    move-object/from16 v0, p0

    #@c
    iget-object v8, v0, Ljava/lang/FloatingDecimal;->digits:[C

    #@e
    sget-object v10, Ljava/lang/FloatingDecimal;->infinity:[C

    #@10
    if-eq v8, v10, :cond_0

    #@12
    move-object/from16 v0, p0

    #@14
    iget-object v8, v0, Ljava/lang/FloatingDecimal;->digits:[C

    #@16
    sget-object v10, Ljava/lang/FloatingDecimal;->notANumber:[C

    #@18
    if-ne v8, v10, :cond_3

    #@1a
    .line 1326
    :cond_0
    move-object/from16 v0, p0

    #@1c
    iget-object v8, v0, Ljava/lang/FloatingDecimal;->digits:[C

    #@1e
    sget-object v10, Ljava/lang/FloatingDecimal;->notANumber:[C

    #@20
    if-ne v8, v10, :cond_1

    #@22
    .line 1327
    const-wide/high16 v38, 0x7ff8000000000000L    # NaN

    #@24
    return-wide v38

    #@25
    .line 1329
    :cond_1
    move-object/from16 v0, p0

    #@27
    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@29
    if-eqz v8, :cond_2

    #@2b
    const-wide/high16 v38, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@2d
    :goto_0
    return-wide v38

    #@2e
    :cond_2
    const-wide/high16 v38, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@30
    goto :goto_0

    #@31
    .line 1332
    :cond_3
    move-object/from16 v0, p0

    #@33
    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->mustSetRoundDir:Z

    #@35
    if-eqz v8, :cond_4

    #@37
    .line 1333
    const/4 v8, 0x0

    #@38
    move-object/from16 v0, p0

    #@3a
    iput v8, v0, Ljava/lang/FloatingDecimal;->roundDir:I

    #@3c
    .line 1339
    :cond_4
    move-object/from16 v0, p0

    #@3e
    iget-object v8, v0, Ljava/lang/FloatingDecimal;->digits:[C

    #@40
    const/4 v10, 0x0

    #@41
    aget-char v8, v8, v10

    #@43
    add-int/lit8 v27, v8, -0x30

    #@45
    .line 1340
    .local v27, "iValue":I
    const/16 v8, 0x9

    #@47
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    #@4a
    move-result v26

    #@4b
    .line 1341
    .local v26, "iDigits":I
    const/16 v25, 0x1

    #@4d
    .local v25, "i":I
    :goto_1
    move/from16 v0, v25

    #@4f
    move/from16 v1, v26

    #@51
    if-ge v0, v1, :cond_5

    #@53
    .line 1342
    mul-int/lit8 v8, v27, 0xa

    #@55
    move-object/from16 v0, p0

    #@57
    iget-object v10, v0, Ljava/lang/FloatingDecimal;->digits:[C

    #@59
    aget-char v10, v10, v25

    #@5b
    add-int/2addr v8, v10

    #@5c
    add-int/lit8 v27, v8, -0x30

    #@5e
    .line 1341
    add-int/lit8 v25, v25, 0x1

    #@60
    goto :goto_1

    #@61
    .line 1344
    :cond_5
    move/from16 v0, v27

    #@63
    int-to-long v6, v0

    #@64
    .line 1345
    .local v6, "lValue":J
    move/from16 v25, v26

    #@66
    :goto_2
    move/from16 v0, v25

    #@68
    if-ge v0, v9, :cond_6

    #@6a
    .line 1346
    const-wide/16 v38, 0xa

    #@6c
    mul-long v38, v38, v6

    #@6e
    move-object/from16 v0, p0

    #@70
    iget-object v8, v0, Ljava/lang/FloatingDecimal;->digits:[C

    #@72
    aget-char v8, v8, v25

    #@74
    add-int/lit8 v8, v8, -0x30

    #@76
    int-to-long v0, v8

    #@77
    move-wide/from16 v40, v0

    #@79
    add-long v6, v38, v40

    #@7b
    .line 1345
    add-int/lit8 v25, v25, 0x1

    #@7d
    goto :goto_2

    #@7e
    .line 1348
    :cond_6
    long-to-double v0, v6

    #@7f
    move-wide/from16 v20, v0

    #@81
    .line 1349
    .local v20, "dValue":D
    move-object/from16 v0, p0

    #@83
    iget v8, v0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@85
    sub-int v22, v8, v9

    #@87
    .line 1356
    .local v22, "exp":I
    move-object/from16 v0, p0

    #@89
    iget v8, v0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@8b
    const/16 v10, 0xf

    #@8d
    if-gt v8, v10, :cond_18

    #@8f
    .line 1367
    if-eqz v22, :cond_7

    #@91
    const-wide/16 v38, 0x0

    #@93
    cmpl-double v8, v20, v38

    #@95
    if-nez v8, :cond_9

    #@97
    .line 1368
    :cond_7
    move-object/from16 v0, p0

    #@99
    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@9b
    if-eqz v8, :cond_8

    #@9d
    move-wide/from16 v0, v20

    #@9f
    neg-double v0, v0

    #@a0
    move-wide/from16 v20, v0

    #@a2
    .end local v20    # "dValue":D
    :cond_8
    return-wide v20

    #@a3
    .line 1369
    .restart local v20    # "dValue":D
    :cond_9
    if-ltz v22, :cond_13

    #@a5
    .line 1370
    sget v8, Ljava/lang/FloatingDecimal;->maxSmallTen:I

    #@a7
    move/from16 v0, v22

    #@a9
    if-gt v0, v8, :cond_e

    #@ab
    .line 1375
    sget-object v8, Ljava/lang/FloatingDecimal;->small10pow:[D

    #@ad
    aget-wide v38, v8, v22

    #@af
    mul-double v30, v20, v38

    #@b1
    .line 1376
    .local v30, "rValue":D
    move-object/from16 v0, p0

    #@b3
    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->mustSetRoundDir:Z

    #@b5
    if-eqz v8, :cond_a

    #@b7
    .line 1377
    sget-object v8, Ljava/lang/FloatingDecimal;->small10pow:[D

    #@b9
    aget-wide v38, v8, v22

    #@bb
    div-double v36, v30, v38

    #@bd
    .line 1378
    .local v36, "tValue":D
    cmpl-double v8, v36, v20

    #@bf
    if-nez v8, :cond_c

    #@c1
    const/4 v8, 0x0

    #@c2
    :goto_3
    move-object/from16 v0, p0

    #@c4
    iput v8, v0, Ljava/lang/FloatingDecimal;->roundDir:I

    #@c6
    .line 1382
    .end local v36    # "tValue":D
    :cond_a
    move-object/from16 v0, p0

    #@c8
    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@ca
    if-eqz v8, :cond_b

    #@cc
    move-wide/from16 v0, v30

    #@ce
    neg-double v0, v0

    #@cf
    move-wide/from16 v30, v0

    #@d1
    .end local v30    # "rValue":D
    :cond_b
    return-wide v30

    #@d2
    .line 1379
    .restart local v30    # "rValue":D
    .restart local v36    # "tValue":D
    :cond_c
    cmpg-double v8, v36, v20

    #@d4
    if-gez v8, :cond_d

    #@d6
    const/4 v8, 0x1

    #@d7
    goto :goto_3

    #@d8
    .line 1380
    :cond_d
    const/4 v8, -0x1

    #@d9
    goto :goto_3

    #@da
    .line 1384
    .end local v30    # "rValue":D
    .end local v36    # "tValue":D
    :cond_e
    rsub-int/lit8 v32, v9, 0xf

    #@dc
    .line 1385
    .local v32, "slop":I
    sget v8, Ljava/lang/FloatingDecimal;->maxSmallTen:I

    #@de
    add-int v8, v8, v32

    #@e0
    move/from16 v0, v22

    #@e2
    if-gt v0, v8, :cond_18

    #@e4
    .line 1392
    sget-object v8, Ljava/lang/FloatingDecimal;->small10pow:[D

    #@e6
    aget-wide v38, v8, v32

    #@e8
    mul-double v20, v20, v38

    #@ea
    .line 1393
    sget-object v8, Ljava/lang/FloatingDecimal;->small10pow:[D

    #@ec
    sub-int v10, v22, v32

    #@ee
    aget-wide v38, v8, v10

    #@f0
    mul-double v30, v20, v38

    #@f2
    .line 1395
    .restart local v30    # "rValue":D
    move-object/from16 v0, p0

    #@f4
    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->mustSetRoundDir:Z

    #@f6
    if-eqz v8, :cond_f

    #@f8
    .line 1396
    sget-object v8, Ljava/lang/FloatingDecimal;->small10pow:[D

    #@fa
    sub-int v10, v22, v32

    #@fc
    aget-wide v38, v8, v10

    #@fe
    div-double v36, v30, v38

    #@100
    .line 1397
    .restart local v36    # "tValue":D
    cmpl-double v8, v36, v20

    #@102
    if-nez v8, :cond_11

    #@104
    const/4 v8, 0x0

    #@105
    :goto_4
    move-object/from16 v0, p0

    #@107
    iput v8, v0, Ljava/lang/FloatingDecimal;->roundDir:I

    #@109
    .line 1401
    .end local v36    # "tValue":D
    :cond_f
    move-object/from16 v0, p0

    #@10b
    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@10d
    if-eqz v8, :cond_10

    #@10f
    move-wide/from16 v0, v30

    #@111
    neg-double v0, v0

    #@112
    move-wide/from16 v30, v0

    #@114
    .end local v30    # "rValue":D
    :cond_10
    return-wide v30

    #@115
    .line 1398
    .restart local v30    # "rValue":D
    .restart local v36    # "tValue":D
    :cond_11
    cmpg-double v8, v36, v20

    #@117
    if-gez v8, :cond_12

    #@119
    const/4 v8, 0x1

    #@11a
    goto :goto_4

    #@11b
    .line 1399
    :cond_12
    const/4 v8, -0x1

    #@11c
    goto :goto_4

    #@11d
    .line 1407
    .end local v30    # "rValue":D
    .end local v32    # "slop":I
    .end local v36    # "tValue":D
    :cond_13
    sget v8, Ljava/lang/FloatingDecimal;->maxSmallTen:I

    #@11f
    neg-int v8, v8

    #@120
    move/from16 v0, v22

    #@122
    if-lt v0, v8, :cond_18

    #@124
    .line 1411
    sget-object v8, Ljava/lang/FloatingDecimal;->small10pow:[D

    #@126
    move/from16 v0, v22

    #@128
    neg-int v10, v0

    #@129
    aget-wide v38, v8, v10

    #@12b
    div-double v30, v20, v38

    #@12d
    .line 1412
    .restart local v30    # "rValue":D
    sget-object v8, Ljava/lang/FloatingDecimal;->small10pow:[D

    #@12f
    move/from16 v0, v22

    #@131
    neg-int v10, v0

    #@132
    aget-wide v38, v8, v10

    #@134
    mul-double v36, v30, v38

    #@136
    .line 1413
    .restart local v36    # "tValue":D
    move-object/from16 v0, p0

    #@138
    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->mustSetRoundDir:Z

    #@13a
    if-eqz v8, :cond_14

    #@13c
    .line 1414
    cmpl-double v8, v36, v20

    #@13e
    if-nez v8, :cond_16

    #@140
    const/4 v8, 0x0

    #@141
    :goto_5
    move-object/from16 v0, p0

    #@143
    iput v8, v0, Ljava/lang/FloatingDecimal;->roundDir:I

    #@145
    .line 1418
    :cond_14
    move-object/from16 v0, p0

    #@147
    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@149
    if-eqz v8, :cond_15

    #@14b
    move-wide/from16 v0, v30

    #@14d
    neg-double v0, v0

    #@14e
    move-wide/from16 v30, v0

    #@150
    .end local v30    # "rValue":D
    :cond_15
    return-wide v30

    #@151
    .line 1415
    .restart local v30    # "rValue":D
    :cond_16
    cmpg-double v8, v36, v20

    #@153
    if-gez v8, :cond_17

    #@155
    const/4 v8, 0x1

    #@156
    goto :goto_5

    #@157
    .line 1416
    :cond_17
    const/4 v8, -0x1

    #@158
    goto :goto_5

    #@159
    .line 1434
    .end local v30    # "rValue":D
    .end local v36    # "tValue":D
    :cond_18
    if-lez v22, :cond_26

    #@15b
    .line 1435
    move-object/from16 v0, p0

    #@15d
    iget v8, v0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@15f
    const/16 v10, 0x135

    #@161
    if-le v8, v10, :cond_1a

    #@163
    .line 1440
    move-object/from16 v0, p0

    #@165
    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@167
    if-eqz v8, :cond_19

    #@169
    const-wide/high16 v38, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@16b
    :goto_6
    return-wide v38

    #@16c
    :cond_19
    const-wide/high16 v38, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@16e
    goto :goto_6

    #@16f
    .line 1442
    :cond_1a
    and-int/lit8 v8, v22, 0xf

    #@171
    if-eqz v8, :cond_1b

    #@173
    .line 1443
    sget-object v8, Ljava/lang/FloatingDecimal;->small10pow:[D

    #@175
    and-int/lit8 v10, v22, 0xf

    #@177
    aget-wide v38, v8, v10

    #@179
    mul-double v20, v20, v38

    #@17b
    .line 1445
    :cond_1b
    shr-int/lit8 v22, v22, 0x4

    #@17d
    if-eqz v22, :cond_21

    #@17f
    .line 1447
    const/16 v28, 0x0

    #@181
    .local v28, "j":I
    :goto_7
    const/4 v8, 0x1

    #@182
    move/from16 v0, v22

    #@184
    if-le v0, v8, :cond_1d

    #@186
    .line 1448
    and-int/lit8 v8, v22, 0x1

    #@188
    if-eqz v8, :cond_1c

    #@18a
    .line 1449
    sget-object v8, Ljava/lang/FloatingDecimal;->big10pow:[D

    #@18c
    aget-wide v38, v8, v28

    #@18e
    mul-double v20, v20, v38

    #@190
    .line 1447
    :cond_1c
    add-int/lit8 v28, v28, 0x1

    #@192
    shr-int/lit8 v22, v22, 0x1

    #@194
    goto :goto_7

    #@195
    .line 1457
    :cond_1d
    sget-object v8, Ljava/lang/FloatingDecimal;->big10pow:[D

    #@197
    aget-wide v38, v8, v28

    #@199
    mul-double v34, v20, v38

    #@19b
    .line 1458
    .local v34, "t":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->isInfinite(D)Z

    #@19e
    move-result v8

    #@19f
    if-eqz v8, :cond_20

    #@1a1
    .line 1471
    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    #@1a3
    div-double v34, v20, v38

    #@1a5
    .line 1472
    sget-object v8, Ljava/lang/FloatingDecimal;->big10pow:[D

    #@1a7
    aget-wide v38, v8, v28

    #@1a9
    mul-double v34, v34, v38

    #@1ab
    .line 1473
    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->isInfinite(D)Z

    #@1ae
    move-result v8

    #@1af
    if-eqz v8, :cond_1f

    #@1b1
    .line 1474
    move-object/from16 v0, p0

    #@1b3
    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@1b5
    if-eqz v8, :cond_1e

    #@1b7
    const-wide/high16 v38, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@1b9
    :goto_8
    return-wide v38

    #@1ba
    :cond_1e
    const-wide/high16 v38, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@1bc
    goto :goto_8

    #@1bd
    .line 1476
    :cond_1f
    const-wide v34, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@1c2
    .line 1478
    :cond_20
    move-wide/from16 v20, v34

    #@1c4
    .line 1536
    .end local v28    # "j":I
    .end local v34    # "t":D
    :cond_21
    :goto_9
    new-instance v5, Lsun/misc/FDBigInt;

    #@1c6
    move-object/from16 v0, p0

    #@1c8
    iget-object v8, v0, Ljava/lang/FloatingDecimal;->digits:[C

    #@1ca
    move-object/from16 v0, p0

    #@1cc
    iget v10, v0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@1ce
    invoke-direct/range {v5 .. v10}, Lsun/misc/FDBigInt;-><init>(J[CII)V

    #@1d1
    .line 1537
    .local v5, "bigD0":Lsun/misc/FDBigInt;
    move-object/from16 v0, p0

    #@1d3
    iget v8, v0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@1d5
    move-object/from16 v0, p0

    #@1d7
    iget v10, v0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@1d9
    sub-int v22, v8, v10

    #@1db
    .line 1544
    :cond_22
    move-object/from16 v0, p0

    #@1dd
    move-wide/from16 v1, v20

    #@1df
    invoke-direct {v0, v1, v2}, Ljava/lang/FloatingDecimal;->doubleToBigInt(D)Lsun/misc/FDBigInt;

    #@1e2
    move-result-object v15

    #@1e3
    .line 1558
    .local v15, "bigB":Lsun/misc/FDBigInt;
    if-ltz v22, :cond_2f

    #@1e5
    .line 1559
    const/4 v11, 0x0

    #@1e6
    .local v11, "B5":I
    const/4 v4, 0x0

    #@1e7
    .line 1560
    .local v4, "B2":I
    move/from16 v13, v22

    #@1e9
    .local v13, "D5":I
    move/from16 v12, v22

    #@1eb
    .line 1565
    .local v12, "D2":I
    :goto_a
    move-object/from16 v0, p0

    #@1ed
    iget v8, v0, Ljava/lang/FloatingDecimal;->bigIntExp:I

    #@1ef
    if-ltz v8, :cond_30

    #@1f1
    .line 1566
    move-object/from16 v0, p0

    #@1f3
    iget v8, v0, Ljava/lang/FloatingDecimal;->bigIntExp:I

    #@1f5
    add-int/2addr v4, v8

    #@1f6
    .line 1570
    :goto_b
    move v14, v4

    #@1f7
    .line 1574
    .local v14, "Ulp2":I
    move-object/from16 v0, p0

    #@1f9
    iget v8, v0, Ljava/lang/FloatingDecimal;->bigIntExp:I

    #@1fb
    move-object/from16 v0, p0

    #@1fd
    iget v10, v0, Ljava/lang/FloatingDecimal;->bigIntNBits:I

    #@1ff
    add-int/2addr v8, v10

    #@200
    const/16 v10, -0x3fe

    #@202
    if-gt v8, v10, :cond_31

    #@204
    .line 1578
    move-object/from16 v0, p0

    #@206
    iget v8, v0, Ljava/lang/FloatingDecimal;->bigIntExp:I

    #@208
    add-int/lit16 v8, v8, 0x3ff

    #@20a
    add-int/lit8 v24, v8, 0x34

    #@20c
    .line 1582
    .local v24, "hulpbias":I
    :goto_c
    add-int v4, v4, v24

    #@20e
    .line 1583
    add-int v12, v12, v24

    #@210
    .line 1586
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    #@213
    move-result v8

    #@214
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    #@217
    move-result v18

    #@218
    .line 1587
    .local v18, "common2":I
    sub-int v4, v4, v18

    #@21a
    .line 1588
    sub-int v12, v12, v18

    #@21c
    .line 1589
    sub-int v14, v14, v18

    #@21e
    .line 1591
    invoke-static {v15, v11, v4}, Ljava/lang/FloatingDecimal;->multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;

    #@221
    move-result-object v15

    #@222
    .line 1592
    new-instance v8, Lsun/misc/FDBigInt;

    #@224
    invoke-direct {v8, v5}, Lsun/misc/FDBigInt;-><init>(Lsun/misc/FDBigInt;)V

    #@227
    invoke-static {v8, v13, v12}, Ljava/lang/FloatingDecimal;->multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;

    #@22a
    move-result-object v16

    #@22b
    .line 1610
    .local v16, "bigD":Lsun/misc/FDBigInt;
    invoke-virtual/range {v15 .. v16}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    #@22e
    move-result v17

    #@22f
    .local v17, "cmpResult":I
    if-lez v17, :cond_32

    #@231
    .line 1611
    const/16 v29, 0x1

    #@233
    .line 1612
    .local v29, "overvalue":Z
    invoke-virtual/range {v15 .. v16}, Lsun/misc/FDBigInt;->sub(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    #@236
    move-result-object v19

    #@237
    .line 1613
    .local v19, "diff":Lsun/misc/FDBigInt;
    move-object/from16 v0, p0

    #@239
    iget v8, v0, Ljava/lang/FloatingDecimal;->bigIntNBits:I

    #@23b
    const/4 v10, 0x1

    #@23c
    if-ne v8, v10, :cond_23

    #@23e
    move-object/from16 v0, p0

    #@240
    iget v8, v0, Ljava/lang/FloatingDecimal;->bigIntExp:I

    #@242
    const/16 v10, -0x3fe

    #@244
    if-le v8, v10, :cond_23

    #@246
    .line 1618
    add-int/lit8 v14, v14, -0x1

    #@248
    .line 1619
    if-gez v14, :cond_23

    #@24a
    .line 1622
    const/4 v14, 0x0

    #@24b
    .line 1623
    const/4 v8, 0x1

    #@24c
    move-object/from16 v0, v19

    #@24e
    invoke-virtual {v0, v8}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    #@251
    .line 1634
    :cond_23
    :goto_d
    invoke-static {v11, v14}, Ljava/lang/FloatingDecimal;->constructPow52(II)Lsun/misc/FDBigInt;

    #@254
    move-result-object v23

    #@255
    .line 1635
    .local v23, "halfUlp":Lsun/misc/FDBigInt;
    move-object/from16 v0, v19

    #@257
    move-object/from16 v1, v23

    #@259
    invoke-virtual {v0, v1}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    #@25c
    move-result v17

    #@25d
    if-gez v17, :cond_34

    #@25f
    .line 1638
    move-object/from16 v0, p0

    #@261
    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->mustSetRoundDir:Z

    #@263
    if-eqz v8, :cond_24

    #@265
    .line 1639
    if-eqz v29, :cond_33

    #@267
    const/4 v8, -0x1

    #@268
    :goto_e
    move-object/from16 v0, p0

    #@26a
    iput v8, v0, Ljava/lang/FloatingDecimal;->roundDir:I

    #@26c
    .line 1663
    .end local v19    # "diff":Lsun/misc/FDBigInt;
    .end local v23    # "halfUlp":Lsun/misc/FDBigInt;
    .end local v29    # "overvalue":Z
    :cond_24
    :goto_f
    move-object/from16 v0, p0

    #@26e
    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@270
    if-eqz v8, :cond_25

    #@272
    move-wide/from16 v0, v20

    #@274
    neg-double v0, v0

    #@275
    move-wide/from16 v20, v0

    #@277
    .end local v20    # "dValue":D
    :cond_25
    return-wide v20

    #@278
    .line 1480
    .end local v4    # "B2":I
    .end local v5    # "bigD0":Lsun/misc/FDBigInt;
    .end local v11    # "B5":I
    .end local v12    # "D2":I
    .end local v13    # "D5":I
    .end local v14    # "Ulp2":I
    .end local v15    # "bigB":Lsun/misc/FDBigInt;
    .end local v16    # "bigD":Lsun/misc/FDBigInt;
    .end local v17    # "cmpResult":I
    .end local v18    # "common2":I
    .end local v24    # "hulpbias":I
    .restart local v20    # "dValue":D
    :cond_26
    if-gez v22, :cond_21

    #@27a
    .line 1481
    move/from16 v0, v22

    #@27c
    neg-int v0, v0

    #@27d
    move/from16 v22, v0

    #@27f
    .line 1482
    move-object/from16 v0, p0

    #@281
    iget v8, v0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@283
    const/16 v10, -0x145

    #@285
    if-ge v8, v10, :cond_28

    #@287
    .line 1487
    move-object/from16 v0, p0

    #@289
    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@28b
    if-eqz v8, :cond_27

    #@28d
    const-wide/high16 v38, -0x8000000000000000L

    #@28f
    :goto_10
    return-wide v38

    #@290
    :cond_27
    const-wide/16 v38, 0x0

    #@292
    goto :goto_10

    #@293
    .line 1489
    :cond_28
    and-int/lit8 v8, v22, 0xf

    #@295
    if-eqz v8, :cond_29

    #@297
    .line 1490
    sget-object v8, Ljava/lang/FloatingDecimal;->small10pow:[D

    #@299
    and-int/lit8 v10, v22, 0xf

    #@29b
    aget-wide v38, v8, v10

    #@29d
    div-double v20, v20, v38

    #@29f
    .line 1492
    :cond_29
    shr-int/lit8 v22, v22, 0x4

    #@2a1
    if-eqz v22, :cond_21

    #@2a3
    .line 1494
    const/16 v28, 0x0

    #@2a5
    .restart local v28    # "j":I
    :goto_11
    const/4 v8, 0x1

    #@2a6
    move/from16 v0, v22

    #@2a8
    if-le v0, v8, :cond_2b

    #@2aa
    .line 1495
    and-int/lit8 v8, v22, 0x1

    #@2ac
    if-eqz v8, :cond_2a

    #@2ae
    .line 1496
    sget-object v8, Ljava/lang/FloatingDecimal;->tiny10pow:[D

    #@2b0
    aget-wide v38, v8, v28

    #@2b2
    mul-double v20, v20, v38

    #@2b4
    .line 1494
    :cond_2a
    add-int/lit8 v28, v28, 0x1

    #@2b6
    shr-int/lit8 v22, v22, 0x1

    #@2b8
    goto :goto_11

    #@2b9
    .line 1504
    :cond_2b
    sget-object v8, Ljava/lang/FloatingDecimal;->tiny10pow:[D

    #@2bb
    aget-wide v38, v8, v28

    #@2bd
    mul-double v34, v20, v38

    #@2bf
    .line 1505
    .restart local v34    # "t":D
    const-wide/16 v38, 0x0

    #@2c1
    cmpl-double v8, v34, v38

    #@2c3
    if-nez v8, :cond_2e

    #@2c5
    .line 1518
    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    #@2c7
    mul-double v34, v20, v38

    #@2c9
    .line 1519
    sget-object v8, Ljava/lang/FloatingDecimal;->tiny10pow:[D

    #@2cb
    aget-wide v38, v8, v28

    #@2cd
    mul-double v34, v34, v38

    #@2cf
    .line 1520
    const-wide/16 v38, 0x0

    #@2d1
    cmpl-double v8, v34, v38

    #@2d3
    if-nez v8, :cond_2d

    #@2d5
    .line 1521
    move-object/from16 v0, p0

    #@2d7
    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@2d9
    if-eqz v8, :cond_2c

    #@2db
    const-wide/high16 v38, -0x8000000000000000L

    #@2dd
    :goto_12
    return-wide v38

    #@2de
    :cond_2c
    const-wide/16 v38, 0x0

    #@2e0
    goto :goto_12

    #@2e1
    .line 1523
    :cond_2d
    const-wide/16 v34, 0x1

    #@2e3
    .line 1525
    :cond_2e
    move-wide/from16 v20, v34

    #@2e5
    goto/16 :goto_9

    #@2e7
    .line 1562
    .end local v28    # "j":I
    .end local v34    # "t":D
    .restart local v5    # "bigD0":Lsun/misc/FDBigInt;
    .restart local v15    # "bigB":Lsun/misc/FDBigInt;
    :cond_2f
    move/from16 v0, v22

    #@2e9
    neg-int v11, v0

    #@2ea
    .restart local v11    # "B5":I
    move v4, v11

    #@2eb
    .line 1563
    .restart local v4    # "B2":I
    const/4 v13, 0x0

    #@2ec
    .restart local v13    # "D5":I
    const/4 v12, 0x0

    #@2ed
    .restart local v12    # "D2":I
    goto/16 :goto_a

    #@2ef
    .line 1568
    :cond_30
    move-object/from16 v0, p0

    #@2f1
    iget v8, v0, Ljava/lang/FloatingDecimal;->bigIntExp:I

    #@2f3
    sub-int/2addr v12, v8

    #@2f4
    goto/16 :goto_b

    #@2f6
    .line 1580
    .restart local v14    # "Ulp2":I
    :cond_31
    move-object/from16 v0, p0

    #@2f8
    iget v8, v0, Ljava/lang/FloatingDecimal;->bigIntNBits:I

    #@2fa
    rsub-int/lit8 v24, v8, 0x36

    #@2fc
    .restart local v24    # "hulpbias":I
    goto/16 :goto_c

    #@2fe
    .line 1626
    .restart local v16    # "bigD":Lsun/misc/FDBigInt;
    .restart local v17    # "cmpResult":I
    .restart local v18    # "common2":I
    :cond_32
    if-gez v17, :cond_24

    #@300
    .line 1627
    const/16 v29, 0x0

    #@302
    .line 1628
    .restart local v29    # "overvalue":Z
    move-object/from16 v0, v16

    #@304
    invoke-virtual {v0, v15}, Lsun/misc/FDBigInt;->sub(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    #@307
    move-result-object v19

    #@308
    .restart local v19    # "diff":Lsun/misc/FDBigInt;
    goto/16 :goto_d

    #@30a
    .line 1639
    .restart local v23    # "halfUlp":Lsun/misc/FDBigInt;
    :cond_33
    const/4 v8, 0x1

    #@30b
    goto/16 :goto_e

    #@30d
    .line 1642
    :cond_34
    if-nez v17, :cond_36

    #@30f
    .line 1645
    move-wide/from16 v0, v20

    #@311
    move/from16 v2, v29

    #@313
    invoke-static {v0, v1, v2}, Ljava/lang/FloatingDecimal;->ulp(DZ)D

    #@316
    move-result-wide v38

    #@317
    const-wide/high16 v40, 0x3fe0000000000000L    # 0.5

    #@319
    mul-double v38, v38, v40

    #@31b
    add-double v20, v20, v38

    #@31d
    .line 1647
    move-object/from16 v0, p0

    #@31f
    iget-boolean v8, v0, Ljava/lang/FloatingDecimal;->mustSetRoundDir:Z

    #@321
    if-eqz v8, :cond_24

    #@323
    .line 1648
    if-eqz v29, :cond_35

    #@325
    const/4 v8, -0x1

    #@326
    :goto_13
    move-object/from16 v0, p0

    #@328
    iput v8, v0, Ljava/lang/FloatingDecimal;->roundDir:I

    #@32a
    goto/16 :goto_f

    #@32c
    :cond_35
    const/4 v8, 0x1

    #@32d
    goto :goto_13

    #@32e
    .line 1656
    :cond_36
    move-wide/from16 v0, v20

    #@330
    move/from16 v2, v29

    #@332
    invoke-static {v0, v1, v2}, Ljava/lang/FloatingDecimal;->ulp(DZ)D

    #@335
    move-result-wide v38

    #@336
    add-double v20, v20, v38

    #@338
    .line 1657
    const-wide/16 v38, 0x0

    #@33a
    cmpl-double v8, v20, v38

    #@33c
    if-eqz v8, :cond_24

    #@33e
    const-wide/high16 v38, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@340
    cmpl-double v8, v20, v38

    #@342
    if-nez v8, :cond_22

    #@344
    goto/16 :goto_f
.end method

.method public strictfp floatValue()F
    .locals 14

    #@0
    .prologue
    .line 1678
    iget v10, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@2
    const/16 v11, 0x8

    #@4
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v6

    #@8
    .line 1683
    .local v6, "kDigits":I
    iget-object v10, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@a
    sget-object v11, Ljava/lang/FloatingDecimal;->infinity:[C

    #@c
    if-eq v10, v11, :cond_0

    #@e
    iget-object v10, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@10
    sget-object v11, Ljava/lang/FloatingDecimal;->notANumber:[C

    #@12
    if-ne v10, v11, :cond_3

    #@14
    .line 1684
    :cond_0
    iget-object v10, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@16
    sget-object v11, Ljava/lang/FloatingDecimal;->notANumber:[C

    #@18
    if-ne v10, v11, :cond_1

    #@1a
    .line 1685
    const/high16 v10, 0x7fc00000    # NaNf

    #@1c
    return v10

    #@1d
    .line 1687
    :cond_1
    iget-boolean v10, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@1f
    if-eqz v10, :cond_2

    #@21
    const/high16 v10, -0x800000    # Float.NEGATIVE_INFINITY

    #@23
    :goto_0
    return v10

    #@24
    :cond_2
    const/high16 v10, 0x7f800000    # Float.POSITIVE_INFINITY

    #@26
    goto :goto_0

    #@27
    .line 1693
    :cond_3
    iget-object v10, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@29
    const/4 v11, 0x0

    #@2a
    aget-char v10, v10, v11

    #@2c
    add-int/lit8 v5, v10, -0x30

    #@2e
    .line 1694
    .local v5, "iValue":I
    const/4 v4, 0x1

    #@2f
    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_4

    #@31
    .line 1695
    mul-int/lit8 v10, v5, 0xa

    #@33
    iget-object v11, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@35
    aget-char v11, v11, v4

    #@37
    add-int/2addr v10, v11

    #@38
    add-int/lit8 v5, v10, -0x30

    #@3a
    .line 1694
    add-int/lit8 v4, v4, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 1697
    :cond_4
    int-to-float v3, v5

    #@3e
    .line 1698
    .local v3, "fValue":F
    iget v10, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@40
    sub-int v2, v10, v6

    #@42
    .line 1705
    .local v2, "exp":I
    iget v10, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@44
    const/4 v11, 0x7

    #@45
    if-gt v10, v11, :cond_d

    #@47
    .line 1716
    if-eqz v2, :cond_5

    #@49
    const/4 v10, 0x0

    #@4a
    cmpl-float v10, v3, v10

    #@4c
    if-nez v10, :cond_7

    #@4e
    .line 1717
    :cond_5
    iget-boolean v10, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@50
    if-eqz v10, :cond_6

    #@52
    neg-float v3, v3

    #@53
    .end local v3    # "fValue":F
    :cond_6
    return v3

    #@54
    .line 1718
    .restart local v3    # "fValue":F
    :cond_7
    if-ltz v2, :cond_b

    #@56
    .line 1719
    sget v10, Ljava/lang/FloatingDecimal;->singleMaxSmallTen:I

    #@58
    if-gt v2, v10, :cond_9

    #@5a
    .line 1724
    sget-object v10, Ljava/lang/FloatingDecimal;->singleSmall10pow:[F

    #@5c
    aget v10, v10, v2

    #@5e
    mul-float/2addr v3, v10

    #@5f
    .line 1725
    iget-boolean v10, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@61
    if-eqz v10, :cond_8

    #@63
    neg-float v3, v3

    #@64
    .end local v3    # "fValue":F
    :cond_8
    return v3

    #@65
    .line 1727
    .restart local v3    # "fValue":F
    :cond_9
    rsub-int/lit8 v7, v6, 0x7

    #@67
    .line 1728
    .local v7, "slop":I
    sget v10, Ljava/lang/FloatingDecimal;->singleMaxSmallTen:I

    #@69
    add-int/2addr v10, v7

    #@6a
    if-gt v2, v10, :cond_10

    #@6c
    .line 1735
    sget-object v10, Ljava/lang/FloatingDecimal;->singleSmall10pow:[F

    #@6e
    aget v10, v10, v7

    #@70
    mul-float/2addr v3, v10

    #@71
    .line 1736
    sget-object v10, Ljava/lang/FloatingDecimal;->singleSmall10pow:[F

    #@73
    sub-int v11, v2, v7

    #@75
    aget v10, v10, v11

    #@77
    mul-float/2addr v3, v10

    #@78
    .line 1737
    iget-boolean v10, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@7a
    if-eqz v10, :cond_a

    #@7c
    neg-float v3, v3

    #@7d
    .end local v3    # "fValue":F
    :cond_a
    return v3

    #@7e
    .line 1743
    .end local v7    # "slop":I
    .restart local v3    # "fValue":F
    :cond_b
    sget v10, Ljava/lang/FloatingDecimal;->singleMaxSmallTen:I

    #@80
    neg-int v10, v10

    #@81
    if-lt v2, v10, :cond_10

    #@83
    .line 1747
    sget-object v10, Ljava/lang/FloatingDecimal;->singleSmall10pow:[F

    #@85
    neg-int v11, v2

    #@86
    aget v10, v10, v11

    #@88
    div-float/2addr v3, v10

    #@89
    .line 1748
    iget-boolean v10, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@8b
    if-eqz v10, :cond_c

    #@8d
    neg-float v3, v3

    #@8e
    .end local v3    # "fValue":F
    :cond_c
    return v3

    #@8f
    .line 1754
    .restart local v3    # "fValue":F
    :cond_d
    iget v10, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@91
    iget v11, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@93
    if-lt v10, v11, :cond_10

    #@95
    iget v10, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@97
    iget v11, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@99
    add-int/2addr v10, v11

    #@9a
    const/16 v11, 0xf

    #@9c
    if-gt v10, v11, :cond_10

    #@9e
    .line 1764
    int-to-long v8, v5

    #@9f
    .line 1765
    .local v8, "lValue":J
    move v4, v6

    #@a0
    :goto_2
    iget v10, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@a2
    if-ge v4, v10, :cond_e

    #@a4
    .line 1766
    const-wide/16 v10, 0xa

    #@a6
    mul-long/2addr v10, v8

    #@a7
    iget-object v12, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@a9
    aget-char v12, v12, v4

    #@ab
    add-int/lit8 v12, v12, -0x30

    #@ad
    int-to-long v12, v12

    #@ae
    add-long v8, v10, v12

    #@b0
    .line 1765
    add-int/lit8 v4, v4, 0x1

    #@b2
    goto :goto_2

    #@b3
    .line 1768
    :cond_e
    long-to-double v0, v8

    #@b4
    .line 1769
    .local v0, "dValue":D
    iget v10, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@b6
    iget v11, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@b8
    sub-int v2, v10, v11

    #@ba
    .line 1770
    sget-object v10, Ljava/lang/FloatingDecimal;->small10pow:[D

    #@bc
    aget-wide v10, v10, v2

    #@be
    mul-double/2addr v0, v10

    #@bf
    .line 1771
    double-to-float v3, v0

    #@c0
    .line 1772
    iget-boolean v10, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@c2
    if-eqz v10, :cond_f

    #@c4
    neg-float v3, v3

    #@c5
    .end local v3    # "fValue":F
    :cond_f
    return v3

    #@c6
    .line 1784
    .end local v0    # "dValue":D
    .end local v8    # "lValue":J
    .restart local v3    # "fValue":F
    :cond_10
    iget v10, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@c8
    const/16 v11, 0x27

    #@ca
    if-le v10, v11, :cond_12

    #@cc
    .line 1789
    iget-boolean v10, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@ce
    if-eqz v10, :cond_11

    #@d0
    const/high16 v10, -0x800000    # Float.NEGATIVE_INFINITY

    #@d2
    :goto_3
    return v10

    #@d3
    :cond_11
    const/high16 v10, 0x7f800000    # Float.POSITIVE_INFINITY

    #@d5
    goto :goto_3

    #@d6
    .line 1790
    :cond_12
    iget v10, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@d8
    const/16 v11, -0x2e

    #@da
    if-ge v10, v11, :cond_14

    #@dc
    .line 1795
    iget-boolean v10, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@de
    if-eqz v10, :cond_13

    #@e0
    const/high16 v10, -0x80000000

    #@e2
    :goto_4
    return v10

    #@e3
    :cond_13
    const/4 v10, 0x0

    #@e4
    goto :goto_4

    #@e5
    .line 1810
    :cond_14
    iget-boolean v10, p0, Ljava/lang/FloatingDecimal;->fromHex:Z

    #@e7
    if-eqz v10, :cond_15

    #@e9
    const/4 v10, 0x0

    #@ea
    :goto_5
    iput-boolean v10, p0, Ljava/lang/FloatingDecimal;->mustSetRoundDir:Z

    #@ec
    .line 1811
    invoke-virtual {p0}, Ljava/lang/FloatingDecimal;->doubleValue()D

    #@ef
    move-result-wide v0

    #@f0
    .line 1812
    .restart local v0    # "dValue":D
    invoke-virtual {p0, v0, v1}, Ljava/lang/FloatingDecimal;->stickyRound(D)F

    #@f3
    move-result v10

    #@f4
    return v10

    #@f5
    .line 1810
    .end local v0    # "dValue":D
    :cond_15
    const/4 v10, 0x1

    #@f6
    goto :goto_5
.end method

.method public loadDouble(D)Ljava/lang/FloatingDecimal;
    .locals 11
    .param p1, "d"    # D

    #@0
    .prologue
    .line 408
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@3
    move-result-wide v2

    #@4
    .line 413
    .local v2, "dBits":J
    const/4 v6, 0x0

    #@5
    iput-boolean v6, p0, Ljava/lang/FloatingDecimal;->mustSetRoundDir:Z

    #@7
    .line 414
    const/4 v6, 0x0

    #@8
    iput-boolean v6, p0, Ljava/lang/FloatingDecimal;->fromHex:Z

    #@a
    .line 415
    const/4 v6, 0x0

    #@b
    iput v6, p0, Ljava/lang/FloatingDecimal;->roundDir:I

    #@d
    .line 418
    const-wide/high16 v6, -0x8000000000000000L

    #@f
    and-long/2addr v6, v2

    #@10
    const-wide/16 v8, 0x0

    #@12
    cmp-long v6, v6, v8

    #@14
    if-eqz v6, :cond_0

    #@16
    .line 419
    const/4 v6, 0x1

    #@17
    iput-boolean v6, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@19
    .line 420
    const-wide/high16 v6, -0x8000000000000000L

    #@1b
    xor-long/2addr v2, v6

    #@1c
    .line 426
    :goto_0
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@1e
    and-long/2addr v6, v2

    #@1f
    const/16 v8, 0x34

    #@21
    shr-long/2addr v6, v8

    #@22
    long-to-int v0, v6

    #@23
    .line 427
    .local v0, "binExp":I
    const-wide v6, 0xfffffffffffffL

    #@28
    and-long v4, v2, v6

    #@2a
    .line 428
    .local v4, "fractBits":J
    const/16 v6, 0x7ff

    #@2c
    if-ne v0, v6, :cond_2

    #@2e
    .line 429
    const/4 v6, 0x1

    #@2f
    iput-boolean v6, p0, Ljava/lang/FloatingDecimal;->isExceptional:Z

    #@31
    .line 430
    const-wide/16 v6, 0x0

    #@33
    cmp-long v6, v4, v6

    #@35
    if-nez v6, :cond_1

    #@37
    .line 431
    sget-object v6, Ljava/lang/FloatingDecimal;->infinity:[C

    #@39
    iput-object v6, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@3b
    .line 436
    :goto_1
    iget-object v6, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@3d
    array-length v6, v6

    #@3e
    iput v6, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@40
    .line 437
    return-object p0

    #@41
    .line 422
    .end local v0    # "binExp":I
    .end local v4    # "fractBits":J
    :cond_0
    const/4 v6, 0x0

    #@42
    iput-boolean v6, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@44
    goto :goto_0

    #@45
    .line 433
    .restart local v0    # "binExp":I
    .restart local v4    # "fractBits":J
    :cond_1
    sget-object v6, Ljava/lang/FloatingDecimal;->notANumber:[C

    #@47
    iput-object v6, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@49
    .line 434
    const/4 v6, 0x0

    #@4a
    iput-boolean v6, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@4c
    goto :goto_1

    #@4d
    .line 439
    :cond_2
    const/4 v6, 0x0

    #@4e
    iput-boolean v6, p0, Ljava/lang/FloatingDecimal;->isExceptional:Z

    #@50
    .line 444
    if-nez v0, :cond_5

    #@52
    .line 445
    const-wide/16 v6, 0x0

    #@54
    cmp-long v6, v4, v6

    #@56
    if-nez v6, :cond_3

    #@58
    .line 447
    const/4 v6, 0x0

    #@59
    iput v6, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@5b
    .line 448
    sget-object v6, Ljava/lang/FloatingDecimal;->zero:[C

    #@5d
    iput-object v6, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@5f
    .line 449
    const/4 v6, 0x1

    #@60
    iput v6, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@62
    .line 450
    return-object p0

    #@63
    .line 452
    :cond_3
    :goto_2
    const-wide/high16 v6, 0x10000000000000L

    #@65
    and-long/2addr v6, v4

    #@66
    const-wide/16 v8, 0x0

    #@68
    cmp-long v6, v6, v8

    #@6a
    if-nez v6, :cond_4

    #@6c
    .line 453
    const/4 v6, 0x1

    #@6d
    shl-long/2addr v4, v6

    #@6e
    .line 454
    add-int/lit8 v0, v0, -0x1

    #@70
    goto :goto_2

    #@71
    .line 456
    :cond_4
    add-int/lit8 v6, v0, 0x34

    #@73
    add-int/lit8 v1, v6, 0x1

    #@75
    .line 457
    .local v1, "nSignificantBits":I
    add-int/lit8 v0, v0, 0x1

    #@77
    .line 462
    :goto_3
    add-int/lit16 v0, v0, -0x3ff

    #@79
    .line 464
    invoke-direct {p0, v0, v4, v5, v1}, Ljava/lang/FloatingDecimal;->dtoa(IJI)V

    #@7c
    .line 465
    return-object p0

    #@7d
    .line 459
    .end local v1    # "nSignificantBits":I
    :cond_5
    const-wide/high16 v6, 0x10000000000000L

    #@7f
    or-long/2addr v4, v6

    #@80
    .line 460
    const/16 v1, 0x35

    #@82
    .restart local v1    # "nSignificantBits":I
    goto :goto_3
.end method

.method public loadFloat(F)Ljava/lang/FloatingDecimal;
    .locals 9
    .param p1, "f"    # F

    #@0
    .prologue
    const/high16 v7, 0x800000

    #@2
    const/high16 v6, -0x80000000

    #@4
    const/4 v5, 0x1

    #@5
    const/4 v8, 0x0

    #@6
    .line 472
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@9
    move-result v1

    #@a
    .line 477
    .local v1, "fBits":I
    iput-boolean v8, p0, Ljava/lang/FloatingDecimal;->mustSetRoundDir:Z

    #@c
    .line 478
    iput-boolean v8, p0, Ljava/lang/FloatingDecimal;->fromHex:Z

    #@e
    .line 479
    iput v8, p0, Ljava/lang/FloatingDecimal;->roundDir:I

    #@10
    .line 482
    and-int v4, v1, v6

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 483
    iput-boolean v5, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@16
    .line 484
    xor-int/2addr v1, v6

    #@17
    .line 490
    :goto_0
    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    #@19
    and-int/2addr v4, v1

    #@1a
    shr-int/lit8 v0, v4, 0x17

    #@1c
    .line 491
    .local v0, "binExp":I
    const v4, 0x7fffff

    #@1f
    and-int v2, v1, v4

    #@21
    .line 492
    .local v2, "fractBits":I
    const/16 v4, 0xff

    #@23
    if-ne v0, v4, :cond_2

    #@25
    .line 493
    iput-boolean v5, p0, Ljava/lang/FloatingDecimal;->isExceptional:Z

    #@27
    .line 494
    int-to-long v4, v2

    #@28
    const-wide/16 v6, 0x0

    #@2a
    cmp-long v4, v4, v6

    #@2c
    if-nez v4, :cond_1

    #@2e
    .line 495
    sget-object v4, Ljava/lang/FloatingDecimal;->infinity:[C

    #@30
    iput-object v4, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@32
    .line 500
    :goto_1
    iget-object v4, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@34
    array-length v4, v4

    #@35
    iput v4, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@37
    .line 501
    return-object p0

    #@38
    .line 486
    .end local v0    # "binExp":I
    .end local v2    # "fractBits":I
    :cond_0
    iput-boolean v8, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@3a
    goto :goto_0

    #@3b
    .line 497
    .restart local v0    # "binExp":I
    .restart local v2    # "fractBits":I
    :cond_1
    sget-object v4, Ljava/lang/FloatingDecimal;->notANumber:[C

    #@3d
    iput-object v4, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@3f
    .line 498
    iput-boolean v8, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@41
    goto :goto_1

    #@42
    .line 503
    :cond_2
    iput-boolean v8, p0, Ljava/lang/FloatingDecimal;->isExceptional:Z

    #@44
    .line 508
    if-nez v0, :cond_5

    #@46
    .line 509
    if-nez v2, :cond_3

    #@48
    .line 511
    iput v8, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@4a
    .line 512
    sget-object v4, Ljava/lang/FloatingDecimal;->zero:[C

    #@4c
    iput-object v4, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@4e
    .line 513
    iput v5, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@50
    .line 514
    return-object p0

    #@51
    .line 516
    :cond_3
    :goto_2
    and-int v4, v2, v7

    #@53
    if-nez v4, :cond_4

    #@55
    .line 517
    shl-int/lit8 v2, v2, 0x1

    #@57
    .line 518
    add-int/lit8 v0, v0, -0x1

    #@59
    goto :goto_2

    #@5a
    .line 520
    :cond_4
    add-int/lit8 v4, v0, 0x17

    #@5c
    add-int/lit8 v3, v4, 0x1

    #@5e
    .line 521
    .local v3, "nSignificantBits":I
    add-int/lit8 v0, v0, 0x1

    #@60
    .line 526
    :goto_3
    add-int/lit8 v0, v0, -0x7f

    #@62
    .line 528
    int-to-long v4, v2

    #@63
    const/16 v6, 0x1d

    #@65
    shl-long/2addr v4, v6

    #@66
    invoke-direct {p0, v0, v4, v5, v3}, Ljava/lang/FloatingDecimal;->dtoa(IJI)V

    #@69
    .line 529
    return-object p0

    #@6a
    .line 523
    .end local v3    # "nSignificantBits":I
    :cond_5
    or-int/2addr v2, v7

    #@6b
    .line 524
    const/16 v3, 0x18

    #@6d
    .restart local v3    # "nSignificantBits":I
    goto :goto_3
.end method

.method parseHexString(Ljava/lang/String;)Ljava/lang/FloatingDecimal;
    .locals 46
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1951
    invoke-static {}, Ljava/lang/FloatingDecimal;->getHexFloatPattern()Ljava/util/regex/Pattern;

    #@3
    move-result-object v42

    #@4
    move-object/from16 v0, v42

    #@6
    move-object/from16 v1, p1

    #@8
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@b
    move-result-object v23

    #@c
    .line 1952
    .local v23, "m":Ljava/util/regex/Matcher;
    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->matches()Z

    #@f
    move-result v39

    #@10
    .line 1954
    .local v39, "validInput":Z
    if-nez v39, :cond_0

    #@12
    .line 1956
    new-instance v42, Ljava/lang/NumberFormatException;

    #@14
    new-instance v43, Ljava/lang/StringBuilder;

    #@16
    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v44, "For input string: \""

    #@1c
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v43

    #@20
    move-object/from16 v0, v43

    #@22
    move-object/from16 v1, p1

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v43

    #@28
    const-string/jumbo v44, "\""

    #@2b
    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v43

    #@2f
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v43

    #@33
    invoke-direct/range {v42 .. v43}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@36
    throw v42

    #@37
    .line 1983
    :cond_0
    const/16 v42, 0x1

    #@39
    move-object/from16 v0, v23

    #@3b
    move/from16 v1, v42

    #@3d
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@40
    move-result-object v12

    #@41
    .line 1984
    .local v12, "group1":Ljava/lang/String;
    if-eqz v12, :cond_1

    #@43
    const-string/jumbo v42, "+"

    #@46
    move-object/from16 v0, v42

    #@48
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v42

    #@4c
    if-eqz v42, :cond_2

    #@4e
    :cond_1
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    #@50
    .line 2016
    .local v32, "sign":D
    :goto_0
    const/16 v35, 0x0

    #@52
    .line 2017
    .local v35, "significandString":Ljava/lang/String;
    const/16 v34, 0x0

    #@54
    .line 2018
    .local v34, "signifLength":I
    const/4 v9, 0x0

    #@55
    .line 2020
    .local v9, "exponentAdjust":I
    const/16 v22, 0x0

    #@57
    .line 2023
    .local v22, "leftDigits":I
    const/16 v30, 0x0

    #@59
    .line 2037
    .local v30, "rightDigits":I
    const/16 v42, 0x4

    #@5b
    move-object/from16 v0, v23

    #@5d
    move/from16 v1, v42

    #@5f
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@62
    move-result-object v13

    #@63
    .local v13, "group4":Ljava/lang/String;
    if-eqz v13, :cond_3

    #@65
    .line 2039
    invoke-static {v13}, Ljava/lang/FloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    #@68
    move-result-object v35

    #@69
    .line 2040
    .local v35, "significandString":Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    #@6c
    move-result v22

    #@6d
    .line 2059
    :goto_1
    invoke-static/range {v35 .. v35}, Ljava/lang/FloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    #@70
    move-result-object v35

    #@71
    .line 2060
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    #@74
    move-result v34

    #@75
    .line 2065
    const/16 v42, 0x1

    #@77
    move/from16 v0, v22

    #@79
    move/from16 v1, v42

    #@7b
    if-lt v0, v1, :cond_5

    #@7d
    .line 2066
    add-int/lit8 v42, v22, -0x1

    #@7f
    mul-int/lit8 v9, v42, 0x4

    #@81
    .line 2074
    :goto_2
    if-nez v34, :cond_6

    #@83
    .line 2075
    const-wide/16 v42, 0x0

    #@85
    mul-double v42, v42, v32

    #@87
    move-object/from16 v0, p0

    #@89
    move-wide/from16 v1, v42

    #@8b
    invoke-virtual {v0, v1, v2}, Ljava/lang/FloatingDecimal;->loadDouble(D)Ljava/lang/FloatingDecimal;

    #@8e
    move-result-object v42

    #@8f
    return-object v42

    #@90
    .line 1984
    .end local v9    # "exponentAdjust":I
    .end local v13    # "group4":Ljava/lang/String;
    .end local v22    # "leftDigits":I
    .end local v30    # "rightDigits":I
    .end local v32    # "sign":D
    .end local v34    # "signifLength":I
    .end local v35    # "significandString":Ljava/lang/String;
    :cond_2
    const-wide/high16 v32, -0x4010000000000000L    # -1.0

    #@92
    .restart local v32    # "sign":D
    goto :goto_0

    #@93
    .line 2045
    .restart local v9    # "exponentAdjust":I
    .restart local v13    # "group4":Ljava/lang/String;
    .restart local v22    # "leftDigits":I
    .restart local v30    # "rightDigits":I
    .restart local v34    # "signifLength":I
    .local v35, "significandString":Ljava/lang/String;
    :cond_3
    const/16 v42, 0x6

    #@95
    move-object/from16 v0, v23

    #@97
    move/from16 v1, v42

    #@99
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@9c
    move-result-object v42

    #@9d
    invoke-static/range {v42 .. v42}, Ljava/lang/FloatingDecimal;->stripLeadingZeros(Ljava/lang/String;)Ljava/lang/String;

    #@a0
    move-result-object v14

    #@a1
    .line 2046
    .local v14, "group6":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    #@a4
    move-result v22

    #@a5
    .line 2049
    const/16 v42, 0x7

    #@a7
    move-object/from16 v0, v23

    #@a9
    move/from16 v1, v42

    #@ab
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@ae
    move-result-object v15

    #@af
    .line 2050
    .local v15, "group7":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    #@b2
    move-result v30

    #@b3
    .line 2054
    new-instance v42, Ljava/lang/StringBuilder;

    #@b5
    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    #@b8
    if-nez v14, :cond_4

    #@ba
    const-string/jumbo v14, ""

    #@bd
    .end local v14    # "group6":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v42

    #@bf
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v42

    #@c3
    move-object/from16 v0, v42

    #@c5
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v42

    #@c9
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v35

    #@cd
    .local v35, "significandString":Ljava/lang/String;
    goto :goto_1

    #@ce
    .line 2068
    .end local v15    # "group7":Ljava/lang/String;
    :cond_5
    sub-int v42, v30, v34

    #@d0
    add-int/lit8 v42, v42, 0x1

    #@d2
    mul-int/lit8 v9, v42, -0x4

    #@d4
    goto :goto_2

    #@d5
    .line 2087
    :cond_6
    const/16 v42, 0x8

    #@d7
    move-object/from16 v0, v23

    #@d9
    move/from16 v1, v42

    #@db
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@de
    move-result-object v16

    #@df
    .line 2088
    .local v16, "group8":Ljava/lang/String;
    if-eqz v16, :cond_7

    #@e1
    const-string/jumbo v42, "+"

    #@e4
    move-object/from16 v0, v16

    #@e6
    move-object/from16 v1, v42

    #@e8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@eb
    move-result v27

    #@ec
    .line 2091
    :goto_3
    const/16 v42, 0x9

    #@ee
    :try_start_0
    move-object/from16 v0, v23

    #@f0
    move/from16 v1, v42

    #@f2
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@f5
    move-result-object v42

    #@f6
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@f9
    move-result v42

    #@fa
    move/from16 v0, v42

    #@fc
    int-to-long v0, v0

    #@fd
    move-wide/from16 v40, v0

    #@ff
    .line 2112
    .local v40, "unsignedRawExponent":J
    if-eqz v27, :cond_9

    #@101
    const-wide/16 v42, 0x1

    #@103
    :goto_4
    mul-long v28, v42, v40

    #@105
    .line 2116
    .local v28, "rawExponent":J
    int-to-long v0, v9

    #@106
    move-wide/from16 v42, v0

    #@108
    add-long v10, v28, v42

    #@10a
    .line 2122
    .local v10, "exponent":J
    const/16 v31, 0x0

    #@10c
    .line 2123
    .local v31, "round":Z
    const/16 v38, 0x0

    #@10e
    .line 2124
    .local v38, "sticky":Z
    const/4 v4, 0x0

    #@10f
    .line 2125
    .local v4, "bitsCopied":I
    const/16 v26, 0x0

    #@111
    .line 2133
    .local v26, "nextShift":I
    const/16 v42, 0x0

    #@113
    move-object/from16 v0, v35

    #@115
    move/from16 v1, v42

    #@117
    invoke-static {v0, v1}, Ljava/lang/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    #@11a
    move-result v42

    #@11b
    move/from16 v0, v42

    #@11d
    int-to-long v0, v0

    #@11e
    move-wide/from16 v20, v0

    #@120
    .line 2144
    .local v20, "leadingDigit":J
    const-wide/16 v42, 0x1

    #@122
    cmp-long v42, v20, v42

    #@124
    if-nez v42, :cond_a

    #@126
    .line 2145
    const/16 v42, 0x34

    #@128
    shl-long v42, v20, v42

    #@12a
    .line 2126
    const-wide/16 v44, 0x0

    #@12c
    .line 2145
    or-long v36, v44, v42

    #@12e
    .line 2146
    .local v36, "significand":J
    const/16 v26, 0x30

    #@130
    .line 2185
    :goto_5
    const/16 v17, 0x0

    #@132
    .line 2186
    .local v17, "i":I
    const/16 v17, 0x1

    #@134
    .line 2187
    :goto_6
    move/from16 v0, v17

    #@136
    move/from16 v1, v34

    #@138
    if-ge v0, v1, :cond_e

    #@13a
    if-ltz v26, :cond_e

    #@13c
    .line 2189
    move-object/from16 v0, v35

    #@13e
    move/from16 v1, v17

    #@140
    invoke-static {v0, v1}, Ljava/lang/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    #@143
    move-result v42

    #@144
    move/from16 v0, v42

    #@146
    int-to-long v6, v0

    #@147
    .line 2190
    .local v6, "currentDigit":J
    shl-long v42, v6, v26

    #@149
    or-long v36, v36, v42

    #@14b
    .line 2191
    add-int/lit8 v26, v26, -0x4

    #@14d
    .line 2188
    add-int/lit8 v17, v17, 0x1

    #@14f
    goto :goto_6

    #@150
    .line 2088
    .end local v4    # "bitsCopied":I
    .end local v6    # "currentDigit":J
    .end local v10    # "exponent":J
    .end local v17    # "i":I
    .end local v20    # "leadingDigit":J
    .end local v26    # "nextShift":I
    .end local v28    # "rawExponent":J
    .end local v31    # "round":Z
    .end local v36    # "significand":J
    .end local v38    # "sticky":Z
    .end local v40    # "unsignedRawExponent":J
    :cond_7
    const/16 v27, 0x1

    #@152
    .local v27, "positiveExponent":Z
    goto :goto_3

    #@153
    .line 2093
    .end local v27    # "positiveExponent":Z
    :catch_0
    move-exception v8

    #@154
    .line 2107
    .local v8, "e":Ljava/lang/NumberFormatException;
    if-eqz v27, :cond_8

    #@156
    .line 2108
    const-wide/high16 v42, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@158
    .line 2107
    :goto_7
    mul-double v42, v42, v32

    #@15a
    move-object/from16 v0, p0

    #@15c
    move-wide/from16 v1, v42

    #@15e
    invoke-virtual {v0, v1, v2}, Ljava/lang/FloatingDecimal;->loadDouble(D)Ljava/lang/FloatingDecimal;

    #@161
    move-result-object v42

    #@162
    return-object v42

    #@163
    .line 2108
    :cond_8
    const-wide/16 v42, 0x0

    #@165
    goto :goto_7

    #@166
    .line 2112
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .restart local v40    # "unsignedRawExponent":J
    :cond_9
    const-wide/16 v42, -0x1

    #@168
    goto :goto_4

    #@169
    .line 2148
    .restart local v4    # "bitsCopied":I
    .restart local v10    # "exponent":J
    .restart local v20    # "leadingDigit":J
    .restart local v26    # "nextShift":I
    .restart local v28    # "rawExponent":J
    .restart local v31    # "round":Z
    .restart local v38    # "sticky":Z
    :cond_a
    const-wide/16 v42, 0x3

    #@16b
    cmp-long v42, v20, v42

    #@16d
    if-gtz v42, :cond_b

    #@16f
    .line 2149
    const/16 v42, 0x33

    #@171
    shl-long v42, v20, v42

    #@173
    .line 2126
    const-wide/16 v44, 0x0

    #@175
    .line 2149
    or-long v36, v44, v42

    #@177
    .line 2150
    .restart local v36    # "significand":J
    const/16 v26, 0x2f

    #@179
    .line 2151
    const-wide/16 v42, 0x1

    #@17b
    add-long v10, v10, v42

    #@17d
    goto :goto_5

    #@17e
    .line 2153
    .end local v36    # "significand":J
    :cond_b
    const-wide/16 v42, 0x7

    #@180
    cmp-long v42, v20, v42

    #@182
    if-gtz v42, :cond_c

    #@184
    .line 2154
    const/16 v42, 0x32

    #@186
    shl-long v42, v20, v42

    #@188
    .line 2126
    const-wide/16 v44, 0x0

    #@18a
    .line 2154
    or-long v36, v44, v42

    #@18c
    .line 2155
    .restart local v36    # "significand":J
    const/16 v26, 0x2e

    #@18e
    .line 2156
    const-wide/16 v42, 0x2

    #@190
    add-long v10, v10, v42

    #@192
    goto :goto_5

    #@193
    .line 2158
    .end local v36    # "significand":J
    :cond_c
    const-wide/16 v42, 0xf

    #@195
    cmp-long v42, v20, v42

    #@197
    if-gtz v42, :cond_d

    #@199
    .line 2159
    const/16 v42, 0x31

    #@19b
    shl-long v42, v20, v42

    #@19d
    .line 2126
    const-wide/16 v44, 0x0

    #@19f
    .line 2159
    or-long v36, v44, v42

    #@1a1
    .line 2160
    .restart local v36    # "significand":J
    const/16 v26, 0x2d

    #@1a3
    .line 2161
    const-wide/16 v42, 0x3

    #@1a5
    add-long v10, v10, v42

    #@1a7
    goto :goto_5

    #@1a8
    .line 2163
    .end local v36    # "significand":J
    :cond_d
    new-instance v42, Ljava/lang/AssertionError;

    #@1aa
    const-string/jumbo v43, "Result from digit conversion too large!"

    #@1ad
    invoke-direct/range {v42 .. v43}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1b0
    throw v42

    #@1b1
    .line 2199
    .restart local v17    # "i":I
    .restart local v36    # "significand":J
    :cond_e
    move/from16 v0, v17

    #@1b3
    move/from16 v1, v34

    #@1b5
    if-ge v0, v1, :cond_f

    #@1b7
    .line 2200
    move-object/from16 v0, v35

    #@1b9
    move/from16 v1, v17

    #@1bb
    invoke-static {v0, v1}, Ljava/lang/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    #@1be
    move-result v42

    #@1bf
    move/from16 v0, v42

    #@1c1
    int-to-long v6, v0

    #@1c2
    .line 2204
    .restart local v6    # "currentDigit":J
    packed-switch v26, :pswitch_data_0

    #@1c5
    .line 2237
    new-instance v42, Ljava/lang/AssertionError;

    #@1c7
    const-string/jumbo v43, "Unexpected shift distance remainder."

    #@1ca
    invoke-direct/range {v42 .. v43}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1cd
    throw v42

    #@1ce
    .line 2208
    :pswitch_0
    const-wide/16 v42, 0xe

    #@1d0
    and-long v42, v42, v6

    #@1d2
    const/16 v44, 0x1

    #@1d4
    shr-long v42, v42, v44

    #@1d6
    or-long v36, v36, v42

    #@1d8
    .line 2209
    const-wide/16 v42, 0x1

    #@1da
    and-long v42, v42, v6

    #@1dc
    const-wide/16 v44, 0x0

    #@1de
    cmp-long v42, v42, v44

    #@1e0
    if-eqz v42, :cond_10

    #@1e2
    const/16 v31, 0x1

    #@1e4
    .line 2246
    :goto_8
    add-int/lit8 v17, v17, 0x1

    #@1e6
    .line 2247
    :goto_9
    move/from16 v0, v17

    #@1e8
    move/from16 v1, v34

    #@1ea
    if-ge v0, v1, :cond_f

    #@1ec
    if-eqz v38, :cond_17

    #@1ee
    .line 2260
    .end local v6    # "currentDigit":J
    :cond_f
    const-wide/16 v42, 0x3ff

    #@1f0
    cmp-long v42, v10, v42

    #@1f2
    if-lez v42, :cond_1a

    #@1f4
    .line 2262
    const-wide/high16 v42, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@1f6
    mul-double v42, v42, v32

    #@1f8
    move-object/from16 v0, p0

    #@1fa
    move-wide/from16 v1, v42

    #@1fc
    invoke-virtual {v0, v1, v2}, Ljava/lang/FloatingDecimal;->loadDouble(D)Ljava/lang/FloatingDecimal;

    #@1ff
    move-result-object v42

    #@200
    return-object v42

    #@201
    .line 2209
    .restart local v6    # "currentDigit":J
    :cond_10
    const/16 v31, 0x0

    #@203
    goto :goto_8

    #@204
    .line 2215
    :pswitch_1
    const-wide/16 v42, 0xc

    #@206
    and-long v42, v42, v6

    #@208
    const/16 v44, 0x2

    #@20a
    shr-long v42, v42, v44

    #@20c
    or-long v36, v36, v42

    #@20e
    .line 2216
    const-wide/16 v42, 0x2

    #@210
    and-long v42, v42, v6

    #@212
    const-wide/16 v44, 0x0

    #@214
    cmp-long v42, v42, v44

    #@216
    if-eqz v42, :cond_11

    #@218
    const/16 v31, 0x1

    #@21a
    .line 2217
    :goto_a
    const-wide/16 v42, 0x1

    #@21c
    and-long v42, v42, v6

    #@21e
    const-wide/16 v44, 0x0

    #@220
    cmp-long v42, v42, v44

    #@222
    if-eqz v42, :cond_12

    #@224
    const/16 v38, 0x1

    #@226
    goto :goto_8

    #@227
    .line 2216
    :cond_11
    const/16 v31, 0x0

    #@229
    goto :goto_a

    #@22a
    .line 2217
    :cond_12
    const/16 v38, 0x0

    #@22c
    goto :goto_8

    #@22d
    .line 2222
    :pswitch_2
    const-wide/16 v42, 0x8

    #@22f
    and-long v42, v42, v6

    #@231
    const/16 v44, 0x3

    #@233
    shr-long v42, v42, v44

    #@235
    or-long v36, v36, v42

    #@237
    .line 2224
    const-wide/16 v42, 0x4

    #@239
    and-long v42, v42, v6

    #@23b
    const-wide/16 v44, 0x0

    #@23d
    cmp-long v42, v42, v44

    #@23f
    if-eqz v42, :cond_13

    #@241
    const/16 v31, 0x1

    #@243
    .line 2225
    :goto_b
    const-wide/16 v42, 0x3

    #@245
    and-long v42, v42, v6

    #@247
    const-wide/16 v44, 0x0

    #@249
    cmp-long v42, v42, v44

    #@24b
    if-eqz v42, :cond_14

    #@24d
    const/16 v38, 0x1

    #@24f
    goto :goto_8

    #@250
    .line 2224
    :cond_13
    const/16 v31, 0x0

    #@252
    goto :goto_b

    #@253
    .line 2225
    :cond_14
    const/16 v38, 0x0

    #@255
    goto :goto_8

    #@256
    .line 2231
    :pswitch_3
    const-wide/16 v42, 0x8

    #@258
    and-long v42, v42, v6

    #@25a
    const-wide/16 v44, 0x0

    #@25c
    cmp-long v42, v42, v44

    #@25e
    if-eqz v42, :cond_15

    #@260
    const/16 v31, 0x1

    #@262
    .line 2233
    :goto_c
    const-wide/16 v42, 0x7

    #@264
    and-long v42, v42, v6

    #@266
    const-wide/16 v44, 0x0

    #@268
    cmp-long v42, v42, v44

    #@26a
    if-eqz v42, :cond_16

    #@26c
    const/16 v38, 0x1

    #@26e
    goto/16 :goto_8

    #@270
    .line 2231
    :cond_15
    const/16 v31, 0x0

    #@272
    goto :goto_c

    #@273
    .line 2233
    :cond_16
    const/16 v38, 0x0

    #@275
    goto/16 :goto_8

    #@277
    .line 2248
    :cond_17
    move-object/from16 v0, v35

    #@279
    move/from16 v1, v17

    #@27b
    invoke-static {v0, v1}, Ljava/lang/FloatingDecimal;->getHexDigit(Ljava/lang/String;I)I

    #@27e
    move-result v42

    #@27f
    move/from16 v0, v42

    #@281
    int-to-long v6, v0

    #@282
    .line 2249
    if-nez v38, :cond_18

    #@284
    const-wide/16 v42, 0x0

    #@286
    cmp-long v42, v6, v42

    #@288
    if-eqz v42, :cond_19

    #@28a
    :cond_18
    const/16 v38, 0x1

    #@28c
    .line 2250
    :goto_d
    add-int/lit8 v17, v17, 0x1

    #@28e
    goto/16 :goto_9

    #@290
    .line 2249
    :cond_19
    const/16 v38, 0x0

    #@292
    goto :goto_d

    #@293
    .line 2264
    .end local v6    # "currentDigit":J
    :cond_1a
    const-wide/16 v42, 0x3ff

    #@295
    cmp-long v42, v10, v42

    #@297
    if-gtz v42, :cond_20

    #@299
    .line 2265
    const-wide/16 v42, -0x3fe

    #@29b
    cmp-long v42, v10, v42

    #@29d
    if-ltz v42, :cond_20

    #@29f
    .line 2279
    const-wide/16 v42, 0x3ff

    #@2a1
    .line 2278
    add-long v42, v42, v10

    #@2a3
    .line 2280
    const/16 v44, 0x34

    #@2a5
    .line 2278
    shl-long v42, v42, v44

    #@2a7
    .line 2281
    const-wide/high16 v44, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@2a9
    .line 2278
    and-long v42, v42, v44

    #@2ab
    .line 2282
    const-wide v44, 0xfffffffffffffL

    #@2b0
    and-long v44, v44, v36

    #@2b2
    .line 2278
    or-long v36, v42, v44

    #@2b4
    .line 2357
    .end local v38    # "sticky":Z
    :goto_e
    const/16 v18, 0x0

    #@2b6
    .line 2358
    .local v18, "incremented":Z
    const-wide/16 v42, 0x1

    #@2b8
    and-long v42, v42, v36

    #@2ba
    const-wide/16 v44, 0x0

    #@2bc
    cmp-long v42, v42, v44

    #@2be
    if-nez v42, :cond_29

    #@2c0
    const/16 v19, 0x1

    #@2c2
    .line 2359
    .local v19, "leastZero":Z
    :goto_f
    if-eqz v19, :cond_1b

    #@2c4
    if-eqz v31, :cond_1b

    #@2c6
    if-nez v38, :cond_1c

    #@2c8
    .line 2360
    :cond_1b
    if-nez v19, :cond_1d

    #@2ca
    .line 2359
    if-eqz v31, :cond_1d

    #@2cc
    .line 2361
    :cond_1c
    const/16 v18, 0x1

    #@2ce
    .line 2362
    const-wide/16 v42, 0x1

    #@2d0
    add-long v36, v36, v42

    #@2d2
    .line 2366
    :cond_1d
    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@2d5
    move-result-wide v42

    #@2d6
    .line 2365
    move-wide/from16 v0, v42

    #@2d8
    move-wide/from16 v2, v32

    #@2da
    invoke-static {v0, v1, v2, v3}, Lsun/misc/FpUtils;->rawCopySign(DD)D

    #@2dd
    move-result-wide v42

    #@2de
    move-object/from16 v0, p0

    #@2e0
    move-wide/from16 v1, v42

    #@2e2
    invoke-virtual {v0, v1, v2}, Ljava/lang/FloatingDecimal;->loadDouble(D)Ljava/lang/FloatingDecimal;

    #@2e5
    .line 2392
    const-wide/16 v42, -0x96

    #@2e7
    cmp-long v42, v10, v42

    #@2e9
    if-ltz v42, :cond_1f

    #@2eb
    .line 2393
    const-wide/16 v42, 0x7f

    #@2ed
    cmp-long v42, v10, v42

    #@2ef
    if-gtz v42, :cond_1f

    #@2f1
    .line 2411
    const-wide/32 v42, 0xfffffff

    #@2f4
    and-long v42, v42, v36

    #@2f6
    const-wide/16 v44, 0x0

    #@2f8
    cmp-long v42, v42, v44

    #@2fa
    if-nez v42, :cond_1f

    #@2fc
    .line 2420
    if-nez v31, :cond_1e

    #@2fe
    if-eqz v38, :cond_1f

    #@300
    .line 2421
    :cond_1e
    if-eqz v19, :cond_2a

    #@302
    .line 2430
    xor-int v42, v31, v38

    #@304
    if-eqz v42, :cond_1f

    #@306
    .line 2431
    const/16 v42, 0x1

    #@308
    move/from16 v0, v42

    #@30a
    move-object/from16 v1, p0

    #@30c
    iput v0, v1, Ljava/lang/FloatingDecimal;->roundDir:I

    #@30e
    .line 2449
    :cond_1f
    :goto_10
    const/16 v42, 0x1

    #@310
    move/from16 v0, v42

    #@312
    move-object/from16 v1, p0

    #@314
    iput-boolean v0, v1, Ljava/lang/FloatingDecimal;->fromHex:Z

    #@316
    .line 2450
    return-object p0

    #@317
    .line 2287
    .end local v18    # "incremented":Z
    .end local v19    # "leastZero":Z
    .restart local v38    # "sticky":Z
    :cond_20
    const-wide/16 v42, -0x433

    #@319
    cmp-long v42, v10, v42

    #@31b
    if-gez v42, :cond_21

    #@31d
    .line 2291
    const-wide/16 v42, 0x0

    #@31f
    mul-double v42, v42, v32

    #@321
    move-object/from16 v0, p0

    #@323
    move-wide/from16 v1, v42

    #@325
    invoke-virtual {v0, v1, v2}, Ljava/lang/FloatingDecimal;->loadDouble(D)Ljava/lang/FloatingDecimal;

    #@328
    move-result-object v42

    #@329
    return-object v42

    #@32a
    .line 2299
    :cond_21
    if-nez v38, :cond_22

    #@32c
    move/from16 v38, v31

    #@32e
    .line 2300
    .end local v38    # "sticky":Z
    :goto_11
    const/16 v31, 0x0

    #@330
    .line 2309
    long-to-int v0, v10

    #@331
    move/from16 v42, v0

    #@333
    move/from16 v0, v42

    #@335
    add-int/lit16 v0, v0, 0x432

    #@337
    move/from16 v42, v0

    #@339
    add-int/lit8 v42, v42, 0x1

    #@33b
    .line 2308
    rsub-int/lit8 v5, v42, 0x35

    #@33d
    .line 2310
    .local v5, "bitsDiscarded":I
    sget-boolean v42, Ljava/lang/FloatingDecimal;->-assertionsDisabled:Z

    #@33f
    if-nez v42, :cond_24

    #@341
    const/16 v42, 0x1

    #@343
    move/from16 v0, v42

    #@345
    if-lt v5, v0, :cond_23

    #@347
    const/16 v42, 0x35

    #@349
    move/from16 v0, v42

    #@34b
    if-gt v5, v0, :cond_23

    #@34d
    const/16 v42, 0x1

    #@34f
    :goto_12
    if-nez v42, :cond_24

    #@351
    new-instance v42, Ljava/lang/AssertionError;

    #@353
    invoke-direct/range {v42 .. v42}, Ljava/lang/AssertionError;-><init>()V

    #@356
    throw v42

    #@357
    .line 2299
    .end local v5    # "bitsDiscarded":I
    .restart local v38    # "sticky":Z
    :cond_22
    const/16 v38, 0x1

    #@359
    goto :goto_11

    #@35a
    .line 2310
    .end local v38    # "sticky":Z
    .restart local v5    # "bitsDiscarded":I
    :cond_23
    const/16 v42, 0x0

    #@35c
    goto :goto_12

    #@35d
    .line 2314
    :cond_24
    add-int/lit8 v42, v5, -0x1

    #@35f
    const-wide/16 v44, 0x1

    #@361
    shl-long v42, v44, v42

    #@363
    and-long v42, v42, v36

    #@365
    const-wide/16 v44, 0x0

    #@367
    cmp-long v42, v42, v44

    #@369
    if-eqz v42, :cond_27

    #@36b
    const/16 v31, 0x1

    #@36d
    .line 2315
    :goto_13
    const/16 v42, 0x1

    #@36f
    move/from16 v0, v42

    #@371
    if-le v5, v0, :cond_26

    #@373
    .line 2318
    add-int/lit8 v42, v5, -0x1

    #@375
    const-wide/16 v44, -0x1

    #@377
    shl-long v42, v44, v42

    #@379
    move-wide/from16 v0, v42

    #@37b
    not-long v0, v0

    #@37c
    move-wide/from16 v24, v0

    #@37e
    .line 2319
    .local v24, "mask":J
    if-nez v38, :cond_25

    #@380
    and-long v42, v36, v24

    #@382
    const-wide/16 v44, 0x0

    #@384
    cmp-long v42, v42, v44

    #@386
    if-eqz v42, :cond_28

    #@388
    :cond_25
    const/16 v38, 0x1

    #@38a
    .line 2323
    .end local v24    # "mask":J
    :cond_26
    :goto_14
    shr-long v36, v36, v5

    #@38c
    .line 2329
    const-wide v42, 0xfffffffffffffL

    #@391
    and-long v42, v42, v36

    #@393
    .line 2325
    const-wide/16 v44, 0x0

    #@395
    or-long v36, v44, v42

    #@397
    goto/16 :goto_e

    #@399
    .line 2314
    :cond_27
    const/16 v31, 0x0

    #@39b
    goto :goto_13

    #@39c
    .line 2319
    .restart local v24    # "mask":J
    :cond_28
    const/16 v38, 0x0

    #@39e
    .restart local v38    # "sticky":Z
    goto :goto_14

    #@39f
    .line 2358
    .end local v5    # "bitsDiscarded":I
    .end local v24    # "mask":J
    .end local v38    # "sticky":Z
    .restart local v18    # "incremented":Z
    :cond_29
    const/16 v19, 0x0

    #@3a1
    goto/16 :goto_f

    #@3a3
    .line 2442
    .restart local v19    # "leastZero":Z
    :cond_2a
    if-eqz v31, :cond_1f

    #@3a5
    .line 2443
    const/16 v42, -0x1

    #@3a7
    move/from16 v0, v42

    #@3a9
    move-object/from16 v1, p0

    #@3ab
    iput v0, v1, Ljava/lang/FloatingDecimal;->roundDir:I

    #@3ad
    goto/16 :goto_10

    #@3af
    .line 2204
    nop

    #@3b0
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readJavaFormatString(Ljava/lang/String;)Ljava/lang/FloatingDecimal;
    .locals 31
    .param p1, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 1061
    const/16 v18, 0x0

    #@2
    .line 1062
    .local v18, "isNegative":Z
    const/16 v26, 0x0

    #@4
    .line 1068
    .local v26, "signSeen":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@7
    move-result-object p1

    #@8
    .line 1070
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@b
    move-result v20

    #@c
    .line 1071
    .local v20, "l":I
    if-nez v20, :cond_1

    #@e
    new-instance v28, Ljava/lang/NumberFormatException;

    #@10
    const-string/jumbo v29, "empty String"

    #@13
    invoke-direct/range {v28 .. v29}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@16
    throw v28
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 1305
    .end local v20    # "l":I
    :catch_0
    move-exception v10

    #@18
    .line 1306
    :cond_0
    new-instance v28, Ljava/lang/NumberFormatException;

    #@1a
    new-instance v29, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v30, "For input string: \""

    #@22
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v29

    #@26
    move-object/from16 v0, v29

    #@28
    move-object/from16 v1, p1

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v29

    #@2e
    const-string/jumbo v30, "\""

    #@31
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v29

    #@35
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v29

    #@39
    invoke-direct/range {v28 .. v29}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v28

    #@3d
    .line 1072
    .restart local v20    # "l":I
    :cond_1
    const/16 v16, 0x0

    #@3f
    .line 1073
    .local v16, "i":I
    :try_start_1
    move-object/from16 v0, p1

    #@41
    move/from16 v1, v16

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@46
    move-result v4

    #@47
    .local v4, "c":C
    packed-switch v4, :pswitch_data_0

    #@4a
    .line 1083
    :goto_0
    :pswitch_0
    move-object/from16 v0, p1

    #@4c
    move/from16 v1, v16

    #@4e
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@51
    move-result v4

    #@52
    .line 1084
    const/16 v28, 0x4e

    #@54
    move/from16 v0, v28

    #@56
    if-eq v4, v0, :cond_2

    #@58
    const/16 v28, 0x49

    #@5a
    move/from16 v0, v28

    #@5c
    if-ne v4, v0, :cond_7

    #@5e
    .line 1085
    :cond_2
    const/16 v25, 0x0

    #@60
    .line 1086
    .local v25, "potentialNaN":Z
    const/16 v27, 0x0

    #@62
    .line 1088
    .local v27, "targetChars":[C
    const/16 v28, 0x4e

    #@64
    move/from16 v0, v28

    #@66
    if-ne v4, v0, :cond_3

    #@68
    .line 1089
    sget-object v27, Ljava/lang/FloatingDecimal;->notANumber:[C

    #@6a
    .line 1090
    .local v27, "targetChars":[C
    const/16 v25, 0x1

    #@6c
    .line 1096
    :goto_1
    const/16 v19, 0x0

    #@6e
    .line 1097
    .local v19, "j":I
    :goto_2
    move/from16 v0, v16

    #@70
    move/from16 v1, v20

    #@72
    if-ge v0, v1, :cond_4

    #@74
    move-object/from16 v0, v27

    #@76
    array-length v0, v0

    #@77
    move/from16 v28, v0

    #@79
    move/from16 v0, v19

    #@7b
    move/from16 v1, v28

    #@7d
    if-ge v0, v1, :cond_4

    #@7f
    .line 1098
    move-object/from16 v0, p1

    #@81
    move/from16 v1, v16

    #@83
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@86
    move-result v28

    #@87
    aget-char v29, v27, v19

    #@89
    move/from16 v0, v28

    #@8b
    move/from16 v1, v29

    #@8d
    if-ne v0, v1, :cond_0

    #@8f
    .line 1099
    add-int/lit8 v16, v16, 0x1

    #@91
    add-int/lit8 v19, v19, 0x1

    #@93
    goto :goto_2

    #@94
    .line 1075
    .end local v19    # "j":I
    .end local v25    # "potentialNaN":Z
    .end local v27    # "targetChars":[C
    :pswitch_1
    const/16 v18, 0x1

    #@96
    .line 1078
    :pswitch_2
    const/16 v16, 0x1

    #@98
    .line 1079
    const/16 v26, 0x1

    #@9a
    goto :goto_0

    #@9b
    .line 1092
    .restart local v25    # "potentialNaN":Z
    .local v27, "targetChars":[C
    :cond_3
    sget-object v27, Ljava/lang/FloatingDecimal;->infinity:[C

    #@9d
    .local v27, "targetChars":[C
    goto :goto_1

    #@9e
    .line 1109
    .restart local v19    # "j":I
    :cond_4
    move-object/from16 v0, v27

    #@a0
    array-length v0, v0

    #@a1
    move/from16 v28, v0

    #@a3
    move/from16 v0, v19

    #@a5
    move/from16 v1, v28

    #@a7
    if-ne v0, v1, :cond_0

    #@a9
    move/from16 v0, v16

    #@ab
    move/from16 v1, v20

    #@ad
    if-ne v0, v1, :cond_0

    #@af
    .line 1110
    if-eqz v25, :cond_5

    #@b1
    const-wide/high16 v28, 0x7ff8000000000000L    # NaN

    #@b3
    move-object/from16 v0, p0

    #@b5
    move-wide/from16 v1, v28

    #@b7
    invoke-virtual {v0, v1, v2}, Ljava/lang/FloatingDecimal;->loadDouble(D)Ljava/lang/FloatingDecimal;

    #@ba
    move-result-object v28

    #@bb
    :goto_3
    return-object v28

    #@bc
    .line 1111
    :cond_5
    if-eqz v18, :cond_6

    #@be
    .line 1112
    const-wide/high16 v28, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@c0
    .line 1111
    :goto_4
    move-object/from16 v0, p0

    #@c2
    move-wide/from16 v1, v28

    #@c4
    invoke-virtual {v0, v1, v2}, Ljava/lang/FloatingDecimal;->loadDouble(D)Ljava/lang/FloatingDecimal;

    #@c7
    move-result-object v28

    #@c8
    goto :goto_3

    #@c9
    .line 1113
    :cond_6
    const-wide/high16 v28, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@cb
    goto :goto_4

    #@cc
    .line 1119
    .end local v19    # "j":I
    .end local v25    # "potentialNaN":Z
    .end local v27    # "targetChars":[C
    :cond_7
    const/16 v28, 0x30

    #@ce
    move/from16 v0, v28

    #@d0
    if-ne v4, v0, :cond_9

    #@d2
    .line 1120
    add-int/lit8 v28, v16, 0x1

    #@d4
    move/from16 v0, v20

    #@d6
    move/from16 v1, v28

    #@d8
    if-le v0, v1, :cond_9

    #@da
    .line 1121
    add-int/lit8 v28, v16, 0x1

    #@dc
    move-object/from16 v0, p1

    #@de
    move/from16 v1, v28

    #@e0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@e3
    move-result v5

    #@e4
    .line 1122
    .local v5, "ch":C
    const/16 v28, 0x78

    #@e6
    move/from16 v0, v28

    #@e8
    if-eq v5, v0, :cond_8

    #@ea
    const/16 v28, 0x58

    #@ec
    move/from16 v0, v28

    #@ee
    if-ne v5, v0, :cond_9

    #@f0
    .line 1123
    :cond_8
    invoke-virtual/range {p0 .. p1}, Ljava/lang/FloatingDecimal;->parseHexString(Ljava/lang/String;)Ljava/lang/FloatingDecimal;

    #@f3
    move-result-object v28

    #@f4
    return-object v28

    #@f5
    .line 1127
    .end local v5    # "ch":C
    :cond_9
    move/from16 v0, v20

    #@f7
    new-array v9, v0, [C

    #@f9
    .line 1128
    .local v9, "digits":[C
    const/16 v21, 0x0

    #@fb
    .line 1129
    .local v21, "nDigits":I
    const/4 v8, 0x0

    #@fc
    .line 1130
    .local v8, "decSeen":Z
    const/4 v7, 0x0

    #@fd
    .line 1131
    .local v7, "decPt":I
    const/16 v23, 0x0

    #@ff
    .line 1132
    .local v23, "nLeadZero":I
    const/16 v24, 0x0

    #@101
    .line 1134
    .local v24, "nTrailZero":I
    :goto_5
    move/from16 v0, v16

    #@103
    move/from16 v1, v20

    #@105
    if-ge v0, v1, :cond_a

    #@107
    .line 1135
    move-object/from16 v0, p1

    #@109
    move/from16 v1, v16

    #@10b
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@10e
    move-result v4

    #@10f
    packed-switch v4, :pswitch_data_1

    #@112
    .line 1193
    :cond_a
    :pswitch_3
    if-nez v21, :cond_b

    #@114
    .line 1194
    sget-object v9, Ljava/lang/FloatingDecimal;->zero:[C

    #@116
    .line 1195
    const/16 v21, 0x1

    #@118
    .line 1196
    if-eqz v23, :cond_0

    #@11a
    .line 1209
    :cond_b
    if-eqz v8, :cond_15

    #@11c
    .line 1210
    sub-int v6, v7, v23

    #@11e
    .line 1218
    .local v6, "decExp":I
    :goto_6
    move/from16 v0, v16

    #@120
    move/from16 v1, v20

    #@122
    if-ge v0, v1, :cond_f

    #@124
    move-object/from16 v0, p1

    #@126
    move/from16 v1, v16

    #@128
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@12b
    move-result v4

    #@12c
    const/16 v28, 0x65

    #@12e
    move/from16 v0, v28

    #@130
    if-eq v4, v0, :cond_c

    #@132
    const/16 v28, 0x45

    #@134
    move/from16 v0, v28

    #@136
    if-ne v4, v0, :cond_f

    #@138
    .line 1219
    :cond_c
    const/4 v14, 0x1

    #@139
    .line 1220
    .local v14, "expSign":I
    const/4 v15, 0x0

    #@13a
    .line 1222
    .local v15, "expVal":I
    const/4 v13, 0x0

    #@13b
    .line 1223
    .local v13, "expOverflow":Z
    add-int/lit8 v16, v16, 0x1

    #@13d
    move-object/from16 v0, p1

    #@13f
    move/from16 v1, v16

    #@141
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@144
    move-result v28

    #@145
    packed-switch v28, :pswitch_data_2

    #@148
    .line 1230
    :goto_7
    :pswitch_4
    move/from16 v11, v16

    #@14a
    .local v11, "expAt":I
    move/from16 v17, v16

    #@14c
    .line 1232
    .end local v16    # "i":I
    .local v17, "i":I
    :goto_8
    move/from16 v0, v17

    #@14e
    move/from16 v1, v20

    #@150
    if-ge v0, v1, :cond_17

    #@152
    .line 1221
    const v28, 0xccccccc

    #@155
    .line 1233
    move/from16 v0, v28

    #@157
    if-lt v15, v0, :cond_d

    #@159
    .line 1236
    const/4 v13, 0x1

    #@15a
    .line 1238
    :cond_d
    add-int/lit8 v16, v17, 0x1

    #@15c
    .end local v17    # "i":I
    .restart local v16    # "i":I
    move-object/from16 v0, p1

    #@15e
    move/from16 v1, v17

    #@160
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@163
    move-result v4

    #@164
    packed-switch v4, :pswitch_data_3

    #@167
    .line 1252
    add-int/lit8 v16, v16, -0x1

    #@169
    .line 1256
    :goto_9
    move/from16 v0, v21

    #@16b
    add-int/lit16 v0, v0, 0x144

    #@16d
    move/from16 v28, v0

    #@16f
    add-int v12, v28, v24

    #@171
    .line 1257
    .local v12, "expLimit":I
    if-nez v13, :cond_e

    #@173
    if-le v15, v12, :cond_16

    #@175
    .line 1270
    :cond_e
    mul-int v6, v14, v12

    #@177
    .line 1283
    :goto_a
    move/from16 v0, v16

    #@179
    if-eq v0, v11, :cond_0

    #@17b
    .line 1290
    .end local v11    # "expAt":I
    .end local v12    # "expLimit":I
    .end local v13    # "expOverflow":Z
    .end local v14    # "expSign":I
    .end local v15    # "expVal":I
    :cond_f
    move/from16 v0, v16

    #@17d
    move/from16 v1, v20

    #@17f
    if-ge v0, v1, :cond_10

    #@181
    .line 1291
    add-int/lit8 v28, v20, -0x1

    #@183
    move/from16 v0, v16

    #@185
    move/from16 v1, v28

    #@187
    if-ne v0, v1, :cond_0

    #@189
    .line 1292
    move-object/from16 v0, p1

    #@18b
    move/from16 v1, v16

    #@18d
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@190
    move-result v28

    #@191
    const/16 v29, 0x66

    #@193
    move/from16 v0, v28

    #@195
    move/from16 v1, v29

    #@197
    if-eq v0, v1, :cond_10

    #@199
    .line 1293
    move-object/from16 v0, p1

    #@19b
    move/from16 v1, v16

    #@19d
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@1a0
    move-result v28

    #@1a1
    const/16 v29, 0x46

    #@1a3
    move/from16 v0, v28

    #@1a5
    move/from16 v1, v29

    #@1a7
    if-eq v0, v1, :cond_10

    #@1a9
    .line 1294
    move-object/from16 v0, p1

    #@1ab
    move/from16 v1, v16

    #@1ad
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@1b0
    move-result v28

    #@1b1
    const/16 v29, 0x64

    #@1b3
    move/from16 v0, v28

    #@1b5
    move/from16 v1, v29

    #@1b7
    if-eq v0, v1, :cond_10

    #@1b9
    .line 1295
    move-object/from16 v0, p1

    #@1bb
    move/from16 v1, v16

    #@1bd
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@1c0
    move-result v28

    #@1c1
    const/16 v29, 0x44

    #@1c3
    move/from16 v0, v28

    #@1c5
    move/from16 v1, v29

    #@1c7
    if-ne v0, v1, :cond_0

    #@1c9
    .line 1299
    :cond_10
    move/from16 v0, v18

    #@1cb
    move-object/from16 v1, p0

    #@1cd
    iput-boolean v0, v1, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@1cf
    .line 1300
    move-object/from16 v0, p0

    #@1d1
    iput v6, v0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@1d3
    .line 1301
    move-object/from16 v0, p0

    #@1d5
    iput-object v9, v0, Ljava/lang/FloatingDecimal;->digits:[C

    #@1d7
    .line 1302
    move/from16 v0, v21

    #@1d9
    move-object/from16 v1, p0

    #@1db
    iput v0, v1, Ljava/lang/FloatingDecimal;->nDigits:I

    #@1dd
    .line 1303
    const/16 v28, 0x0

    #@1df
    move/from16 v0, v28

    #@1e1
    move-object/from16 v1, p0

    #@1e3
    iput-boolean v0, v1, Ljava/lang/FloatingDecimal;->isExceptional:Z

    #@1e5
    .line 1304
    return-object p0

    #@1e6
    .line 1137
    .end local v6    # "decExp":I
    :pswitch_5
    if-lez v21, :cond_11

    #@1e8
    .line 1138
    add-int/lit8 v24, v24, 0x1

    #@1ea
    .line 1172
    :goto_b
    add-int/lit8 v16, v16, 0x1

    #@1ec
    goto/16 :goto_5

    #@1ee
    .line 1140
    :cond_11
    add-int/lit8 v23, v23, 0x1

    #@1f0
    goto :goto_b

    #@1f1
    :pswitch_6
    move/from16 v22, v21

    #@1f3
    .line 1152
    .end local v21    # "nDigits":I
    .local v22, "nDigits":I
    :goto_c
    if-lez v24, :cond_12

    #@1f5
    .line 1153
    add-int/lit8 v21, v22, 0x1

    #@1f7
    .end local v22    # "nDigits":I
    .restart local v21    # "nDigits":I
    const/16 v28, 0x30

    #@1f9
    aput-char v28, v9, v22

    #@1fb
    .line 1154
    add-int/lit8 v24, v24, -0x1

    #@1fd
    move/from16 v22, v21

    #@1ff
    .end local v21    # "nDigits":I
    .restart local v22    # "nDigits":I
    goto :goto_c

    #@200
    .line 1156
    :cond_12
    add-int/lit8 v21, v22, 0x1

    #@202
    .end local v22    # "nDigits":I
    .restart local v21    # "nDigits":I
    aput-char v4, v9, v22

    #@204
    goto :goto_b

    #@205
    .line 1159
    :pswitch_7
    if-eqz v8, :cond_13

    #@207
    .line 1161
    new-instance v28, Ljava/lang/NumberFormatException;

    #@209
    const-string/jumbo v29, "multiple points"

    #@20c
    invoke-direct/range {v28 .. v29}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@20f
    throw v28
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    #@210
    .line 1163
    :cond_13
    move/from16 v7, v16

    #@212
    .line 1164
    if-eqz v26, :cond_14

    #@214
    .line 1165
    add-int/lit8 v7, v7, -0x1

    #@216
    .line 1167
    :cond_14
    const/4 v8, 0x1

    #@217
    .line 1168
    goto :goto_b

    #@218
    .line 1212
    :cond_15
    add-int v6, v21, v24

    #@21a
    .restart local v6    # "decExp":I
    goto/16 :goto_6

    #@21c
    .line 1225
    .restart local v13    # "expOverflow":Z
    .restart local v14    # "expSign":I
    .restart local v15    # "expVal":I
    :pswitch_8
    const/4 v14, -0x1

    #@21d
    .line 1228
    :pswitch_9
    add-int/lit8 v16, v16, 0x1

    #@21f
    goto/16 :goto_7

    #@221
    .line 1249
    .restart local v11    # "expAt":I
    :pswitch_a
    mul-int/lit8 v28, v15, 0xa

    #@223
    add-int/lit8 v29, v4, -0x30

    #@225
    add-int v15, v28, v29

    #@227
    move/from16 v17, v16

    #@229
    .line 1250
    .end local v16    # "i":I
    .restart local v17    # "i":I
    goto/16 :goto_8

    #@22b
    .line 1274
    .end local v17    # "i":I
    .restart local v12    # "expLimit":I
    .restart local v16    # "i":I
    :cond_16
    mul-int v28, v14, v15

    #@22d
    add-int v6, v6, v28

    #@22f
    goto/16 :goto_a

    #@231
    .end local v12    # "expLimit":I
    .end local v16    # "i":I
    .restart local v17    # "i":I
    :cond_17
    move/from16 v16, v17

    #@233
    .end local v17    # "i":I
    .restart local v16    # "i":I
    goto/16 :goto_9

    #@235
    .line 1073
    nop

    #@236
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    #@240
    .line 1135
    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    #@25c
    .line 1223
    :pswitch_data_2
    .packed-switch 0x2b
        :pswitch_9
        :pswitch_4
        :pswitch_8
    .end packed-switch

    #@266
    .line 1238
    :pswitch_data_3
    .packed-switch 0x30
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method stickyRound(D)F
    .locals 9
    .param p1, "dval"    # D

    #@0
    .prologue
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@2
    .line 265
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@5
    move-result-wide v2

    #@6
    .line 266
    .local v2, "lbits":J
    and-long v0, v2, v6

    #@8
    .line 267
    .local v0, "binexp":J
    const-wide/16 v4, 0x0

    #@a
    cmp-long v4, v0, v4

    #@c
    if-eqz v4, :cond_0

    #@e
    cmp-long v4, v0, v6

    #@10
    if-nez v4, :cond_1

    #@12
    .line 270
    :cond_0
    double-to-float v4, p1

    #@13
    return v4

    #@14
    .line 272
    :cond_1
    iget v4, p0, Ljava/lang/FloatingDecimal;->roundDir:I

    #@16
    int-to-long v4, v4

    #@17
    add-long/2addr v2, v4

    #@18
    .line 273
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@1b
    move-result-wide v4

    #@1c
    double-to-float v4, v4

    #@1d
    return v4
.end method

.method public toJavaFormatString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 914
    sget-object v2, Ljava/lang/FloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, [C

    #@8
    .line 915
    .local v1, "result":[C
    invoke-direct {p0, v1}, Ljava/lang/FloatingDecimal;->getChars([C)I

    #@b
    move-result v0

    #@c
    .line 916
    .local v0, "i":I
    new-instance v2, Ljava/lang/String;

    #@e
    const/4 v3, 0x0

    #@f
    invoke-direct {v2, v1, v3, v0}, Ljava/lang/String;-><init>([CII)V

    #@12
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 900
    new-instance v0, Ljava/lang/StringBuffer;

    #@3
    iget v1, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@5
    add-int/lit8 v1, v1, 0x8

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@a
    .line 901
    .local v0, "result":Ljava/lang/StringBuffer;
    iget-boolean v1, p0, Ljava/lang/FloatingDecimal;->isNegative:Z

    #@c
    if-eqz v1, :cond_0

    #@e
    const/16 v1, 0x2d

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@13
    .line 902
    :cond_0
    iget-boolean v1, p0, Ljava/lang/FloatingDecimal;->isExceptional:Z

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 903
    iget-object v1, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@19
    iget v2, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@1b
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@1e
    .line 910
    :goto_0
    new-instance v1, Ljava/lang/String;

    #@20
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    #@23
    return-object v1

    #@24
    .line 905
    :cond_1
    const-string/jumbo v1, "0."

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    .line 906
    iget-object v1, p0, Ljava/lang/FloatingDecimal;->digits:[C

    #@2c
    iget v2, p0, Ljava/lang/FloatingDecimal;->nDigits:I

    #@2e
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@31
    .line 907
    const/16 v1, 0x65

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@36
    .line 908
    iget v1, p0, Ljava/lang/FloatingDecimal;->decExponent:I

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@3b
    goto :goto_0
.end method
