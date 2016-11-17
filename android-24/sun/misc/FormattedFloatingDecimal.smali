.class public Lsun/misc/FormattedFloatingDecimal;
.super Ljava/lang/Object;
.source "FormattedFloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/FormattedFloatingDecimal$1;,
        Lsun/misc/FormattedFloatingDecimal$Form;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final synthetic -sun-misc-FormattedFloatingDecimal$FormSwitchesValues:[I = null

.field private static b5p:[Lsun/misc/FDBigInt; = null

.field private static final big10pow:[D

.field static final bigDecimalExponent:I = 0x144

.field static final expBias:I = 0x3ff

.field static final expMask:J = 0x7ff0000000000000L

.field static final expOne:J = 0x3ff0000000000000L

.field static final expShift:I = 0x34

.field static final fractHOB:J = 0x10000000000000L

.field static final fractMask:J = 0xfffffffffffffL

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

.field decExponentRounded:I

.field digits:[C

.field private form:Lsun/misc/FormattedFloatingDecimal$Form;

.field fromHex:Z

.field isExceptional:Z

.field isNegative:Z

.field mustSetRoundDir:Z

.field nDigits:I

.field precision:I

.field roundDir:I


# direct methods
.method private static synthetic -getsun-misc-FormattedFloatingDecimal$FormSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->-sun-misc-FormattedFloatingDecimal$FormSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->-sun-misc-FormattedFloatingDecimal$FormSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lsun/misc/FormattedFloatingDecimal$Form;->values()[Lsun/misc/FormattedFloatingDecimal$Form;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    #@10
    invoke-virtual {v1}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

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
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    #@19
    invoke-virtual {v1}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

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
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->GENERAL:Lsun/misc/FormattedFloatingDecimal$Form;

    #@22
    invoke-virtual {v1}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

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
    sget-object v1, Lsun/misc/FormattedFloatingDecimal$Form;->SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;

    #@2b
    invoke-virtual {v1}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

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
    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->-sun-misc-FormattedFloatingDecimal$FormSwitchesValues:[I

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
    const-class v0, Lsun/misc/FormattedFloatingDecimal;

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
    sput-boolean v0, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    #@10
    .line 1144
    new-instance v0, Lsun/misc/FormattedFloatingDecimal$1;

    #@12
    invoke-direct {v0}, Lsun/misc/FormattedFloatingDecimal$1;-><init>()V

    #@15
    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    #@17
    .line 1662
    const/16 v0, 0x17

    #@19
    new-array v0, v0, [D

    #@1b
    fill-array-data v0, :array_0

    #@1e
    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    #@20
    .line 1671
    const/16 v0, 0xb

    #@22
    new-array v0, v0, [F

    #@24
    fill-array-data v0, :array_1

    #@27
    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->singleSmall10pow:[F

    #@29
    .line 1677
    new-array v0, v1, [D

    #@2b
    fill-array-data v0, :array_2

    #@2e
    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->big10pow:[D

    #@30
    .line 1679
    new-array v0, v1, [D

    #@32
    fill-array-data v0, :array_3

    #@35
    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->tiny10pow:[D

    #@37
    .line 1682
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    #@39
    array-length v0, v0

    #@3a
    add-int/lit8 v0, v0, -0x1

    #@3c
    sput v0, Lsun/misc/FormattedFloatingDecimal;->maxSmallTen:I

    #@3e
    .line 1683
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->singleSmall10pow:[F

    #@40
    array-length v0, v0

    #@41
    add-int/lit8 v0, v0, -0x1

    #@43
    sput v0, Lsun/misc/FormattedFloatingDecimal;->singleMaxSmallTen:I

    #@45
    .line 1685
    const/16 v0, 0xe

    #@47
    new-array v0, v0, [I

    #@49
    fill-array-data v0, :array_4

    #@4c
    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    #@4e
    .line 1703
    new-array v0, v3, [J

    #@50
    fill-array-data v0, :array_5

    #@53
    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    #@55
    .line 1734
    new-array v0, v3, [I

    #@57
    fill-array-data v0, :array_6

    #@5a
    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->n5bits:[I

    #@5c
    .line 1764
    new-array v0, v2, [C

    #@5e
    fill-array-data v0, :array_7

    #@61
    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->infinity:[C

    #@63
    .line 1765
    const/4 v0, 0x3

    #@64
    new-array v0, v0, [C

    #@66
    fill-array-data v0, :array_8

    #@69
    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    #@6b
    .line 1766
    new-array v0, v2, [C

    #@6d
    fill-array-data v0, :array_9

    #@70
    sput-object v0, Lsun/misc/FormattedFloatingDecimal;->zero:[C

    #@72
    .line 33
    return-void

    #@73
    :cond_0
    const/4 v0, 0x1

    #@74
    goto :goto_0

    #@75
    .line 1662
    nop

    #@76
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

    #@d6
    .line 1671
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

    #@f0
    .line 1677
    :array_2
    .array-data 8
        0x4341c37937e08000L    # 1.0E16
        0x4693b8b5b5056e17L    # 1.0E32
        0x4d384f03e93ff9f5L    # 1.0E64
        0x5a827748f9301d32L    # 1.0E128
        0x75154fdd7f73bf3cL    # 1.0E256
    .end array-data

    #@108
    .line 1679
    :array_3
    .array-data 8
        0x3c9cd2b297d889bcL    # 1.0E-16
        0x3949f623d5a8a733L    # 1.0E-32
        0x32a50ffd44f4a73dL    # 1.0E-64
        0x255bba08cf8c979dL    # 1.0E-128
        0xac8062864ac6f43L    # 1.0E-256
    .end array-data

    #@120
    .line 1685
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

    #@140
    .line 1703
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

    #@1b0
    .line 1734
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

    #@1ea
    .line 1764
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

    #@1f6
    .line 1765
    :array_8
    .array-data 2
        0x4es
        0x61s
        0x4es
    .end array-data

    #@1fd
    .line 1766
    nop

    #@1fe
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

.method public constructor <init>(D)V
    .locals 3
    .param p1, "d"    # D

    #@0
    .prologue
    .line 469
    sget-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    #@2
    const v1, 0x7fffffff

    #@5
    invoke-direct {p0, p1, p2, v1, v0}, Lsun/misc/FormattedFloatingDecimal;-><init>(DILsun/misc/FormattedFloatingDecimal$Form;)V

    #@8
    .line 467
    return-void
.end method

.method public constructor <init>(DILsun/misc/FormattedFloatingDecimal$Form;)V
    .locals 11
    .param p1, "d"    # D
    .param p3, "precision"    # I
    .param p4, "form"    # Lsun/misc/FormattedFloatingDecimal$Form;

    #@0
    .prologue
    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    const/4 v6, 0x0

    #@4
    iput-boolean v6, p0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    #@6
    .line 43
    const/4 v6, 0x0

    #@7
    iput-boolean v6, p0, Lsun/misc/FormattedFloatingDecimal;->fromHex:Z

    #@9
    .line 44
    const/4 v6, 0x0

    #@a
    iput v6, p0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    #@c
    .line 474
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@f
    move-result-wide v2

    #@10
    .line 479
    .local v2, "dBits":J
    iput p3, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    #@12
    .line 480
    iput-object p4, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    #@14
    .line 483
    const-wide/high16 v6, -0x8000000000000000L

    #@16
    and-long/2addr v6, v2

    #@17
    const-wide/16 v8, 0x0

    #@19
    cmp-long v6, v6, v8

    #@1b
    if-eqz v6, :cond_0

    #@1d
    .line 484
    const/4 v6, 0x1

    #@1e
    iput-boolean v6, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    #@20
    .line 485
    const-wide/high16 v6, -0x8000000000000000L

    #@22
    xor-long/2addr v2, v6

    #@23
    .line 491
    :goto_0
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@25
    and-long/2addr v6, v2

    #@26
    const/16 v8, 0x34

    #@28
    shr-long/2addr v6, v8

    #@29
    long-to-int v0, v6

    #@2a
    .line 492
    .local v0, "binExp":I
    const-wide v6, 0xfffffffffffffL

    #@2f
    and-long v4, v2, v6

    #@31
    .line 493
    .local v4, "fractBits":J
    const/16 v6, 0x7ff

    #@33
    if-ne v0, v6, :cond_2

    #@35
    .line 494
    const/4 v6, 0x1

    #@36
    iput-boolean v6, p0, Lsun/misc/FormattedFloatingDecimal;->isExceptional:Z

    #@38
    .line 495
    const-wide/16 v6, 0x0

    #@3a
    cmp-long v6, v4, v6

    #@3c
    if-nez v6, :cond_1

    #@3e
    .line 496
    sget-object v6, Lsun/misc/FormattedFloatingDecimal;->infinity:[C

    #@40
    iput-object v6, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@42
    .line 501
    :goto_1
    iget-object v6, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@44
    array-length v6, v6

    #@45
    iput v6, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@47
    .line 502
    return-void

    #@48
    .line 487
    .end local v0    # "binExp":I
    .end local v4    # "fractBits":J
    :cond_0
    const/4 v6, 0x0

    #@49
    iput-boolean v6, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    #@4b
    goto :goto_0

    #@4c
    .line 498
    .restart local v0    # "binExp":I
    .restart local v4    # "fractBits":J
    :cond_1
    sget-object v6, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    #@4e
    iput-object v6, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@50
    .line 499
    const/4 v6, 0x0

    #@51
    iput-boolean v6, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    #@53
    goto :goto_1

    #@54
    .line 504
    :cond_2
    const/4 v6, 0x0

    #@55
    iput-boolean v6, p0, Lsun/misc/FormattedFloatingDecimal;->isExceptional:Z

    #@57
    .line 509
    if-nez v0, :cond_5

    #@59
    .line 510
    const-wide/16 v6, 0x0

    #@5b
    cmp-long v6, v4, v6

    #@5d
    if-nez v6, :cond_3

    #@5f
    .line 512
    const/4 v6, 0x0

    #@60
    iput v6, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@62
    .line 513
    sget-object v6, Lsun/misc/FormattedFloatingDecimal;->zero:[C

    #@64
    iput-object v6, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@66
    .line 514
    const/4 v6, 0x1

    #@67
    iput v6, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@69
    .line 515
    return-void

    #@6a
    .line 517
    :cond_3
    :goto_2
    const-wide/high16 v6, 0x10000000000000L

    #@6c
    and-long/2addr v6, v4

    #@6d
    const-wide/16 v8, 0x0

    #@6f
    cmp-long v6, v6, v8

    #@71
    if-nez v6, :cond_4

    #@73
    .line 518
    const/4 v6, 0x1

    #@74
    shl-long/2addr v4, v6

    #@75
    .line 519
    add-int/lit8 v0, v0, -0x1

    #@77
    goto :goto_2

    #@78
    .line 521
    :cond_4
    add-int/lit8 v6, v0, 0x34

    #@7a
    add-int/lit8 v1, v6, 0x1

    #@7c
    .line 522
    .local v1, "nSignificantBits":I
    add-int/lit8 v0, v0, 0x1

    #@7e
    .line 527
    :goto_3
    add-int/lit16 v0, v0, -0x3ff

    #@80
    .line 529
    invoke-direct {p0, v0, v4, v5, v1}, Lsun/misc/FormattedFloatingDecimal;->dtoa(IJI)V

    #@83
    .line 472
    return-void

    #@84
    .line 524
    .end local v1    # "nSignificantBits":I
    :cond_5
    const-wide/high16 v6, 0x10000000000000L

    #@86
    or-long/2addr v4, v6

    #@87
    .line 525
    const/16 v1, 0x35

    #@89
    .restart local v1    # "nSignificantBits":I
    goto :goto_3
.end method

.method public constructor <init>(F)V
    .locals 2
    .param p1, "f"    # F

    #@0
    .prologue
    .line 537
    sget-object v0, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    #@2
    const v1, 0x7fffffff

    #@5
    invoke-direct {p0, p1, v1, v0}, Lsun/misc/FormattedFloatingDecimal;-><init>(FILsun/misc/FormattedFloatingDecimal$Form;)V

    #@8
    .line 535
    return-void
.end method

.method public constructor <init>(FILsun/misc/FormattedFloatingDecimal$Form;)V
    .locals 9
    .param p1, "f"    # F
    .param p2, "precision"    # I
    .param p3, "form"    # Lsun/misc/FormattedFloatingDecimal$Form;

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
    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    .line 42
    iput-boolean v8, p0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    #@b
    .line 43
    iput-boolean v8, p0, Lsun/misc/FormattedFloatingDecimal;->fromHex:Z

    #@d
    .line 44
    iput v8, p0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    #@f
    .line 541
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@12
    move-result v1

    #@13
    .line 546
    .local v1, "fBits":I
    iput p2, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    #@15
    .line 547
    iput-object p3, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    #@17
    .line 550
    and-int v4, v1, v6

    #@19
    if-eqz v4, :cond_0

    #@1b
    .line 551
    iput-boolean v5, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    #@1d
    .line 552
    xor-int/2addr v1, v6

    #@1e
    .line 558
    :goto_0
    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    #@20
    and-int/2addr v4, v1

    #@21
    shr-int/lit8 v0, v4, 0x17

    #@23
    .line 559
    .local v0, "binExp":I
    const v4, 0x7fffff

    #@26
    and-int v2, v1, v4

    #@28
    .line 560
    .local v2, "fractBits":I
    const/16 v4, 0xff

    #@2a
    if-ne v0, v4, :cond_2

    #@2c
    .line 561
    iput-boolean v5, p0, Lsun/misc/FormattedFloatingDecimal;->isExceptional:Z

    #@2e
    .line 562
    int-to-long v4, v2

    #@2f
    const-wide/16 v6, 0x0

    #@31
    cmp-long v4, v4, v6

    #@33
    if-nez v4, :cond_1

    #@35
    .line 563
    sget-object v4, Lsun/misc/FormattedFloatingDecimal;->infinity:[C

    #@37
    iput-object v4, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@39
    .line 568
    :goto_1
    iget-object v4, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@3b
    array-length v4, v4

    #@3c
    iput v4, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@3e
    .line 569
    return-void

    #@3f
    .line 554
    .end local v0    # "binExp":I
    .end local v2    # "fractBits":I
    :cond_0
    iput-boolean v8, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    #@41
    goto :goto_0

    #@42
    .line 565
    .restart local v0    # "binExp":I
    .restart local v2    # "fractBits":I
    :cond_1
    sget-object v4, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    #@44
    iput-object v4, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@46
    .line 566
    iput-boolean v8, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    #@48
    goto :goto_1

    #@49
    .line 571
    :cond_2
    iput-boolean v8, p0, Lsun/misc/FormattedFloatingDecimal;->isExceptional:Z

    #@4b
    .line 576
    if-nez v0, :cond_5

    #@4d
    .line 577
    if-nez v2, :cond_3

    #@4f
    .line 579
    iput v8, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@51
    .line 580
    sget-object v4, Lsun/misc/FormattedFloatingDecimal;->zero:[C

    #@53
    iput-object v4, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@55
    .line 581
    iput v5, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@57
    .line 582
    return-void

    #@58
    .line 584
    :cond_3
    :goto_2
    and-int v4, v2, v7

    #@5a
    if-nez v4, :cond_4

    #@5c
    .line 585
    shl-int/lit8 v2, v2, 0x1

    #@5e
    .line 586
    add-int/lit8 v0, v0, -0x1

    #@60
    goto :goto_2

    #@61
    .line 588
    :cond_4
    add-int/lit8 v4, v0, 0x17

    #@63
    add-int/lit8 v3, v4, 0x1

    #@65
    .line 589
    .local v3, "nSignificantBits":I
    add-int/lit8 v0, v0, 0x1

    #@67
    .line 594
    :goto_3
    add-int/lit8 v0, v0, -0x7f

    #@69
    .line 596
    int-to-long v4, v2

    #@6a
    const/16 v6, 0x1d

    #@6c
    shl-long/2addr v4, v6

    #@6d
    invoke-direct {p0, v0, v4, v5, v3}, Lsun/misc/FormattedFloatingDecimal;->dtoa(IJI)V

    #@70
    .line 539
    return-void

    #@71
    .line 591
    .end local v3    # "nSignificantBits":I
    :cond_5
    or-int/2addr v2, v7

    #@72
    .line 592
    const/16 v3, 0x18

    #@74
    .restart local v3    # "nSignificantBits":I
    goto :goto_3
.end method

.method private constructor <init>(ZI[CIZILsun/misc/FormattedFloatingDecimal$Form;)V
    .locals 1
    .param p1, "negSign"    # Z
    .param p2, "decExponent"    # I
    .param p3, "digits"    # [C
    .param p4, "n"    # I
    .param p5, "e"    # Z
    .param p6, "precision"    # I
    .param p7, "form"    # Lsun/misc/FormattedFloatingDecimal$Form;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 42
    iput-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    #@6
    .line 43
    iput-boolean v0, p0, Lsun/misc/FormattedFloatingDecimal;->fromHex:Z

    #@8
    .line 44
    iput v0, p0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    #@a
    .line 53
    iput-boolean p1, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    #@c
    .line 54
    iput-boolean p5, p0, Lsun/misc/FormattedFloatingDecimal;->isExceptional:Z

    #@e
    .line 55
    iput p2, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@10
    .line 56
    iput-object p3, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@12
    .line 57
    iput p4, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@14
    .line 58
    iput p6, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    #@16
    .line 59
    iput-object p7, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    #@18
    .line 51
    return-void
.end method

.method private applyPrecision(I)[C
    .locals 8
    .param p1, "length"    # I

    #@0
    .prologue
    const/16 v7, 0x35

    #@2
    const/16 v6, 0x31

    #@4
    const/16 v4, 0x39

    #@6
    const/4 v5, 0x0

    #@7
    .line 425
    iget v3, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@9
    new-array v2, v3, [C

    #@b
    .line 426
    .local v2, "result":[C
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    array-length v3, v2

    #@d
    if-ge v0, v3, :cond_0

    #@f
    const/16 v3, 0x30

    #@11
    aput-char v3, v2, v0

    #@13
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 428
    :cond_0
    iget v3, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@18
    if-ge p1, v3, :cond_1

    #@1a
    if-gez p1, :cond_2

    #@1c
    .line 430
    :cond_1
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@1e
    iget v4, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@20
    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@23
    .line 431
    return-object v2

    #@24
    .line 433
    :cond_2
    if-nez p1, :cond_4

    #@26
    .line 436
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@28
    aget-char v3, v3, v5

    #@2a
    if-lt v3, v7, :cond_3

    #@2c
    .line 437
    aput-char v6, v2, v5

    #@2e
    .line 439
    :cond_3
    return-object v2

    #@2f
    .line 442
    :cond_4
    move v0, p1

    #@30
    .line 443
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@32
    aget-char v1, v3, p1

    #@34
    .line 444
    .local v1, "q":I
    if-lt v1, v7, :cond_7

    #@36
    if-lez p1, :cond_7

    #@38
    .line 445
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@3a
    add-int/lit8 v0, p1, -0x1

    #@3c
    aget-char v1, v3, v0

    #@3e
    .line 446
    if-ne v1, v4, :cond_6

    #@40
    .line 447
    :goto_1
    if-ne v1, v4, :cond_5

    #@42
    if-lez v0, :cond_5

    #@44
    .line 448
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@46
    add-int/lit8 v0, v0, -0x1

    #@48
    aget-char v1, v3, v0

    #@4a
    goto :goto_1

    #@4b
    .line 450
    :cond_5
    if-ne v1, v4, :cond_6

    #@4d
    .line 452
    aput-char v6, v2, v5

    #@4f
    .line 453
    return-object v2

    #@50
    .line 456
    :cond_6
    add-int/lit8 v3, v1, 0x1

    #@52
    int-to-char v3, v3

    #@53
    aput-char v3, v2, v0

    #@55
    .line 458
    :cond_7
    :goto_2
    add-int/lit8 v0, v0, -0x1

    #@57
    if-ltz v0, :cond_8

    #@59
    .line 459
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@5b
    aget-char v3, v3, v0

    #@5d
    aput-char v3, v2, v0

    #@5f
    goto :goto_2

    #@60
    .line 461
    :cond_8
    return-object v2
.end method

.method private static declared-synchronized big5pow(I)Lsun/misc/FDBigInt;
    .locals 10
    .param p0, "p"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const-class v6, Lsun/misc/FormattedFloatingDecimal;

    #@3
    monitor-enter v6

    #@4
    .line 137
    :try_start_0
    sget-boolean v7, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

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
    .line 138
    :cond_1
    :try_start_1
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@1c
    if-nez v5, :cond_3

    #@1e
    .line 139
    add-int/lit8 v5, p0, 0x1

    #@20
    new-array v5, v5, [Lsun/misc/FDBigInt;

    #@22
    sput-object v5, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@24
    .line 145
    :cond_2
    :goto_0
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@26
    aget-object v5, v5, p0

    #@28
    if-eqz v5, :cond_4

    #@2a
    .line 146
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@2c
    aget-object v5, v5, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    monitor-exit v6

    #@2f
    return-object v5

    #@30
    .line 140
    :cond_3
    :try_start_2
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@32
    array-length v5, v5

    #@33
    if-gt v5, p0, :cond_2

    #@35
    .line 141
    add-int/lit8 v5, p0, 0x1

    #@37
    new-array v4, v5, [Lsun/misc/FDBigInt;

    #@39
    .line 142
    .local v4, "t":[Lsun/misc/FDBigInt;
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@3b
    sget-object v7, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@3d
    array-length v7, v7

    #@3e
    const/4 v8, 0x0

    #@3f
    const/4 v9, 0x0

    #@40
    invoke-static {v5, v8, v4, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@43
    .line 143
    sput-object v4, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@45
    goto :goto_0

    #@46
    .line 147
    .end local v4    # "t":[Lsun/misc/FDBigInt;
    :cond_4
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    #@48
    array-length v5, v5

    #@49
    if-ge p0, v5, :cond_5

    #@4b
    .line 148
    new-instance v5, Lsun/misc/FDBigInt;

    #@4d
    sget-object v7, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    #@4f
    aget v7, v7, p0

    #@51
    invoke-direct {v5, v7}, Lsun/misc/FDBigInt;-><init>(I)V

    #@54
    sget-object v7, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@56
    aput-object v5, v7, p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@58
    monitor-exit v6

    #@59
    return-object v5

    #@5a
    .line 149
    :cond_5
    :try_start_3
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    #@5c
    array-length v5, v5

    #@5d
    if-ge p0, v5, :cond_6

    #@5f
    .line 150
    new-instance v5, Lsun/misc/FDBigInt;

    #@61
    sget-object v7, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    #@63
    aget-wide v8, v7, p0

    #@65
    invoke-direct {v5, v8, v9}, Lsun/misc/FDBigInt;-><init>(J)V

    #@68
    sget-object v7, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@6a
    aput-object v5, v7, p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6c
    monitor-exit v6

    #@6d
    return-object v5

    #@6e
    .line 159
    :cond_6
    shr-int/lit8 v2, p0, 0x1

    #@70
    .line 160
    .local v2, "q":I
    sub-int v3, p0, v2

    #@72
    .line 161
    .local v3, "r":I
    :try_start_4
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@74
    aget-object v0, v5, v2

    #@76
    .line 162
    .local v0, "bigq":Lsun/misc/FDBigInt;
    if-nez v0, :cond_7

    #@78
    .line 163
    invoke-static {v2}, Lsun/misc/FormattedFloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    #@7b
    move-result-object v0

    #@7c
    .line 164
    :cond_7
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    #@7e
    array-length v5, v5

    #@7f
    if-ge v3, v5, :cond_8

    #@81
    .line 165
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    #@83
    aget v5, v5, v3

    #@85
    invoke-virtual {v0, v5}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    #@88
    move-result-object v5

    #@89
    sget-object v7, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@8b
    aput-object v5, v7, p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@8d
    monitor-exit v6

    #@8e
    return-object v5

    #@8f
    .line 167
    :cond_8
    :try_start_5
    sget-object v5, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@91
    aget-object v1, v5, v3

    #@93
    .line 168
    .local v1, "bigr":Lsun/misc/FDBigInt;
    if-nez v1, :cond_9

    #@95
    .line 169
    invoke-static {v3}, Lsun/misc/FormattedFloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    #@98
    move-result-object v1

    #@99
    .line 170
    :cond_9
    invoke-virtual {v0, v1}, Lsun/misc/FDBigInt;->mult(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    #@9c
    move-result-object v5

    #@9d
    sget-object v7, Lsun/misc/FormattedFloatingDecimal;->b5p:[Lsun/misc/FDBigInt;

    #@9f
    aput-object v5, v7, p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@a1
    monitor-exit v6

    #@a2
    return-object v5
.end method

.method private checkExponent(I)I
    .locals 5
    .param p1, "length"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 412
    iget v2, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@3
    if-ge p1, v2, :cond_0

    #@5
    if-gez p1, :cond_1

    #@7
    .line 413
    :cond_0
    iget v1, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@9
    return v1

    #@a
    .line 415
    :cond_1
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_3

    #@d
    .line 416
    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@f
    aget-char v2, v2, v0

    #@11
    const/16 v3, 0x39

    #@13
    if-eq v2, v3, :cond_2

    #@15
    .line 418
    iget v1, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@17
    return v1

    #@18
    .line 415
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 419
    :cond_3
    iget v2, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@1d
    iget-object v3, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@1f
    aget-char v3, v3, p1

    #@21
    const/16 v4, 0x35

    #@23
    if-lt v3, v4, :cond_4

    #@25
    const/4 v1, 0x1

    #@26
    :cond_4
    add-int/2addr v1, v2

    #@27
    return v1
.end method

.method private static constructPow52(II)Lsun/misc/FDBigInt;
    .locals 2
    .param p0, "p5"    # I
    .param p1, "p2"    # I

    #@0
    .prologue
    .line 198
    new-instance v0, Lsun/misc/FDBigInt;

    #@2
    invoke-static {p0}, Lsun/misc/FormattedFloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lsun/misc/FDBigInt;-><init>(Lsun/misc/FDBigInt;)V

    #@9
    .line 199
    .local v0, "v":Lsun/misc/FDBigInt;
    if-eqz p1, :cond_0

    #@b
    .line 200
    invoke-virtual {v0, p1}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    #@e
    .line 202
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
    .line 109
    cmp-long v1, p0, v4

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v1, 0x0

    #@a
    return v1

    #@b
    .line 111
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
    .line 112
    shl-long/2addr p0, v7

    #@13
    goto :goto_0

    #@14
    .line 114
    :cond_1
    :goto_1
    cmp-long v1, p0, v4

    #@16
    if-lez v1, :cond_2

    #@18
    .line 115
    shl-long/2addr p0, v6

    #@19
    goto :goto_1

    #@1a
    .line 118
    :cond_2
    const/4 v0, 0x0

    #@1b
    .line 119
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
    .line 120
    shl-long/2addr p0, v7

    #@26
    .line 121
    add-int/lit8 v0, v0, 0x8

    #@28
    goto :goto_2

    #@29
    .line 123
    :cond_3
    :goto_3
    cmp-long v1, p0, v4

    #@2b
    if-eqz v1, :cond_4

    #@2d
    .line 124
    shl-long/2addr p0, v6

    #@2e
    .line 125
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_3

    #@31
    .line 127
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
    .line 319
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
    .line 320
    const-wide/16 v14, 0xa

    #@9
    div-long p4, p4, v14

    #@b
    .line 319
    add-int/lit8 v6, v6, 0x1

    #@d
    goto :goto_0

    #@e
    .line 321
    :cond_0
    if-eqz v6, :cond_1

    #@10
    .line 322
    sget-object v14, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    #@12
    aget-wide v14, v14, v6

    #@14
    shl-long v10, v14, v6

    #@16
    .line 323
    .local v10, "pow10":J
    rem-long v12, p2, v10

    #@18
    .line 324
    .local v12, "residue":J
    div-long p2, p2, v10

    #@1a
    .line 325
    add-int p1, p1, v6

    #@1c
    .line 326
    const/4 v14, 0x1

    #@1d
    shr-long v14, v10, v14

    #@1f
    cmp-long v14, v12, v14

    #@21
    if-ltz v14, :cond_1

    #@23
    .line 328
    const-wide/16 v14, 0x1

    #@25
    add-long p2, p2, v14

    #@27
    .line 331
    .end local v10    # "pow10":J
    .end local v12    # "residue":J
    :cond_1
    const-wide/32 v14, 0x7fffffff

    #@2a
    cmp-long v14, p2, v14

    #@2c
    if-gtz v14, :cond_6

    #@2e
    .line 332
    sget-boolean v14, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

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
    .line 335
    :cond_3
    move-wide/from16 v0, p2

    #@49
    long-to-int v7, v0

    #@4a
    .line 336
    .local v7, "ivalue":I
    const/16 v8, 0xa

    #@4c
    .line 337
    .local v8, "ndigits":I
    sget-object v14, Lsun/misc/FormattedFloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    #@4e
    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@51
    move-result-object v5

    #@52
    check-cast v5, [C

    #@54
    .line 338
    .local v5, "digits":[C
    const/16 v3, 0x9

    #@56
    .line 339
    .local v3, "digitno":I
    rem-int/lit8 v2, v7, 0xa

    #@58
    .line 340
    .local v2, "c":I
    div-int/lit8 v7, v7, 0xa

    #@5a
    .line 341
    :goto_2
    if-nez v2, :cond_4

    #@5c
    .line 342
    add-int/lit8 p1, p1, 0x1

    #@5e
    .line 343
    rem-int/lit8 v2, v7, 0xa

    #@60
    .line 344
    div-int/lit8 v7, v7, 0xa

    #@62
    goto :goto_2

    #@63
    .line 346
    .end local v3    # "digitno":I
    .local v4, "digitno":I
    :goto_3
    if-eqz v7, :cond_5

    #@65
    .line 347
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
    .line 348
    add-int/lit8 p1, p1, 0x1

    #@6e
    .line 349
    rem-int/lit8 v2, v7, 0xa

    #@70
    .line 350
    div-int/lit8 v7, v7, 0xa

    #@72
    :cond_4
    move v4, v3

    #@73
    .end local v3    # "digitno":I
    .restart local v4    # "digitno":I
    goto :goto_3

    #@74
    .line 352
    :cond_5
    add-int/lit8 v14, v2, 0x30

    #@76
    int-to-char v14, v14

    #@77
    aput-char v14, v5, v4

    #@79
    move v3, v4

    #@7a
    .line 375
    .end local v4    # "digitno":I
    .end local v7    # "ivalue":I
    .restart local v3    # "digitno":I
    :goto_4
    sub-int/2addr v8, v3

    #@7b
    .line 376
    new-array v9, v8, [C

    #@7d
    .line 377
    .local v9, "result":[C
    const/4 v14, 0x0

    #@7e
    invoke-static {v5, v3, v9, v14, v8}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@81
    .line 378
    move-object/from16 v0, p0

    #@83
    iput-object v9, v0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@85
    .line 379
    add-int/lit8 v14, p1, 0x1

    #@87
    move-object/from16 v0, p0

    #@89
    iput v14, v0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@8b
    .line 380
    move-object/from16 v0, p0

    #@8d
    iput v8, v0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@8f
    .line 310
    return-void

    #@90
    .line 356
    .end local v2    # "c":I
    .end local v3    # "digitno":I
    .end local v5    # "digits":[C
    .end local v8    # "ndigits":I
    .end local v9    # "result":[C
    :cond_6
    const/16 v8, 0x14

    #@92
    .line 357
    .restart local v8    # "ndigits":I
    sget-object v14, Lsun/misc/FormattedFloatingDecimal;->perThreadBuffer:Ljava/lang/ThreadLocal;

    #@94
    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@97
    move-result-object v5

    #@98
    check-cast v5, [C

    #@9a
    .line 358
    .restart local v5    # "digits":[C
    const/16 v3, 0x13

    #@9c
    .line 359
    .restart local v3    # "digitno":I
    const-wide/16 v14, 0xa

    #@9e
    rem-long v14, p2, v14

    #@a0
    long-to-int v2, v14

    #@a1
    .line 360
    .restart local v2    # "c":I
    const-wide/16 v14, 0xa

    #@a3
    div-long p2, p2, v14

    #@a5
    .line 361
    :goto_5
    if-nez v2, :cond_7

    #@a7
    .line 362
    add-int/lit8 p1, p1, 0x1

    #@a9
    .line 363
    const-wide/16 v14, 0xa

    #@ab
    rem-long v14, p2, v14

    #@ad
    long-to-int v2, v14

    #@ae
    .line 364
    const-wide/16 v14, 0xa

    #@b0
    div-long p2, p2, v14

    #@b2
    goto :goto_5

    #@b3
    .line 366
    .end local v3    # "digitno":I
    .restart local v4    # "digitno":I
    :goto_6
    const-wide/16 v14, 0x0

    #@b5
    cmp-long v14, p2, v14

    #@b7
    if-eqz v14, :cond_8

    #@b9
    .line 367
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
    .line 368
    add-int/lit8 p1, p1, 0x1

    #@c2
    .line 369
    const-wide/16 v14, 0xa

    #@c4
    rem-long v14, p2, v14

    #@c6
    long-to-int v2, v14

    #@c7
    .line 370
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
    .line 372
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
    .line 217
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@3
    move-result-wide v6

    #@4
    const-wide v8, 0x7fffffffffffffffL

    #@9
    and-long v2, v6, v8

    #@b
    .line 218
    .local v2, "lbits":J
    const/16 v5, 0x34

    #@d
    ushr-long v6, v2, v5

    #@f
    long-to-int v0, v6

    #@10
    .line 219
    .local v0, "binexp":I
    const-wide v6, 0xfffffffffffffL

    #@15
    and-long/2addr v2, v6

    #@16
    .line 220
    if-lez v0, :cond_1

    #@18
    .line 221
    const-wide/high16 v6, 0x10000000000000L

    #@1a
    or-long/2addr v2, v6

    #@1b
    .line 230
    :cond_0
    add-int/lit16 v0, v0, -0x3ff

    #@1d
    .line 231
    invoke-static {v2, v3}, Lsun/misc/FormattedFloatingDecimal;->countBits(J)I

    #@20
    move-result v4

    #@21
    .line 236
    .local v4, "nbits":I
    rsub-int/lit8 v1, v4, 0x35

    #@23
    .line 237
    .local v1, "lowOrderZeros":I
    ushr-long/2addr v2, v1

    #@24
    .line 239
    add-int/lit8 v5, v0, 0x1

    #@26
    sub-int/2addr v5, v4

    #@27
    iput v5, p0, Lsun/misc/FormattedFloatingDecimal;->bigIntExp:I

    #@29
    .line 240
    iput v4, p0, Lsun/misc/FormattedFloatingDecimal;->bigIntNBits:I

    #@2b
    .line 241
    new-instance v5, Lsun/misc/FDBigInt;

    #@2d
    invoke-direct {v5, v2, v3}, Lsun/misc/FDBigInt;-><init>(J)V

    #@30
    return-object v5

    #@31
    .line 223
    .end local v1    # "lowOrderZeros":I
    .end local v4    # "nbits":I
    :cond_1
    sget-boolean v5, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

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
    .line 224
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@4c
    .line 225
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
    .line 226
    const/4 v5, 0x1

    #@56
    shl-long/2addr v2, v5

    #@57
    .line 227
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
    .line 609
    invoke-static/range {p2 .. p3}, Lsun/misc/FormattedFloatingDecimal;->countBits(J)I

    #@3
    move-result v31

    #@4
    .line 610
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
    .line 611
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
    .line 615
    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    #@1b
    array-length v2, v2

    #@1c
    move/from16 v0, v34

    #@1e
    if-ge v0, v2, :cond_2

    #@20
    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->n5bits:[I

    #@22
    aget v2, v2, v34

    #@24
    add-int v2, v2, v31

    #@26
    const/16 v3, 0x40

    #@28
    if-ge v2, v3, :cond_2

    #@2a
    .line 632
    if-nez v34, :cond_2

    #@2c
    .line 633
    move/from16 v0, p1

    #@2e
    move/from16 v1, p4

    #@30
    if-le v0, v1, :cond_0

    #@32
    .line 634
    sub-int v2, p1, p4

    #@34
    add-int/lit8 v2, v2, -0x1

    #@36
    const-wide/16 v4, 0x1

    #@38
    shl-long v6, v4, v2

    #@3a
    .line 638
    .local v6, "halfULP":J
    :goto_0
    const/16 v2, 0x34

    #@3c
    move/from16 v0, p1

    #@3e
    if-lt v0, v2, :cond_1

    #@40
    .line 639
    add-int/lit8 v2, p1, -0x34

    #@42
    shl-long p2, p2, v2

    #@44
    .line 643
    :goto_1
    const/4 v3, 0x0

    #@45
    move-object/from16 v2, p0

    #@47
    move-wide/from16 v4, p2

    #@49
    invoke-direct/range {v2 .. v7}, Lsun/misc/FormattedFloatingDecimal;->developLongDigits(IJJ)V

    #@4c
    .line 644
    return-void

    #@4d
    .line 636
    .end local v6    # "halfULP":J
    :cond_0
    const-wide/16 v6, 0x0

    #@4f
    .restart local v6    # "halfULP":J
    goto :goto_0

    #@50
    .line 641
    :cond_1
    rsub-int/lit8 v2, p1, 0x34

    #@52
    ushr-long p2, p2, v2

    #@54
    goto :goto_1

    #@55
    .line 696
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
    .line 695
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@62
    move-result-wide v22

    #@63
    .line 698
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
    .line 697
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    #@81
    move-result-wide v2

    #@82
    double-to-int v0, v2

    #@83
    move/from16 v24, v0

    #@85
    .line 706
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
    .line 707
    .local v9, "B5":I
    add-int v2, v9, v34

    #@8f
    add-int v8, v2, p1

    #@91
    .line 709
    .local v8, "B2":I
    const/4 v2, 0x0

    #@92
    move/from16 v0, v24

    #@94
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    #@97
    move-result v16

    #@98
    .line 710
    .local v16, "S5":I
    add-int v15, v16, v34

    #@9a
    .line 712
    .local v15, "S2":I
    move v13, v9

    #@9b
    .line 713
    .local v13, "M5":I
    sub-int v12, v8, p4

    #@9d
    .line 723
    .local v12, "M2":I
    rsub-int/lit8 v2, v31, 0x35

    #@9f
    ushr-long p2, p2, v2

    #@a1
    .line 724
    add-int/lit8 v2, v31, -0x1

    #@a3
    sub-int/2addr v8, v2

    #@a4
    .line 725
    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    #@a7
    move-result v19

    #@a8
    .line 726
    .local v19, "common2factor":I
    sub-int v8, v8, v19

    #@aa
    .line 727
    sub-int v15, v15, v19

    #@ac
    .line 728
    sub-int v12, v12, v19

    #@ae
    .line 736
    const/4 v2, 0x1

    #@af
    move/from16 v0, v31

    #@b1
    if-ne v0, v2, :cond_3

    #@b3
    .line 737
    add-int/lit8 v12, v12, -0x1

    #@b5
    .line 739
    :cond_3
    if-gez v12, :cond_4

    #@b7
    .line 743
    sub-int/2addr v8, v12

    #@b8
    .line 744
    sub-int/2addr v15, v12

    #@b9
    .line 745
    const/4 v12, 0x0

    #@ba
    .line 755
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
    iput-object v0, v1, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@c6
    .line 756
    .local v25, "digits":[C
    const/16 v35, 0x0

    #@c8
    .line 776
    .local v35, "ndigit":I
    add-int v3, v31, v8

    #@ca
    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->n5bits:[I

    #@cc
    array-length v2, v2

    #@cd
    if-ge v9, v2, :cond_5

    #@cf
    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->n5bits:[I

    #@d1
    aget v2, v2, v9

    #@d3
    :goto_2
    add-int v10, v3, v2

    #@d5
    .line 777
    .local v10, "Bbits":I
    add-int/lit8 v3, v15, 0x1

    #@d7
    add-int/lit8 v2, v16, 0x1

    #@d9
    sget-object v4, Lsun/misc/FormattedFloatingDecimal;->n5bits:[I

    #@db
    array-length v4, v4

    #@dc
    if-ge v2, v4, :cond_6

    #@de
    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->n5bits:[I

    #@e0
    add-int/lit8 v4, v16, 0x1

    #@e2
    aget v2, v2, v4

    #@e4
    :goto_3
    add-int v42, v3, v2

    #@e6
    .line 778
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
    .line 779
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
    .line 781
    move-wide/from16 v0, p2

    #@fc
    long-to-int v2, v0

    #@fd
    sget-object v3, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    #@ff
    aget v3, v3, v9

    #@101
    mul-int/2addr v2, v3

    #@102
    shl-int v18, v2, v8

    #@104
    .line 782
    .local v18, "b":I
    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    #@106
    aget v2, v2, v16

    #@108
    shl-int v38, v2, v15

    #@10a
    .line 783
    .local v38, "s":I
    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    #@10c
    aget v2, v2, v9

    #@10e
    shl-int v30, v2, v12

    #@110
    .line 784
    .local v30, "m":I
    mul-int/lit8 v44, v38, 0xa

    #@112
    .line 790
    .local v44, "tens":I
    const/16 v35, 0x0

    #@114
    .line 791
    div-int v37, v18, v38

    #@116
    .line 792
    .local v37, "q":I
    rem-int v2, v18, v38

    #@118
    mul-int/lit8 v18, v2, 0xa

    #@11a
    .line 793
    mul-int/lit8 v30, v30, 0xa

    #@11c
    .line 794
    move/from16 v0, v18

    #@11e
    move/from16 v1, v30

    #@120
    if-ge v0, v1, :cond_7

    #@122
    const/16 v27, 0x1

    #@124
    .line 795
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
    .line 796
    .local v26, "high":Z
    :goto_5
    sget-boolean v2, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

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
    .line 776
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
    .line 777
    .restart local v10    # "Bbits":I
    :cond_6
    add-int/lit8 v2, v16, 0x1

    #@148
    mul-int/lit8 v2, v2, 0x3

    #@14a
    goto :goto_3

    #@14b
    .line 794
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
    .line 795
    :cond_8
    const/16 v26, 0x0

    #@150
    .restart local v26    # "high":Z
    goto :goto_5

    #@151
    .line 796
    :cond_9
    const/4 v2, 0x0

    #@152
    goto :goto_6

    #@153
    .line 797
    :cond_a
    if-nez v37, :cond_b

    #@155
    if-eqz v26, :cond_f

    #@157
    .line 790
    :cond_b
    const/4 v2, 0x0

    #@158
    .line 801
    const/16 v35, 0x1

    #@15a
    add-int/lit8 v3, v37, 0x30

    #@15c
    int-to-char v3, v3

    #@15d
    aput-char v3, v25, v2

    #@15f
    .line 809
    :goto_7
    move-object/from16 v0, p0

    #@161
    iget-object v2, v0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    #@163
    sget-object v3, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    #@165
    if-ne v2, v3, :cond_c

    #@167
    const/4 v2, -0x3

    #@168
    move/from16 v0, v24

    #@16a
    if-lt v2, v0, :cond_10

    #@16c
    .line 810
    :cond_c
    const/16 v27, 0x0

    #@16e
    const/16 v26, 0x0

    #@170
    move/from16 v36, v35

    #@172
    .line 812
    .end local v35    # "ndigit":I
    .local v36, "ndigit":I
    :goto_8
    if-nez v27, :cond_d

    #@174
    if-eqz v26, :cond_11

    #@176
    .line 831
    :cond_d
    shl-int/lit8 v2, v18, 0x1

    #@178
    sub-int v2, v2, v44

    #@17a
    int-to-long v0, v2

    #@17b
    move-wide/from16 v28, v0

    #@17d
    .local v28, "lowDigitDifference":J
    move/from16 v35, v36

    #@17f
    .line 943
    .end local v18    # "b":I
    .end local v30    # "m":I
    .end local v36    # "ndigit":I
    .end local v38    # "s":I
    .end local v44    # "tens":I
    .restart local v35    # "ndigit":I
    :goto_9
    add-int/lit8 v2, v24, 0x1

    #@181
    move-object/from16 v0, p0

    #@183
    iput v2, v0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@185
    .line 944
    move-object/from16 v0, v25

    #@187
    move-object/from16 v1, p0

    #@189
    iput-object v0, v1, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@18b
    .line 945
    move/from16 v0, v35

    #@18d
    move-object/from16 v1, p0

    #@18f
    iput v0, v1, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@191
    .line 949
    if-eqz v26, :cond_e

    #@193
    .line 950
    if-eqz v27, :cond_38

    #@195
    .line 951
    const-wide/16 v2, 0x0

    #@197
    cmp-long v2, v28, v2

    #@199
    if-nez v2, :cond_37

    #@19b
    .line 954
    move-object/from16 v0, p0

    #@19d
    iget v2, v0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@19f
    add-int/lit8 v2, v2, -0x1

    #@1a1
    aget-char v2, v25, v2

    #@1a3
    and-int/lit8 v2, v2, 0x1

    #@1a5
    if-eqz v2, :cond_e

    #@1a7
    invoke-direct/range {p0 .. p0}, Lsun/misc/FormattedFloatingDecimal;->roundup()V

    #@1aa
    .line 600
    :cond_e
    :goto_a
    return-void

    #@1ab
    .line 799
    .end local v28    # "lowDigitDifference":J
    .restart local v18    # "b":I
    .restart local v30    # "m":I
    .restart local v38    # "s":I
    .restart local v44    # "tens":I
    :cond_f
    add-int/lit8 v24, v24, -0x1

    #@1ad
    .line 797
    goto :goto_7

    #@1ae
    .line 809
    :cond_10
    const/16 v2, 0x8

    #@1b0
    move/from16 v0, v24

    #@1b2
    if-ge v0, v2, :cond_c

    #@1b4
    move/from16 v36, v35

    #@1b6
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    goto :goto_8

    #@1b7
    .line 813
    :cond_11
    div-int v37, v18, v38

    #@1b9
    .line 814
    rem-int v2, v18, v38

    #@1bb
    mul-int/lit8 v18, v2, 0xa

    #@1bd
    .line 815
    mul-int/lit8 v30, v30, 0xa

    #@1bf
    .line 816
    sget-boolean v2, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    #@1c1
    if-nez v2, :cond_13

    #@1c3
    const/16 v2, 0xa

    #@1c5
    move/from16 v0, v37

    #@1c7
    if-ge v0, v2, :cond_12

    #@1c9
    const/4 v2, 0x1

    #@1ca
    :goto_b
    if-nez v2, :cond_13

    #@1cc
    new-instance v2, Ljava/lang/AssertionError;

    #@1ce
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d1
    move-result-object v3

    #@1d2
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1d5
    throw v2

    #@1d6
    :cond_12
    const/4 v2, 0x0

    #@1d7
    goto :goto_b

    #@1d8
    .line 817
    :cond_13
    move/from16 v0, v30

    #@1da
    int-to-long v2, v0

    #@1db
    const-wide/16 v4, 0x0

    #@1dd
    cmp-long v2, v2, v4

    #@1df
    if-lez v2, :cond_16

    #@1e1
    .line 818
    move/from16 v0, v18

    #@1e3
    move/from16 v1, v30

    #@1e5
    if-ge v0, v1, :cond_14

    #@1e7
    const/16 v27, 0x1

    #@1e9
    .line 819
    :goto_c
    add-int v2, v18, v30

    #@1eb
    move/from16 v0, v44

    #@1ed
    if-le v2, v0, :cond_15

    #@1ef
    const/16 v26, 0x1

    #@1f1
    .line 829
    :goto_d
    add-int/lit8 v35, v36, 0x1

    #@1f3
    .end local v36    # "ndigit":I
    .restart local v35    # "ndigit":I
    add-int/lit8 v2, v37, 0x30

    #@1f5
    int-to-char v2, v2

    #@1f6
    aput-char v2, v25, v36

    #@1f8
    move/from16 v36, v35

    #@1fa
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    goto/16 :goto_8

    #@1fc
    .line 818
    :cond_14
    const/16 v27, 0x0

    #@1fe
    goto :goto_c

    #@1ff
    .line 819
    :cond_15
    const/16 v26, 0x0

    #@201
    goto :goto_d

    #@202
    .line 826
    :cond_16
    const/16 v27, 0x1

    #@204
    .line 827
    const/16 v26, 0x1

    #@206
    goto :goto_d

    #@207
    .line 834
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
    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    #@209
    aget-wide v2, v2, v9

    #@20b
    mul-long v2, v2, p2

    #@20d
    shl-long v20, v2, v8

    #@20f
    .line 835
    .local v20, "b":J
    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    #@211
    aget-wide v2, v2, v16

    #@213
    shl-long v40, v2, v15

    #@215
    .line 836
    .local v40, "s":J
    sget-object v2, Lsun/misc/FormattedFloatingDecimal;->long5pow:[J

    #@217
    aget-wide v2, v2, v9

    #@219
    shl-long v32, v2, v12

    #@21b
    .line 837
    .local v32, "m":J
    const-wide/16 v2, 0xa

    #@21d
    mul-long v46, v40, v2

    #@21f
    .line 843
    .local v46, "tens":J
    const/16 v35, 0x0

    #@221
    .line 844
    div-long v2, v20, v40

    #@223
    long-to-int v0, v2

    #@224
    move/from16 v37, v0

    #@226
    .line 845
    .restart local v37    # "q":I
    rem-long v2, v20, v40

    #@228
    const-wide/16 v4, 0xa

    #@22a
    mul-long v20, v4, v2

    #@22c
    .line 846
    const-wide/16 v2, 0xa

    #@22e
    mul-long v32, v32, v2

    #@230
    .line 847
    cmp-long v2, v20, v32

    #@232
    if-gez v2, :cond_18

    #@234
    const/16 v27, 0x1

    #@236
    .line 848
    .restart local v27    # "low":Z
    :goto_e
    add-long v2, v20, v32

    #@238
    cmp-long v2, v2, v46

    #@23a
    if-lez v2, :cond_19

    #@23c
    const/16 v26, 0x1

    #@23e
    .line 849
    .restart local v26    # "high":Z
    :goto_f
    sget-boolean v2, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    #@240
    if-nez v2, :cond_1b

    #@242
    const/16 v2, 0xa

    #@244
    move/from16 v0, v37

    #@246
    if-ge v0, v2, :cond_1a

    #@248
    const/4 v2, 0x1

    #@249
    :goto_10
    if-nez v2, :cond_1b

    #@24b
    new-instance v2, Ljava/lang/AssertionError;

    #@24d
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@250
    move-result-object v3

    #@251
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@254
    throw v2

    #@255
    .line 847
    .end local v26    # "high":Z
    .end local v27    # "low":Z
    :cond_18
    const/16 v27, 0x0

    #@257
    .restart local v27    # "low":Z
    goto :goto_e

    #@258
    .line 848
    :cond_19
    const/16 v26, 0x0

    #@25a
    .restart local v26    # "high":Z
    goto :goto_f

    #@25b
    .line 849
    :cond_1a
    const/4 v2, 0x0

    #@25c
    goto :goto_10

    #@25d
    .line 850
    :cond_1b
    if-nez v37, :cond_1c

    #@25f
    if-eqz v26, :cond_1f

    #@261
    .line 843
    :cond_1c
    const/4 v2, 0x0

    #@262
    .line 854
    const/16 v35, 0x1

    #@264
    add-int/lit8 v3, v37, 0x30

    #@266
    int-to-char v3, v3

    #@267
    aput-char v3, v25, v2

    #@269
    .line 862
    :goto_11
    move-object/from16 v0, p0

    #@26b
    iget-object v2, v0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    #@26d
    sget-object v3, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    #@26f
    if-ne v2, v3, :cond_1d

    #@271
    const/4 v2, -0x3

    #@272
    move/from16 v0, v24

    #@274
    if-lt v2, v0, :cond_20

    #@276
    .line 863
    :cond_1d
    const/16 v27, 0x0

    #@278
    const/16 v26, 0x0

    #@27a
    move/from16 v36, v35

    #@27c
    .line 865
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    :goto_12
    if-nez v27, :cond_1e

    #@27e
    if-eqz v26, :cond_21

    #@280
    .line 884
    :cond_1e
    const/4 v2, 0x1

    #@281
    shl-long v2, v20, v2

    #@283
    sub-long v28, v2, v46

    #@285
    .restart local v28    # "lowDigitDifference":J
    move/from16 v35, v36

    #@287
    .end local v36    # "ndigit":I
    .restart local v35    # "ndigit":I
    goto/16 :goto_9

    #@289
    .line 852
    .end local v28    # "lowDigitDifference":J
    :cond_1f
    add-int/lit8 v24, v24, -0x1

    #@28b
    .line 850
    goto :goto_11

    #@28c
    .line 862
    :cond_20
    const/16 v2, 0x8

    #@28e
    move/from16 v0, v24

    #@290
    if-ge v0, v2, :cond_1d

    #@292
    move/from16 v36, v35

    #@294
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    goto :goto_12

    #@295
    .line 866
    :cond_21
    div-long v2, v20, v40

    #@297
    long-to-int v0, v2

    #@298
    move/from16 v37, v0

    #@29a
    .line 867
    rem-long v2, v20, v40

    #@29c
    const-wide/16 v4, 0xa

    #@29e
    mul-long v20, v4, v2

    #@2a0
    .line 868
    const-wide/16 v2, 0xa

    #@2a2
    mul-long v32, v32, v2

    #@2a4
    .line 869
    sget-boolean v2, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    #@2a6
    if-nez v2, :cond_23

    #@2a8
    const/16 v2, 0xa

    #@2aa
    move/from16 v0, v37

    #@2ac
    if-ge v0, v2, :cond_22

    #@2ae
    const/4 v2, 0x1

    #@2af
    :goto_13
    if-nez v2, :cond_23

    #@2b1
    new-instance v2, Ljava/lang/AssertionError;

    #@2b3
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b6
    move-result-object v3

    #@2b7
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2ba
    throw v2

    #@2bb
    :cond_22
    const/4 v2, 0x0

    #@2bc
    goto :goto_13

    #@2bd
    .line 870
    :cond_23
    const-wide/16 v2, 0x0

    #@2bf
    cmp-long v2, v32, v2

    #@2c1
    if-lez v2, :cond_26

    #@2c3
    .line 871
    cmp-long v2, v20, v32

    #@2c5
    if-gez v2, :cond_24

    #@2c7
    const/16 v27, 0x1

    #@2c9
    .line 872
    :goto_14
    add-long v2, v20, v32

    #@2cb
    cmp-long v2, v2, v46

    #@2cd
    if-lez v2, :cond_25

    #@2cf
    const/16 v26, 0x1

    #@2d1
    .line 882
    :goto_15
    add-int/lit8 v35, v36, 0x1

    #@2d3
    .end local v36    # "ndigit":I
    .restart local v35    # "ndigit":I
    add-int/lit8 v2, v37, 0x30

    #@2d5
    int-to-char v2, v2

    #@2d6
    aput-char v2, v25, v36

    #@2d8
    move/from16 v36, v35

    #@2da
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    goto :goto_12

    #@2db
    .line 871
    :cond_24
    const/16 v27, 0x0

    #@2dd
    goto :goto_14

    #@2de
    .line 872
    :cond_25
    const/16 v26, 0x0

    #@2e0
    goto :goto_15

    #@2e1
    .line 879
    :cond_26
    const/16 v27, 0x1

    #@2e3
    .line 880
    const/16 v26, 0x1

    #@2e5
    goto :goto_15

    #@2e6
    .line 894
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

    #@2e8
    move-wide/from16 v0, p2

    #@2ea
    invoke-direct {v2, v0, v1}, Lsun/misc/FDBigInt;-><init>(J)V

    #@2ed
    invoke-static {v2, v9, v8}, Lsun/misc/FormattedFloatingDecimal;->multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;

    #@2f0
    move-result-object v11

    #@2f1
    .line 895
    .local v11, "Bval":Lsun/misc/FDBigInt;
    move/from16 v0, v16

    #@2f3
    invoke-static {v0, v15}, Lsun/misc/FormattedFloatingDecimal;->constructPow52(II)Lsun/misc/FDBigInt;

    #@2f6
    move-result-object v17

    #@2f7
    .line 896
    .local v17, "Sval":Lsun/misc/FDBigInt;
    invoke-static {v9, v12}, Lsun/misc/FormattedFloatingDecimal;->constructPow52(II)Lsun/misc/FDBigInt;

    #@2fa
    move-result-object v14

    #@2fb
    .line 900
    .local v14, "Mval":Lsun/misc/FDBigInt;
    invoke-virtual/range {v17 .. v17}, Lsun/misc/FDBigInt;->normalizeMe()I

    #@2fe
    move-result v39

    #@2ff
    .local v39, "shiftBias":I
    move/from16 v0, v39

    #@301
    invoke-virtual {v11, v0}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    #@304
    .line 901
    move/from16 v0, v39

    #@306
    invoke-virtual {v14, v0}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    #@309
    .line 902
    const/16 v2, 0xa

    #@30b
    move-object/from16 v0, v17

    #@30d
    invoke-virtual {v0, v2}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    #@310
    move-result-object v43

    #@311
    .line 908
    .local v43, "tenSval":Lsun/misc/FDBigInt;
    const/16 v35, 0x0

    #@313
    .line 909
    move-object/from16 v0, v17

    #@315
    invoke-virtual {v11, v0}, Lsun/misc/FDBigInt;->quoRemIteration(Lsun/misc/FDBigInt;)I

    #@318
    move-result v37

    #@319
    .line 910
    .restart local v37    # "q":I
    const/16 v2, 0xa

    #@31b
    invoke-virtual {v14, v2}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    #@31e
    move-result-object v14

    #@31f
    .line 911
    invoke-virtual {v11, v14}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    #@322
    move-result v2

    #@323
    if-gez v2, :cond_28

    #@325
    const/16 v27, 0x1

    #@327
    .line 912
    .restart local v27    # "low":Z
    :goto_16
    invoke-virtual {v11, v14}, Lsun/misc/FDBigInt;->add(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    #@32a
    move-result-object v2

    #@32b
    move-object/from16 v0, v43

    #@32d
    invoke-virtual {v2, v0}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    #@330
    move-result v2

    #@331
    if-lez v2, :cond_29

    #@333
    const/16 v26, 0x1

    #@335
    .line 913
    .restart local v26    # "high":Z
    :goto_17
    sget-boolean v2, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    #@337
    if-nez v2, :cond_2b

    #@339
    const/16 v2, 0xa

    #@33b
    move/from16 v0, v37

    #@33d
    if-ge v0, v2, :cond_2a

    #@33f
    const/4 v2, 0x1

    #@340
    :goto_18
    if-nez v2, :cond_2b

    #@342
    new-instance v2, Ljava/lang/AssertionError;

    #@344
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@347
    move-result-object v3

    #@348
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@34b
    throw v2

    #@34c
    .line 911
    .end local v26    # "high":Z
    .end local v27    # "low":Z
    :cond_28
    const/16 v27, 0x0

    #@34e
    .restart local v27    # "low":Z
    goto :goto_16

    #@34f
    .line 912
    :cond_29
    const/16 v26, 0x0

    #@351
    .restart local v26    # "high":Z
    goto :goto_17

    #@352
    .line 913
    :cond_2a
    const/4 v2, 0x0

    #@353
    goto :goto_18

    #@354
    .line 914
    :cond_2b
    if-nez v37, :cond_2c

    #@356
    if-eqz v26, :cond_2f

    #@358
    .line 908
    :cond_2c
    const/4 v2, 0x0

    #@359
    .line 918
    const/16 v35, 0x1

    #@35b
    add-int/lit8 v3, v37, 0x30

    #@35d
    int-to-char v3, v3

    #@35e
    aput-char v3, v25, v2

    #@360
    .line 926
    :goto_19
    move-object/from16 v0, p0

    #@362
    iget-object v2, v0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    #@364
    sget-object v3, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    #@366
    if-ne v2, v3, :cond_2d

    #@368
    const/4 v2, -0x3

    #@369
    move/from16 v0, v24

    #@36b
    if-lt v2, v0, :cond_30

    #@36d
    .line 927
    :cond_2d
    const/16 v27, 0x0

    #@36f
    const/16 v26, 0x0

    #@371
    move/from16 v36, v35

    #@373
    .line 929
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    :goto_1a
    if-nez v27, :cond_2e

    #@375
    if-eqz v26, :cond_31

    #@377
    .line 937
    :cond_2e
    if-eqz v26, :cond_36

    #@379
    if-eqz v27, :cond_36

    #@37b
    .line 938
    const/4 v2, 0x1

    #@37c
    invoke-virtual {v11, v2}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    #@37f
    .line 939
    move-object/from16 v0, v43

    #@381
    invoke-virtual {v11, v0}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    #@384
    move-result v2

    #@385
    int-to-long v0, v2

    #@386
    move-wide/from16 v28, v0

    #@388
    .restart local v28    # "lowDigitDifference":J
    move/from16 v35, v36

    #@38a
    .end local v36    # "ndigit":I
    .restart local v35    # "ndigit":I
    goto/16 :goto_9

    #@38c
    .line 916
    .end local v28    # "lowDigitDifference":J
    :cond_2f
    add-int/lit8 v24, v24, -0x1

    #@38e
    .line 914
    goto :goto_19

    #@38f
    .line 926
    :cond_30
    const/16 v2, 0x8

    #@391
    move/from16 v0, v24

    #@393
    if-ge v0, v2, :cond_2d

    #@395
    move/from16 v36, v35

    #@397
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    goto :goto_1a

    #@398
    .line 930
    :cond_31
    move-object/from16 v0, v17

    #@39a
    invoke-virtual {v11, v0}, Lsun/misc/FDBigInt;->quoRemIteration(Lsun/misc/FDBigInt;)I

    #@39d
    move-result v37

    #@39e
    .line 931
    const/16 v2, 0xa

    #@3a0
    invoke-virtual {v14, v2}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    #@3a3
    move-result-object v14

    #@3a4
    .line 932
    sget-boolean v2, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    #@3a6
    if-nez v2, :cond_33

    #@3a8
    const/16 v2, 0xa

    #@3aa
    move/from16 v0, v37

    #@3ac
    if-ge v0, v2, :cond_32

    #@3ae
    const/4 v2, 0x1

    #@3af
    :goto_1b
    if-nez v2, :cond_33

    #@3b1
    new-instance v2, Ljava/lang/AssertionError;

    #@3b3
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b6
    move-result-object v3

    #@3b7
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@3ba
    throw v2

    #@3bb
    :cond_32
    const/4 v2, 0x0

    #@3bc
    goto :goto_1b

    #@3bd
    .line 933
    :cond_33
    invoke-virtual {v11, v14}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    #@3c0
    move-result v2

    #@3c1
    if-gez v2, :cond_34

    #@3c3
    const/16 v27, 0x1

    #@3c5
    .line 934
    :goto_1c
    invoke-virtual {v11, v14}, Lsun/misc/FDBigInt;->add(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    #@3c8
    move-result-object v2

    #@3c9
    move-object/from16 v0, v43

    #@3cb
    invoke-virtual {v2, v0}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    #@3ce
    move-result v2

    #@3cf
    if-lez v2, :cond_35

    #@3d1
    const/16 v26, 0x1

    #@3d3
    .line 935
    :goto_1d
    add-int/lit8 v35, v36, 0x1

    #@3d5
    .end local v36    # "ndigit":I
    .restart local v35    # "ndigit":I
    add-int/lit8 v2, v37, 0x30

    #@3d7
    int-to-char v2, v2

    #@3d8
    aput-char v2, v25, v36

    #@3da
    move/from16 v36, v35

    #@3dc
    .end local v35    # "ndigit":I
    .restart local v36    # "ndigit":I
    goto :goto_1a

    #@3dd
    .line 933
    :cond_34
    const/16 v27, 0x0

    #@3df
    goto :goto_1c

    #@3e0
    .line 934
    :cond_35
    const/16 v26, 0x0

    #@3e2
    goto :goto_1d

    #@3e3
    .line 941
    :cond_36
    const-wide/16 v28, 0x0

    #@3e5
    .restart local v28    # "lowDigitDifference":J
    move/from16 v35, v36

    #@3e7
    .end local v36    # "ndigit":I
    .restart local v35    # "ndigit":I
    goto/16 :goto_9

    #@3e9
    .line 955
    .end local v11    # "Bval":Lsun/misc/FDBigInt;
    .end local v14    # "Mval":Lsun/misc/FDBigInt;
    .end local v17    # "Sval":Lsun/misc/FDBigInt;
    .end local v39    # "shiftBias":I
    .end local v43    # "tenSval":Lsun/misc/FDBigInt;
    :cond_37
    const-wide/16 v2, 0x0

    #@3eb
    cmp-long v2, v28, v2

    #@3ed
    if-lez v2, :cond_e

    #@3ef
    .line 956
    invoke-direct/range {p0 .. p0}, Lsun/misc/FormattedFloatingDecimal;->roundup()V

    #@3f2
    goto/16 :goto_a

    #@3f4
    .line 959
    :cond_38
    invoke-direct/range {p0 .. p0}, Lsun/misc/FormattedFloatingDecimal;->roundup()V

    #@3f7
    goto/16 :goto_a
.end method

.method private static multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;
    .locals 1
    .param p0, "v"    # Lsun/misc/FDBigInt;
    .param p1, "p5"    # I
    .param p2, "p2"    # I

    #@0
    .prologue
    .line 180
    if-eqz p1, :cond_0

    #@2
    .line 181
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    #@4
    array-length v0, v0

    #@5
    if-ge p1, v0, :cond_2

    #@7
    .line 182
    sget-object v0, Lsun/misc/FormattedFloatingDecimal;->small5pow:[I

    #@9
    aget v0, v0, p1

    #@b
    invoke-virtual {p0, v0}, Lsun/misc/FDBigInt;->mult(I)Lsun/misc/FDBigInt;

    #@e
    move-result-object p0

    #@f
    .line 187
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    #@11
    .line 188
    invoke-virtual {p0, p2}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    #@14
    .line 190
    :cond_1
    return-object p0

    #@15
    .line 184
    :cond_2
    invoke-static {p1}, Lsun/misc/FormattedFloatingDecimal;->big5pow(I)Lsun/misc/FDBigInt;

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
    .line 393
    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@5
    iget v3, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@7
    add-int/lit8 v0, v3, -0x1

    #@9
    .local v0, "i":I
    aget-char v1, v2, v0

    #@b
    .line 394
    .local v1, "q":I
    if-ne v1, v4, :cond_1

    #@d
    .line 395
    :goto_0
    if-ne v1, v4, :cond_0

    #@f
    if-lez v0, :cond_0

    #@11
    .line 396
    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@13
    const/16 v3, 0x30

    #@15
    aput-char v3, v2, v0

    #@17
    .line 397
    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@19
    add-int/lit8 v0, v0, -0x1

    #@1b
    aget-char v1, v2, v0

    #@1d
    goto :goto_0

    #@1e
    .line 399
    :cond_0
    if-ne v1, v4, :cond_1

    #@20
    .line 401
    iget v2, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@22
    add-int/lit8 v2, v2, 0x1

    #@24
    iput v2, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@26
    .line 402
    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@28
    const/16 v3, 0x31

    #@2a
    aput-char v3, v2, v5

    #@2c
    .line 403
    return-void

    #@2d
    .line 407
    :cond_1
    iget-object v2, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@2f
    add-int/lit8 v3, v1, 0x1

    #@31
    int-to-char v3, v3

    #@32
    aput-char v3, v2, v0

    #@34
    .line 391
    return-void
.end method

.method private static ulp(DZ)D
    .locals 12
    .param p0, "dval"    # D
    .param p2, "subtracting"    # Z

    #@0
    .prologue
    const/16 v10, 0x34

    #@2
    .line 251
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@5
    move-result-wide v6

    #@6
    const-wide v8, 0x7fffffffffffffffL

    #@b
    and-long v2, v6, v8

    #@d
    .line 252
    .local v2, "lbits":J
    ushr-long v6, v2, v10

    #@f
    long-to-int v0, v6

    #@10
    .line 254
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
    .line 257
    add-int/lit8 v0, v0, -0x1

    #@22
    .line 259
    :cond_0
    if-le v0, v10, :cond_2

    #@24
    .line 260
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
    .line 266
    .local v4, "ulpval":D
    :goto_0
    if-eqz p2, :cond_1

    #@2e
    neg-double v4, v4

    #@2f
    .line 268
    :cond_1
    return-wide v4

    #@30
    .line 261
    .end local v4    # "ulpval":D
    :cond_2
    if-nez v0, :cond_3

    #@32
    .line 262
    const-wide/16 v4, 0x1

    #@34
    .restart local v4    # "ulpval":D
    goto :goto_0

    #@35
    .line 264
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
.method public strictfp doubleValue()D
    .locals 42

    #@0
    .prologue
    .line 1160
    move-object/from16 v0, p0

    #@2
    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@4
    const/16 v10, 0x10

    #@6
    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    #@9
    move-result v9

    #@a
    .line 1166
    .local v9, "kDigits":I
    move-object/from16 v0, p0

    #@c
    iget-object v8, v0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@e
    sget-object v10, Lsun/misc/FormattedFloatingDecimal;->infinity:[C

    #@10
    if-eq v8, v10, :cond_0

    #@12
    move-object/from16 v0, p0

    #@14
    iget-object v8, v0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@16
    sget-object v10, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    #@18
    if-ne v8, v10, :cond_3

    #@1a
    .line 1167
    :cond_0
    move-object/from16 v0, p0

    #@1c
    iget-object v8, v0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@1e
    sget-object v10, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    #@20
    if-ne v8, v10, :cond_1

    #@22
    .line 1168
    const-wide/high16 v38, 0x7ff8000000000000L    # NaN

    #@24
    return-wide v38

    #@25
    .line 1170
    :cond_1
    move-object/from16 v0, p0

    #@27
    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

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
    .line 1173
    :cond_3
    move-object/from16 v0, p0

    #@33
    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    #@35
    if-eqz v8, :cond_4

    #@37
    .line 1174
    const/4 v8, 0x0

    #@38
    move-object/from16 v0, p0

    #@3a
    iput v8, v0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    #@3c
    .line 1180
    :cond_4
    move-object/from16 v0, p0

    #@3e
    iget-object v8, v0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@40
    const/4 v10, 0x0

    #@41
    aget-char v8, v8, v10

    #@43
    add-int/lit8 v27, v8, -0x30

    #@45
    .line 1181
    .local v27, "iValue":I
    const/16 v8, 0x9

    #@47
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    #@4a
    move-result v26

    #@4b
    .line 1182
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
    .line 1183
    mul-int/lit8 v8, v27, 0xa

    #@55
    move-object/from16 v0, p0

    #@57
    iget-object v10, v0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@59
    aget-char v10, v10, v25

    #@5b
    add-int/2addr v8, v10

    #@5c
    add-int/lit8 v27, v8, -0x30

    #@5e
    .line 1182
    add-int/lit8 v25, v25, 0x1

    #@60
    goto :goto_1

    #@61
    .line 1185
    :cond_5
    move/from16 v0, v27

    #@63
    int-to-long v6, v0

    #@64
    .line 1186
    .local v6, "lValue":J
    move/from16 v25, v26

    #@66
    :goto_2
    move/from16 v0, v25

    #@68
    if-ge v0, v9, :cond_6

    #@6a
    .line 1187
    const-wide/16 v38, 0xa

    #@6c
    mul-long v38, v38, v6

    #@6e
    move-object/from16 v0, p0

    #@70
    iget-object v8, v0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

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
    .line 1186
    add-int/lit8 v25, v25, 0x1

    #@7d
    goto :goto_2

    #@7e
    .line 1189
    :cond_6
    long-to-double v0, v6

    #@7f
    move-wide/from16 v20, v0

    #@81
    .line 1190
    .local v20, "dValue":D
    move-object/from16 v0, p0

    #@83
    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@85
    sub-int v22, v8, v9

    #@87
    .line 1197
    .local v22, "exp":I
    move-object/from16 v0, p0

    #@89
    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@8b
    const/16 v10, 0xf

    #@8d
    if-gt v8, v10, :cond_18

    #@8f
    .line 1208
    if-eqz v22, :cond_7

    #@91
    const-wide/16 v38, 0x0

    #@93
    cmpl-double v8, v20, v38

    #@95
    if-nez v8, :cond_9

    #@97
    .line 1209
    :cond_7
    move-object/from16 v0, p0

    #@99
    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

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
    .line 1210
    .restart local v20    # "dValue":D
    :cond_9
    if-ltz v22, :cond_13

    #@a5
    .line 1211
    sget v8, Lsun/misc/FormattedFloatingDecimal;->maxSmallTen:I

    #@a7
    move/from16 v0, v22

    #@a9
    if-gt v0, v8, :cond_e

    #@ab
    .line 1216
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    #@ad
    aget-wide v38, v8, v22

    #@af
    mul-double v30, v20, v38

    #@b1
    .line 1217
    .local v30, "rValue":D
    move-object/from16 v0, p0

    #@b3
    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    #@b5
    if-eqz v8, :cond_a

    #@b7
    .line 1218
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    #@b9
    aget-wide v38, v8, v22

    #@bb
    div-double v36, v30, v38

    #@bd
    .line 1219
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
    iput v8, v0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    #@c6
    .line 1223
    .end local v36    # "tValue":D
    :cond_a
    move-object/from16 v0, p0

    #@c8
    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

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
    .line 1220
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
    .line 1221
    :cond_d
    const/4 v8, -0x1

    #@d9
    goto :goto_3

    #@da
    .line 1225
    .end local v30    # "rValue":D
    .end local v36    # "tValue":D
    :cond_e
    rsub-int/lit8 v32, v9, 0xf

    #@dc
    .line 1226
    .local v32, "slop":I
    sget v8, Lsun/misc/FormattedFloatingDecimal;->maxSmallTen:I

    #@de
    add-int v8, v8, v32

    #@e0
    move/from16 v0, v22

    #@e2
    if-gt v0, v8, :cond_18

    #@e4
    .line 1233
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    #@e6
    aget-wide v38, v8, v32

    #@e8
    mul-double v20, v20, v38

    #@ea
    .line 1234
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    #@ec
    sub-int v10, v22, v32

    #@ee
    aget-wide v38, v8, v10

    #@f0
    mul-double v30, v20, v38

    #@f2
    .line 1236
    .restart local v30    # "rValue":D
    move-object/from16 v0, p0

    #@f4
    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    #@f6
    if-eqz v8, :cond_f

    #@f8
    .line 1237
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    #@fa
    sub-int v10, v22, v32

    #@fc
    aget-wide v38, v8, v10

    #@fe
    div-double v36, v30, v38

    #@100
    .line 1238
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
    iput v8, v0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    #@109
    .line 1242
    .end local v36    # "tValue":D
    :cond_f
    move-object/from16 v0, p0

    #@10b
    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

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
    .line 1239
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
    .line 1240
    :cond_12
    const/4 v8, -0x1

    #@11c
    goto :goto_4

    #@11d
    .line 1248
    .end local v30    # "rValue":D
    .end local v32    # "slop":I
    .end local v36    # "tValue":D
    :cond_13
    sget v8, Lsun/misc/FormattedFloatingDecimal;->maxSmallTen:I

    #@11f
    neg-int v8, v8

    #@120
    move/from16 v0, v22

    #@122
    if-lt v0, v8, :cond_18

    #@124
    .line 1252
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    #@126
    move/from16 v0, v22

    #@128
    neg-int v10, v0

    #@129
    aget-wide v38, v8, v10

    #@12b
    div-double v30, v20, v38

    #@12d
    .line 1253
    .restart local v30    # "rValue":D
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    #@12f
    move/from16 v0, v22

    #@131
    neg-int v10, v0

    #@132
    aget-wide v38, v8, v10

    #@134
    mul-double v36, v30, v38

    #@136
    .line 1254
    .restart local v36    # "tValue":D
    move-object/from16 v0, p0

    #@138
    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    #@13a
    if-eqz v8, :cond_14

    #@13c
    .line 1255
    cmpl-double v8, v36, v20

    #@13e
    if-nez v8, :cond_16

    #@140
    const/4 v8, 0x0

    #@141
    :goto_5
    move-object/from16 v0, p0

    #@143
    iput v8, v0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    #@145
    .line 1259
    :cond_14
    move-object/from16 v0, p0

    #@147
    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

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
    .line 1256
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
    .line 1257
    :cond_17
    const/4 v8, -0x1

    #@158
    goto :goto_5

    #@159
    .line 1275
    .end local v30    # "rValue":D
    .end local v36    # "tValue":D
    :cond_18
    if-lez v22, :cond_26

    #@15b
    .line 1276
    move-object/from16 v0, p0

    #@15d
    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@15f
    const/16 v10, 0x135

    #@161
    if-le v8, v10, :cond_1a

    #@163
    .line 1281
    move-object/from16 v0, p0

    #@165
    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

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
    .line 1283
    :cond_1a
    and-int/lit8 v8, v22, 0xf

    #@171
    if-eqz v8, :cond_1b

    #@173
    .line 1284
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    #@175
    and-int/lit8 v10, v22, 0xf

    #@177
    aget-wide v38, v8, v10

    #@179
    mul-double v20, v20, v38

    #@17b
    .line 1286
    :cond_1b
    shr-int/lit8 v22, v22, 0x4

    #@17d
    if-eqz v22, :cond_21

    #@17f
    .line 1288
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
    .line 1289
    and-int/lit8 v8, v22, 0x1

    #@188
    if-eqz v8, :cond_1c

    #@18a
    .line 1290
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->big10pow:[D

    #@18c
    aget-wide v38, v8, v28

    #@18e
    mul-double v20, v20, v38

    #@190
    .line 1288
    :cond_1c
    add-int/lit8 v28, v28, 0x1

    #@192
    shr-int/lit8 v22, v22, 0x1

    #@194
    goto :goto_7

    #@195
    .line 1298
    :cond_1d
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->big10pow:[D

    #@197
    aget-wide v38, v8, v28

    #@199
    mul-double v34, v20, v38

    #@19b
    .line 1299
    .local v34, "t":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->isInfinite(D)Z

    #@19e
    move-result v8

    #@19f
    if-eqz v8, :cond_20

    #@1a1
    .line 1312
    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    #@1a3
    div-double v34, v20, v38

    #@1a5
    .line 1313
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->big10pow:[D

    #@1a7
    aget-wide v38, v8, v28

    #@1a9
    mul-double v34, v34, v38

    #@1ab
    .line 1314
    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->isInfinite(D)Z

    #@1ae
    move-result v8

    #@1af
    if-eqz v8, :cond_1f

    #@1b1
    .line 1315
    move-object/from16 v0, p0

    #@1b3
    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

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
    .line 1317
    :cond_1f
    const-wide v34, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@1c2
    .line 1319
    :cond_20
    move-wide/from16 v20, v34

    #@1c4
    .line 1377
    .end local v28    # "j":I
    .end local v34    # "t":D
    :cond_21
    :goto_9
    new-instance v5, Lsun/misc/FDBigInt;

    #@1c6
    move-object/from16 v0, p0

    #@1c8
    iget-object v8, v0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@1ca
    move-object/from16 v0, p0

    #@1cc
    iget v10, v0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@1ce
    invoke-direct/range {v5 .. v10}, Lsun/misc/FDBigInt;-><init>(J[CII)V

    #@1d1
    .line 1378
    .local v5, "bigD0":Lsun/misc/FDBigInt;
    move-object/from16 v0, p0

    #@1d3
    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@1d5
    move-object/from16 v0, p0

    #@1d7
    iget v10, v0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@1d9
    sub-int v22, v8, v10

    #@1db
    .line 1385
    :cond_22
    move-object/from16 v0, p0

    #@1dd
    move-wide/from16 v1, v20

    #@1df
    invoke-direct {v0, v1, v2}, Lsun/misc/FormattedFloatingDecimal;->doubleToBigInt(D)Lsun/misc/FDBigInt;

    #@1e2
    move-result-object v15

    #@1e3
    .line 1399
    .local v15, "bigB":Lsun/misc/FDBigInt;
    if-ltz v22, :cond_2f

    #@1e5
    .line 1400
    const/4 v11, 0x0

    #@1e6
    .local v11, "B5":I
    const/4 v4, 0x0

    #@1e7
    .line 1401
    .local v4, "B2":I
    move/from16 v13, v22

    #@1e9
    .local v13, "D5":I
    move/from16 v12, v22

    #@1eb
    .line 1406
    .local v12, "D2":I
    :goto_a
    move-object/from16 v0, p0

    #@1ed
    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->bigIntExp:I

    #@1ef
    if-ltz v8, :cond_30

    #@1f1
    .line 1407
    move-object/from16 v0, p0

    #@1f3
    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->bigIntExp:I

    #@1f5
    add-int/2addr v4, v8

    #@1f6
    .line 1411
    :goto_b
    move v14, v4

    #@1f7
    .line 1415
    .local v14, "Ulp2":I
    move-object/from16 v0, p0

    #@1f9
    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->bigIntExp:I

    #@1fb
    move-object/from16 v0, p0

    #@1fd
    iget v10, v0, Lsun/misc/FormattedFloatingDecimal;->bigIntNBits:I

    #@1ff
    add-int/2addr v8, v10

    #@200
    const/16 v10, -0x3fe

    #@202
    if-gt v8, v10, :cond_31

    #@204
    .line 1419
    move-object/from16 v0, p0

    #@206
    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->bigIntExp:I

    #@208
    add-int/lit16 v8, v8, 0x3ff

    #@20a
    add-int/lit8 v24, v8, 0x34

    #@20c
    .line 1423
    .local v24, "hulpbias":I
    :goto_c
    add-int v4, v4, v24

    #@20e
    .line 1424
    add-int v12, v12, v24

    #@210
    .line 1427
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    #@213
    move-result v8

    #@214
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    #@217
    move-result v18

    #@218
    .line 1428
    .local v18, "common2":I
    sub-int v4, v4, v18

    #@21a
    .line 1429
    sub-int v12, v12, v18

    #@21c
    .line 1430
    sub-int v14, v14, v18

    #@21e
    .line 1432
    invoke-static {v15, v11, v4}, Lsun/misc/FormattedFloatingDecimal;->multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;

    #@221
    move-result-object v15

    #@222
    .line 1433
    new-instance v8, Lsun/misc/FDBigInt;

    #@224
    invoke-direct {v8, v5}, Lsun/misc/FDBigInt;-><init>(Lsun/misc/FDBigInt;)V

    #@227
    invoke-static {v8, v13, v12}, Lsun/misc/FormattedFloatingDecimal;->multPow52(Lsun/misc/FDBigInt;II)Lsun/misc/FDBigInt;

    #@22a
    move-result-object v16

    #@22b
    .line 1451
    .local v16, "bigD":Lsun/misc/FDBigInt;
    invoke-virtual/range {v15 .. v16}, Lsun/misc/FDBigInt;->cmp(Lsun/misc/FDBigInt;)I

    #@22e
    move-result v17

    #@22f
    .local v17, "cmpResult":I
    if-lez v17, :cond_32

    #@231
    .line 1452
    const/16 v29, 0x1

    #@233
    .line 1453
    .local v29, "overvalue":Z
    invoke-virtual/range {v15 .. v16}, Lsun/misc/FDBigInt;->sub(Lsun/misc/FDBigInt;)Lsun/misc/FDBigInt;

    #@236
    move-result-object v19

    #@237
    .line 1454
    .local v19, "diff":Lsun/misc/FDBigInt;
    move-object/from16 v0, p0

    #@239
    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->bigIntNBits:I

    #@23b
    const/4 v10, 0x1

    #@23c
    if-ne v8, v10, :cond_23

    #@23e
    move-object/from16 v0, p0

    #@240
    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->bigIntExp:I

    #@242
    const/16 v10, -0x3ff

    #@244
    if-le v8, v10, :cond_23

    #@246
    .line 1459
    add-int/lit8 v14, v14, -0x1

    #@248
    .line 1460
    if-gez v14, :cond_23

    #@24a
    .line 1463
    const/4 v14, 0x0

    #@24b
    .line 1464
    const/4 v8, 0x1

    #@24c
    move-object/from16 v0, v19

    #@24e
    invoke-virtual {v0, v8}, Lsun/misc/FDBigInt;->lshiftMe(I)V

    #@251
    .line 1475
    :cond_23
    :goto_d
    invoke-static {v11, v14}, Lsun/misc/FormattedFloatingDecimal;->constructPow52(II)Lsun/misc/FDBigInt;

    #@254
    move-result-object v23

    #@255
    .line 1476
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
    .line 1479
    move-object/from16 v0, p0

    #@261
    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    #@263
    if-eqz v8, :cond_24

    #@265
    .line 1480
    if-eqz v29, :cond_33

    #@267
    const/4 v8, -0x1

    #@268
    :goto_e
    move-object/from16 v0, p0

    #@26a
    iput v8, v0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    #@26c
    .line 1504
    .end local v19    # "diff":Lsun/misc/FDBigInt;
    .end local v23    # "halfUlp":Lsun/misc/FDBigInt;
    .end local v29    # "overvalue":Z
    :cond_24
    :goto_f
    move-object/from16 v0, p0

    #@26e
    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

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
    .line 1321
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
    .line 1322
    move/from16 v0, v22

    #@27c
    neg-int v0, v0

    #@27d
    move/from16 v22, v0

    #@27f
    .line 1323
    move-object/from16 v0, p0

    #@281
    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@283
    const/16 v10, -0x145

    #@285
    if-ge v8, v10, :cond_28

    #@287
    .line 1328
    move-object/from16 v0, p0

    #@289
    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

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
    .line 1330
    :cond_28
    and-int/lit8 v8, v22, 0xf

    #@295
    if-eqz v8, :cond_29

    #@297
    .line 1331
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    #@299
    and-int/lit8 v10, v22, 0xf

    #@29b
    aget-wide v38, v8, v10

    #@29d
    div-double v20, v20, v38

    #@29f
    .line 1333
    :cond_29
    shr-int/lit8 v22, v22, 0x4

    #@2a1
    if-eqz v22, :cond_21

    #@2a3
    .line 1335
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
    .line 1336
    and-int/lit8 v8, v22, 0x1

    #@2ac
    if-eqz v8, :cond_2a

    #@2ae
    .line 1337
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->tiny10pow:[D

    #@2b0
    aget-wide v38, v8, v28

    #@2b2
    mul-double v20, v20, v38

    #@2b4
    .line 1335
    :cond_2a
    add-int/lit8 v28, v28, 0x1

    #@2b6
    shr-int/lit8 v22, v22, 0x1

    #@2b8
    goto :goto_11

    #@2b9
    .line 1345
    :cond_2b
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->tiny10pow:[D

    #@2bb
    aget-wide v38, v8, v28

    #@2bd
    mul-double v34, v20, v38

    #@2bf
    .line 1346
    .restart local v34    # "t":D
    const-wide/16 v38, 0x0

    #@2c1
    cmpl-double v8, v34, v38

    #@2c3
    if-nez v8, :cond_2e

    #@2c5
    .line 1359
    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    #@2c7
    mul-double v34, v20, v38

    #@2c9
    .line 1360
    sget-object v8, Lsun/misc/FormattedFloatingDecimal;->tiny10pow:[D

    #@2cb
    aget-wide v38, v8, v28

    #@2cd
    mul-double v34, v34, v38

    #@2cf
    .line 1361
    const-wide/16 v38, 0x0

    #@2d1
    cmpl-double v8, v34, v38

    #@2d3
    if-nez v8, :cond_2d

    #@2d5
    .line 1362
    move-object/from16 v0, p0

    #@2d7
    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

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
    .line 1364
    :cond_2d
    const-wide/16 v34, 0x1

    #@2e3
    .line 1366
    :cond_2e
    move-wide/from16 v20, v34

    #@2e5
    goto/16 :goto_9

    #@2e7
    .line 1403
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
    .line 1404
    .restart local v4    # "B2":I
    const/4 v13, 0x0

    #@2ec
    .restart local v13    # "D5":I
    const/4 v12, 0x0

    #@2ed
    .restart local v12    # "D2":I
    goto/16 :goto_a

    #@2ef
    .line 1409
    :cond_30
    move-object/from16 v0, p0

    #@2f1
    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->bigIntExp:I

    #@2f3
    sub-int/2addr v12, v8

    #@2f4
    goto/16 :goto_b

    #@2f6
    .line 1421
    .restart local v14    # "Ulp2":I
    :cond_31
    move-object/from16 v0, p0

    #@2f8
    iget v8, v0, Lsun/misc/FormattedFloatingDecimal;->bigIntNBits:I

    #@2fa
    rsub-int/lit8 v24, v8, 0x36

    #@2fc
    .restart local v24    # "hulpbias":I
    goto/16 :goto_c

    #@2fe
    .line 1467
    .restart local v16    # "bigD":Lsun/misc/FDBigInt;
    .restart local v17    # "cmpResult":I
    .restart local v18    # "common2":I
    :cond_32
    if-gez v17, :cond_24

    #@300
    .line 1468
    const/16 v29, 0x0

    #@302
    .line 1469
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
    .line 1480
    .restart local v23    # "halfUlp":Lsun/misc/FDBigInt;
    :cond_33
    const/4 v8, 0x1

    #@30b
    goto/16 :goto_e

    #@30d
    .line 1483
    :cond_34
    if-nez v17, :cond_36

    #@30f
    .line 1486
    move-wide/from16 v0, v20

    #@311
    move/from16 v2, v29

    #@313
    invoke-static {v0, v1, v2}, Lsun/misc/FormattedFloatingDecimal;->ulp(DZ)D

    #@316
    move-result-wide v38

    #@317
    const-wide/high16 v40, 0x3fe0000000000000L    # 0.5

    #@319
    mul-double v38, v38, v40

    #@31b
    add-double v20, v20, v38

    #@31d
    .line 1488
    move-object/from16 v0, p0

    #@31f
    iget-boolean v8, v0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    #@321
    if-eqz v8, :cond_24

    #@323
    .line 1489
    if-eqz v29, :cond_35

    #@325
    const/4 v8, -0x1

    #@326
    :goto_13
    move-object/from16 v0, p0

    #@328
    iput v8, v0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    #@32a
    goto/16 :goto_f

    #@32c
    :cond_35
    const/4 v8, 0x1

    #@32d
    goto :goto_13

    #@32e
    .line 1497
    :cond_36
    move-wide/from16 v0, v20

    #@330
    move/from16 v2, v29

    #@332
    invoke-static {v0, v1, v2}, Lsun/misc/FormattedFloatingDecimal;->ulp(DZ)D

    #@335
    move-result-wide v38

    #@336
    add-double v20, v20, v38

    #@338
    .line 1498
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
    .line 1519
    iget v10, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@2
    const/16 v11, 0x8

    #@4
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v6

    #@8
    .line 1524
    .local v6, "kDigits":I
    iget-object v10, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@a
    sget-object v11, Lsun/misc/FormattedFloatingDecimal;->infinity:[C

    #@c
    if-eq v10, v11, :cond_0

    #@e
    iget-object v10, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@10
    sget-object v11, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    #@12
    if-ne v10, v11, :cond_3

    #@14
    .line 1525
    :cond_0
    iget-object v10, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@16
    sget-object v11, Lsun/misc/FormattedFloatingDecimal;->notANumber:[C

    #@18
    if-ne v10, v11, :cond_1

    #@1a
    .line 1526
    const/high16 v10, 0x7fc00000    # NaNf

    #@1c
    return v10

    #@1d
    .line 1528
    :cond_1
    iget-boolean v10, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

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
    .line 1534
    :cond_3
    iget-object v10, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@29
    const/4 v11, 0x0

    #@2a
    aget-char v10, v10, v11

    #@2c
    add-int/lit8 v5, v10, -0x30

    #@2e
    .line 1535
    .local v5, "iValue":I
    const/4 v4, 0x1

    #@2f
    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_4

    #@31
    .line 1536
    mul-int/lit8 v10, v5, 0xa

    #@33
    iget-object v11, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@35
    aget-char v11, v11, v4

    #@37
    add-int/2addr v10, v11

    #@38
    add-int/lit8 v5, v10, -0x30

    #@3a
    .line 1535
    add-int/lit8 v4, v4, 0x1

    #@3c
    goto :goto_1

    #@3d
    .line 1538
    :cond_4
    int-to-float v3, v5

    #@3e
    .line 1539
    .local v3, "fValue":F
    iget v10, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@40
    sub-int v2, v10, v6

    #@42
    .line 1546
    .local v2, "exp":I
    iget v10, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@44
    const/4 v11, 0x7

    #@45
    if-gt v10, v11, :cond_d

    #@47
    .line 1557
    if-eqz v2, :cond_5

    #@49
    const/4 v10, 0x0

    #@4a
    cmpl-float v10, v3, v10

    #@4c
    if-nez v10, :cond_7

    #@4e
    .line 1558
    :cond_5
    iget-boolean v10, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    #@50
    if-eqz v10, :cond_6

    #@52
    neg-float v3, v3

    #@53
    .end local v3    # "fValue":F
    :cond_6
    return v3

    #@54
    .line 1559
    .restart local v3    # "fValue":F
    :cond_7
    if-ltz v2, :cond_b

    #@56
    .line 1560
    sget v10, Lsun/misc/FormattedFloatingDecimal;->singleMaxSmallTen:I

    #@58
    if-gt v2, v10, :cond_9

    #@5a
    .line 1565
    sget-object v10, Lsun/misc/FormattedFloatingDecimal;->singleSmall10pow:[F

    #@5c
    aget v10, v10, v2

    #@5e
    mul-float/2addr v3, v10

    #@5f
    .line 1566
    iget-boolean v10, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    #@61
    if-eqz v10, :cond_8

    #@63
    neg-float v3, v3

    #@64
    .end local v3    # "fValue":F
    :cond_8
    return v3

    #@65
    .line 1568
    .restart local v3    # "fValue":F
    :cond_9
    rsub-int/lit8 v7, v6, 0x7

    #@67
    .line 1569
    .local v7, "slop":I
    sget v10, Lsun/misc/FormattedFloatingDecimal;->singleMaxSmallTen:I

    #@69
    add-int/2addr v10, v7

    #@6a
    if-gt v2, v10, :cond_10

    #@6c
    .line 1576
    sget-object v10, Lsun/misc/FormattedFloatingDecimal;->singleSmall10pow:[F

    #@6e
    aget v10, v10, v7

    #@70
    mul-float/2addr v3, v10

    #@71
    .line 1577
    sget-object v10, Lsun/misc/FormattedFloatingDecimal;->singleSmall10pow:[F

    #@73
    sub-int v11, v2, v7

    #@75
    aget v10, v10, v11

    #@77
    mul-float/2addr v3, v10

    #@78
    .line 1578
    iget-boolean v10, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    #@7a
    if-eqz v10, :cond_a

    #@7c
    neg-float v3, v3

    #@7d
    .end local v3    # "fValue":F
    :cond_a
    return v3

    #@7e
    .line 1584
    .end local v7    # "slop":I
    .restart local v3    # "fValue":F
    :cond_b
    sget v10, Lsun/misc/FormattedFloatingDecimal;->singleMaxSmallTen:I

    #@80
    neg-int v10, v10

    #@81
    if-lt v2, v10, :cond_10

    #@83
    .line 1588
    sget-object v10, Lsun/misc/FormattedFloatingDecimal;->singleSmall10pow:[F

    #@85
    neg-int v11, v2

    #@86
    aget v10, v10, v11

    #@88
    div-float/2addr v3, v10

    #@89
    .line 1589
    iget-boolean v10, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    #@8b
    if-eqz v10, :cond_c

    #@8d
    neg-float v3, v3

    #@8e
    .end local v3    # "fValue":F
    :cond_c
    return v3

    #@8f
    .line 1595
    .restart local v3    # "fValue":F
    :cond_d
    iget v10, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@91
    iget v11, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@93
    if-lt v10, v11, :cond_10

    #@95
    iget v10, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@97
    iget v11, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@99
    add-int/2addr v10, v11

    #@9a
    const/16 v11, 0xf

    #@9c
    if-gt v10, v11, :cond_10

    #@9e
    .line 1605
    int-to-long v8, v5

    #@9f
    .line 1606
    .local v8, "lValue":J
    move v4, v6

    #@a0
    :goto_2
    iget v10, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@a2
    if-ge v4, v10, :cond_e

    #@a4
    .line 1607
    const-wide/16 v10, 0xa

    #@a6
    mul-long/2addr v10, v8

    #@a7
    iget-object v12, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@a9
    aget-char v12, v12, v4

    #@ab
    add-int/lit8 v12, v12, -0x30

    #@ad
    int-to-long v12, v12

    #@ae
    add-long v8, v10, v12

    #@b0
    .line 1606
    add-int/lit8 v4, v4, 0x1

    #@b2
    goto :goto_2

    #@b3
    .line 1609
    :cond_e
    long-to-double v0, v8

    #@b4
    .line 1610
    .local v0, "dValue":D
    iget v10, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@b6
    iget v11, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@b8
    sub-int v2, v10, v11

    #@ba
    .line 1611
    sget-object v10, Lsun/misc/FormattedFloatingDecimal;->small10pow:[D

    #@bc
    aget-wide v10, v10, v2

    #@be
    mul-double/2addr v0, v10

    #@bf
    .line 1612
    double-to-float v3, v0

    #@c0
    .line 1613
    iget-boolean v10, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    #@c2
    if-eqz v10, :cond_f

    #@c4
    neg-float v3, v3

    #@c5
    .end local v3    # "fValue":F
    :cond_f
    return v3

    #@c6
    .line 1625
    .end local v0    # "dValue":D
    .end local v8    # "lValue":J
    .restart local v3    # "fValue":F
    :cond_10
    iget v10, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@c8
    const/16 v11, 0x27

    #@ca
    if-le v10, v11, :cond_12

    #@cc
    .line 1630
    iget-boolean v10, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

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
    .line 1631
    :cond_12
    iget v10, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@d8
    const/16 v11, -0x2e

    #@da
    if-ge v10, v11, :cond_14

    #@dc
    .line 1636
    iget-boolean v10, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

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
    .line 1651
    :cond_14
    iget-boolean v10, p0, Lsun/misc/FormattedFloatingDecimal;->fromHex:Z

    #@e7
    if-eqz v10, :cond_15

    #@e9
    const/4 v10, 0x0

    #@ea
    :goto_5
    iput-boolean v10, p0, Lsun/misc/FormattedFloatingDecimal;->mustSetRoundDir:Z

    #@ec
    .line 1652
    invoke-virtual {p0}, Lsun/misc/FormattedFloatingDecimal;->doubleValue()D

    #@ef
    move-result-wide v0

    #@f0
    .line 1653
    .restart local v0    # "dValue":D
    invoke-virtual {p0, v0, v1}, Lsun/misc/FormattedFloatingDecimal;->stickyRound(D)F

    #@f3
    move-result v10

    #@f4
    return v10

    #@f5
    .line 1651
    .end local v0    # "dValue":D
    :cond_15
    const/4 v10, 0x1

    #@f6
    goto :goto_5
.end method

.method public getChars([C)I
    .locals 11
    .param p1, "result"    # [C

    #@0
    .prologue
    .line 991
    sget-boolean v8, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    #@2
    if-nez v8, :cond_1

    #@4
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@6
    const/16 v9, 0x13

    #@8
    if-gt v8, v9, :cond_0

    #@a
    const/4 v8, 0x1

    #@b
    :goto_0
    if-nez v8, :cond_1

    #@d
    new-instance v8, Ljava/lang/AssertionError;

    #@f
    iget v9, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@11
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v9

    #@15
    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@18
    throw v8

    #@19
    :cond_0
    const/4 v8, 0x0

    #@1a
    goto :goto_0

    #@1b
    .line 992
    :cond_1
    const/4 v4, 0x0

    #@1c
    .line 993
    .local v4, "i":I
    iget-boolean v8, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    #@1e
    if-eqz v8, :cond_2

    #@20
    const/16 v8, 0x2d

    #@22
    const/4 v9, 0x0

    #@23
    aput-char v8, p1, v9

    #@25
    const/4 v4, 0x1

    #@26
    .line 994
    :cond_2
    iget-boolean v8, p0, Lsun/misc/FormattedFloatingDecimal;->isExceptional:Z

    #@28
    if-eqz v8, :cond_4

    #@2a
    .line 995
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@2c
    iget v9, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@2e
    const/4 v10, 0x0

    #@2f
    invoke-static {v8, v10, p1, v4, v9}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@32
    .line 996
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@34
    add-int/2addr v4, v8

    #@35
    .line 1140
    :cond_3
    :goto_1
    return v4

    #@36
    .line 998
    :cond_4
    iget-object v1, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@38
    .line 999
    .local v1, "digits":[C
    iget v3, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@3a
    .line 1000
    .local v3, "exp":I
    invoke-static {}, Lsun/misc/FormattedFloatingDecimal;->-getsun-misc-FormattedFloatingDecimal$FormSwitchesValues()[I

    #@3d
    move-result-object v8

    #@3e
    iget-object v9, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    #@40
    invoke-virtual {v9}, Lsun/misc/FormattedFloatingDecimal$Form;->ordinal()I

    #@43
    move-result v9

    #@44
    aget v8, v8, v9

    #@46
    packed-switch v8, :pswitch_data_0

    #@49
    .line 1025
    sget-boolean v8, Lsun/misc/FormattedFloatingDecimal;->-assertionsDisabled:Z

    #@4b
    if-nez v8, :cond_5

    #@4d
    new-instance v8, Ljava/lang/AssertionError;

    #@4f
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@52
    throw v8

    #@53
    .line 1004
    :pswitch_0
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@55
    iget v9, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    #@57
    add-int/2addr v8, v9

    #@58
    invoke-direct {p0, v8}, Lsun/misc/FormattedFloatingDecimal;->checkExponent(I)I

    #@5b
    move-result v3

    #@5c
    .line 1005
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@5e
    iget v9, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    #@60
    add-int/2addr v8, v9

    #@61
    invoke-direct {p0, v8}, Lsun/misc/FormattedFloatingDecimal;->applyPrecision(I)[C

    #@64
    move-result-object v1

    #@65
    .line 1027
    :cond_5
    :goto_2
    :pswitch_1
    iput v3, p0, Lsun/misc/FormattedFloatingDecimal;->decExponentRounded:I

    #@67
    .line 1029
    if-lez v3, :cond_a

    #@69
    .line 1030
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    #@6b
    sget-object v9, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    #@6d
    if-ne v8, v9, :cond_9

    #@6f
    const/16 v8, 0x8

    #@71
    if-ge v3, v8, :cond_9

    #@73
    .line 1034
    :cond_6
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@75
    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    #@78
    move-result v0

    #@79
    .line 1035
    .local v0, "charLength":I
    const/4 v8, 0x0

    #@7a
    invoke-static {v1, v8, p1, v4, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@7d
    .line 1036
    add-int/2addr v4, v0

    #@7e
    .line 1037
    if-ge v0, v3, :cond_d

    #@80
    .line 1038
    sub-int v0, v3, v0

    #@82
    .line 1039
    const/4 v6, 0x0

    #@83
    .local v6, "nz":I
    move v5, v4

    #@84
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_3
    if-ge v6, v0, :cond_c

    #@86
    .line 1040
    add-int/lit8 v4, v5, 0x1

    #@88
    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/16 v8, 0x30

    #@8a
    aput-char v8, p1, v5

    #@8c
    .line 1039
    add-int/lit8 v6, v6, 0x1

    #@8e
    move v5, v4

    #@8f
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_3

    #@90
    .line 1008
    .end local v0    # "charLength":I
    .end local v5    # "i":I
    .end local v6    # "nz":I
    .restart local v4    # "i":I
    :pswitch_2
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    #@92
    add-int/lit8 v8, v8, 0x1

    #@94
    invoke-direct {p0, v8}, Lsun/misc/FormattedFloatingDecimal;->checkExponent(I)I

    #@97
    move-result v3

    #@98
    .line 1009
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    #@9a
    add-int/lit8 v8, v8, 0x1

    #@9c
    invoke-direct {p0, v8}, Lsun/misc/FormattedFloatingDecimal;->applyPrecision(I)[C

    #@9f
    move-result-object v1

    #@a0
    goto :goto_2

    #@a1
    .line 1012
    :pswitch_3
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    #@a3
    invoke-direct {p0, v8}, Lsun/misc/FormattedFloatingDecimal;->checkExponent(I)I

    #@a6
    move-result v3

    #@a7
    .line 1013
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    #@a9
    invoke-direct {p0, v8}, Lsun/misc/FormattedFloatingDecimal;->applyPrecision(I)[C

    #@ac
    move-result-object v1

    #@ad
    .line 1016
    add-int/lit8 v8, v3, -0x1

    #@af
    const/4 v9, -0x4

    #@b0
    if-lt v8, v9, :cond_7

    #@b2
    add-int/lit8 v8, v3, -0x1

    #@b4
    iget v9, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    #@b6
    if-lt v8, v9, :cond_8

    #@b8
    .line 1017
    :cond_7
    sget-object v8, Lsun/misc/FormattedFloatingDecimal$Form;->SCIENTIFIC:Lsun/misc/FormattedFloatingDecimal$Form;

    #@ba
    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    #@bc
    .line 1018
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    #@be
    add-int/lit8 v8, v8, -0x1

    #@c0
    iput v8, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    #@c2
    goto :goto_2

    #@c3
    .line 1020
    :cond_8
    sget-object v8, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    #@c5
    iput-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    #@c7
    .line 1021
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    #@c9
    sub-int/2addr v8, v3

    #@ca
    iput v8, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    #@cc
    goto :goto_2

    #@cd
    .line 1031
    :cond_9
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    #@cf
    sget-object v9, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    #@d1
    if-eq v8, v9, :cond_6

    #@d3
    .line 1070
    :cond_a
    if-gtz v3, :cond_11

    #@d5
    .line 1071
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    #@d7
    sget-object v9, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    #@d9
    if-ne v8, v9, :cond_10

    #@db
    const/4 v8, -0x3

    #@dc
    if-le v3, v8, :cond_10

    #@de
    .line 1075
    :cond_b
    add-int/lit8 v5, v4, 0x1

    #@e0
    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0x30

    #@e2
    aput-char v8, p1, v4

    #@e4
    .line 1076
    if-eqz v3, :cond_12

    #@e6
    .line 1078
    neg-int v8, v3

    #@e7
    iget v9, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    #@e9
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    #@ec
    move-result v7

    #@ed
    .line 1079
    .local v7, "t":I
    if-lez v7, :cond_12

    #@ef
    .line 1080
    add-int/lit8 v4, v5, 0x1

    #@f1
    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/16 v8, 0x2e

    #@f3
    aput-char v8, p1, v5

    #@f5
    .line 1081
    const/4 v6, 0x0

    #@f6
    .restart local v6    # "nz":I
    move v5, v4

    #@f7
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :goto_4
    if-ge v6, v7, :cond_12

    #@f9
    .line 1082
    add-int/lit8 v4, v5, 0x1

    #@fb
    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/16 v8, 0x30

    #@fd
    aput-char v8, p1, v5

    #@ff
    .line 1081
    add-int/lit8 v6, v6, 0x1

    #@101
    move v5, v4

    #@102
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_4

    #@103
    .line 1044
    .end local v7    # "t":I
    .restart local v0    # "charLength":I
    :cond_c
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    #@105
    sget-object v9, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    #@107
    if-ne v8, v9, :cond_1c

    #@109
    .line 1045
    add-int/lit8 v4, v5, 0x1

    #@10b
    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/16 v8, 0x2e

    #@10d
    aput-char v8, p1, v5

    #@10f
    .line 1046
    add-int/lit8 v5, v4, 0x1

    #@111
    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0x30

    #@113
    aput-char v8, p1, v4

    #@115
    move v4, v5

    #@116
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_1

    #@118
    .line 1052
    .end local v6    # "nz":I
    :cond_d
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    #@11a
    sget-object v9, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    #@11c
    if-ne v8, v9, :cond_f

    #@11e
    .line 1053
    add-int/lit8 v5, v4, 0x1

    #@120
    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0x2e

    #@122
    aput-char v8, p1, v4

    #@124
    .line 1054
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@126
    if-ge v0, v8, :cond_e

    #@128
    .line 1055
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@12a
    sub-int/2addr v8, v0

    #@12b
    iget v9, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    #@12d
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    #@130
    move-result v7

    #@131
    .line 1056
    .restart local v7    # "t":I
    invoke-static {v1, v0, p1, v5, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@134
    .line 1057
    add-int v4, v5, v7

    #@136
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_1

    #@138
    .line 1059
    .end local v4    # "i":I
    .end local v7    # "t":I
    .restart local v5    # "i":I
    :cond_e
    add-int/lit8 v4, v5, 0x1

    #@13a
    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/16 v8, 0x30

    #@13c
    aput-char v8, p1, v5

    #@13e
    goto/16 :goto_1

    #@140
    .line 1062
    :cond_f
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@142
    sub-int/2addr v8, v0

    #@143
    iget v9, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    #@145
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    #@148
    move-result v7

    #@149
    .line 1063
    .restart local v7    # "t":I
    if-lez v7, :cond_3

    #@14b
    .line 1064
    add-int/lit8 v5, v4, 0x1

    #@14d
    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0x2e

    #@14f
    aput-char v8, p1, v4

    #@151
    .line 1065
    invoke-static {v1, v0, p1, v5, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@154
    .line 1066
    add-int v4, v5, v7

    #@156
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_1

    #@158
    .line 1072
    .end local v0    # "charLength":I
    .end local v7    # "t":I
    :cond_10
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    #@15a
    sget-object v9, Lsun/misc/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Lsun/misc/FormattedFloatingDecimal$Form;

    #@15c
    if-eq v8, v9, :cond_b

    #@15e
    .line 1094
    :cond_11
    add-int/lit8 v5, v4, 0x1

    #@160
    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/4 v8, 0x0

    #@161
    aget-char v8, v1, v8

    #@163
    aput-char v8, p1, v4

    #@165
    .line 1095
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    #@167
    sget-object v9, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    #@169
    if-ne v8, v9, :cond_15

    #@16b
    .line 1096
    add-int/lit8 v4, v5, 0x1

    #@16d
    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/16 v8, 0x2e

    #@16f
    aput-char v8, p1, v5

    #@171
    .line 1097
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@173
    const/4 v9, 0x1

    #@174
    if-le v8, v9, :cond_14

    #@176
    .line 1098
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@178
    add-int/lit8 v8, v8, -0x1

    #@17a
    const/4 v9, 0x1

    #@17b
    invoke-static {v1, v9, p1, v4, v8}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@17e
    .line 1099
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@180
    add-int/lit8 v8, v8, -0x1

    #@182
    add-int/2addr v4, v8

    #@183
    .line 1103
    :goto_5
    add-int/lit8 v5, v4, 0x1

    #@185
    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0x45

    #@187
    aput-char v8, p1, v4

    #@189
    .line 1116
    :goto_6
    if-gtz v3, :cond_16

    #@18b
    .line 1117
    add-int/lit8 v4, v5, 0x1

    #@18d
    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/16 v8, 0x2d

    #@18f
    aput-char v8, p1, v5

    #@191
    .line 1118
    neg-int v8, v3

    #@192
    add-int/lit8 v2, v8, 0x1

    #@194
    .local v2, "e":I
    move v5, v4

    #@195
    .line 1125
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :goto_7
    const/16 v8, 0x9

    #@197
    if-gt v2, v8, :cond_17

    #@199
    .line 1126
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    #@19b
    sget-object v9, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    #@19d
    if-eq v8, v9, :cond_19

    #@19f
    .line 1127
    add-int/lit8 v4, v5, 0x1

    #@1a1
    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/16 v8, 0x30

    #@1a3
    aput-char v8, p1, v5

    #@1a5
    .line 1128
    :goto_8
    add-int/lit8 v5, v4, 0x1

    #@1a7
    .end local v4    # "i":I
    .restart local v5    # "i":I
    add-int/lit8 v8, v2, 0x30

    #@1a9
    int-to-char v8, v8

    #@1aa
    aput-char v8, p1, v4

    #@1ac
    move v4, v5

    #@1ad
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_1

    #@1af
    .end local v2    # "e":I
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_12
    move v4, v5

    #@1b0
    .line 1085
    .end local v5    # "i":I
    .restart local v4    # "i":I
    array-length v8, v1

    #@1b1
    iget v9, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    #@1b3
    add-int/2addr v9, v3

    #@1b4
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    #@1b7
    move-result v7

    #@1b8
    .line 1086
    .restart local v7    # "t":I
    if-lez v7, :cond_3

    #@1ba
    .line 1087
    const/4 v8, 0x1

    #@1bb
    if-ne v4, v8, :cond_13

    #@1bd
    .line 1088
    add-int/lit8 v5, v4, 0x1

    #@1bf
    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0x2e

    #@1c1
    aput-char v8, p1, v4

    #@1c3
    move v4, v5

    #@1c4
    .line 1090
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :cond_13
    const/4 v8, 0x0

    #@1c5
    invoke-static {v1, v8, p1, v4, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@1c8
    .line 1091
    add-int/2addr v4, v7

    #@1c9
    goto/16 :goto_1

    #@1cb
    .line 1101
    .end local v7    # "t":I
    :cond_14
    add-int/lit8 v5, v4, 0x1

    #@1cd
    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0x30

    #@1cf
    aput-char v8, p1, v4

    #@1d1
    move v4, v5

    #@1d2
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_5

    #@1d3
    .line 1105
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_15
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@1d5
    const/4 v9, 0x1

    #@1d6
    if-le v8, v9, :cond_1b

    #@1d8
    .line 1106
    iget v8, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@1da
    add-int/lit8 v8, v8, -0x1

    #@1dc
    iget v9, p0, Lsun/misc/FormattedFloatingDecimal;->precision:I

    #@1de
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    #@1e1
    move-result v7

    #@1e2
    .line 1107
    .restart local v7    # "t":I
    if-lez v7, :cond_1b

    #@1e4
    .line 1108
    add-int/lit8 v4, v5, 0x1

    #@1e6
    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/16 v8, 0x2e

    #@1e8
    aput-char v8, p1, v5

    #@1ea
    .line 1109
    const/4 v8, 0x1

    #@1eb
    invoke-static {v1, v8, p1, v4, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@1ee
    .line 1110
    add-int/2addr v4, v7

    #@1ef
    .line 1113
    .end local v7    # "t":I
    :goto_9
    add-int/lit8 v5, v4, 0x1

    #@1f1
    .end local v4    # "i":I
    .restart local v5    # "i":I
    const/16 v8, 0x65

    #@1f3
    aput-char v8, p1, v4

    #@1f5
    goto :goto_6

    #@1f6
    .line 1120
    :cond_16
    iget-object v8, p0, Lsun/misc/FormattedFloatingDecimal;->form:Lsun/misc/FormattedFloatingDecimal$Form;

    #@1f8
    sget-object v9, Lsun/misc/FormattedFloatingDecimal$Form;->COMPATIBLE:Lsun/misc/FormattedFloatingDecimal$Form;

    #@1fa
    if-eq v8, v9, :cond_1a

    #@1fc
    .line 1121
    add-int/lit8 v4, v5, 0x1

    #@1fe
    .end local v5    # "i":I
    .restart local v4    # "i":I
    const/16 v8, 0x2b

    #@200
    aput-char v8, p1, v5

    #@202
    .line 1122
    :goto_a
    add-int/lit8 v2, v3, -0x1

    #@204
    .restart local v2    # "e":I
    move v5, v4

    #@205
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_7

    #@206
    .line 1129
    :cond_17
    const/16 v8, 0x63

    #@208
    if-gt v2, v8, :cond_18

    #@20a
    .line 1130
    add-int/lit8 v4, v5, 0x1

    #@20c
    .end local v5    # "i":I
    .restart local v4    # "i":I
    div-int/lit8 v8, v2, 0xa

    #@20e
    add-int/lit8 v8, v8, 0x30

    #@210
    int-to-char v8, v8

    #@211
    aput-char v8, p1, v5

    #@213
    .line 1131
    add-int/lit8 v5, v4, 0x1

    #@215
    .end local v4    # "i":I
    .restart local v5    # "i":I
    rem-int/lit8 v8, v2, 0xa

    #@217
    add-int/lit8 v8, v8, 0x30

    #@219
    int-to-char v8, v8

    #@21a
    aput-char v8, p1, v4

    #@21c
    move v4, v5

    #@21d
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_1

    #@21f
    .line 1133
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_18
    add-int/lit8 v4, v5, 0x1

    #@221
    .end local v5    # "i":I
    .restart local v4    # "i":I
    div-int/lit8 v8, v2, 0x64

    #@223
    add-int/lit8 v8, v8, 0x30

    #@225
    int-to-char v8, v8

    #@226
    aput-char v8, p1, v5

    #@228
    .line 1134
    rem-int/lit8 v2, v2, 0x64

    #@22a
    .line 1135
    add-int/lit8 v5, v4, 0x1

    #@22c
    .end local v4    # "i":I
    .restart local v5    # "i":I
    div-int/lit8 v8, v2, 0xa

    #@22e
    add-int/lit8 v8, v8, 0x30

    #@230
    int-to-char v8, v8

    #@231
    aput-char v8, p1, v4

    #@233
    .line 1136
    add-int/lit8 v4, v5, 0x1

    #@235
    .end local v5    # "i":I
    .restart local v4    # "i":I
    rem-int/lit8 v8, v2, 0xa

    #@237
    add-int/lit8 v8, v8, 0x30

    #@239
    int-to-char v8, v8

    #@23a
    aput-char v8, p1, v5

    #@23c
    goto/16 :goto_1

    #@23e
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_19
    move v4, v5

    #@23f
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_8

    #@241
    .end local v2    # "e":I
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_1a
    move v4, v5

    #@242
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_a

    #@243
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_1b
    move v4, v5

    #@244
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_9

    #@245
    .end local v4    # "i":I
    .restart local v0    # "charLength":I
    .restart local v5    # "i":I
    .restart local v6    # "nz":I
    :cond_1c
    move v4, v5

    #@246
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_1

    #@248
    .line 1000
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getExponent()I
    .locals 1

    #@0
    .prologue
    .line 982
    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    return v0
.end method

.method public getExponentRounded()I
    .locals 1

    #@0
    .prologue
    .line 987
    iget v0, p0, Lsun/misc/FormattedFloatingDecimal;->decExponentRounded:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    return v0
.end method

.method stickyRound(D)F
    .locals 9
    .param p1, "dval"    # D

    #@0
    .prologue
    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@2
    .line 282
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@5
    move-result-wide v2

    #@6
    .line 283
    .local v2, "lbits":J
    and-long v0, v2, v6

    #@8
    .line 284
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
    .line 287
    :cond_0
    double-to-float v4, p1

    #@13
    return v4

    #@14
    .line 289
    :cond_1
    iget v4, p0, Lsun/misc/FormattedFloatingDecimal;->roundDir:I

    #@16
    int-to-long v4, v4

    #@17
    add-long/2addr v2, v4

    #@18
    .line 290
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@1b
    move-result-wide v4

    #@1c
    double-to-float v4, v4

    #@1d
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 967
    new-instance v0, Ljava/lang/StringBuffer;

    #@3
    iget v1, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@5
    add-int/lit8 v1, v1, 0x8

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@a
    .line 968
    .local v0, "result":Ljava/lang/StringBuffer;
    iget-boolean v1, p0, Lsun/misc/FormattedFloatingDecimal;->isNegative:Z

    #@c
    if-eqz v1, :cond_0

    #@e
    const/16 v1, 0x2d

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@13
    .line 969
    :cond_0
    iget-boolean v1, p0, Lsun/misc/FormattedFloatingDecimal;->isExceptional:Z

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 970
    iget-object v1, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@19
    iget v2, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@1b
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@1e
    .line 977
    :goto_0
    new-instance v1, Ljava/lang/String;

    #@20
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    #@23
    return-object v1

    #@24
    .line 972
    :cond_1
    const-string/jumbo v1, "0."

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    .line 973
    iget-object v1, p0, Lsun/misc/FormattedFloatingDecimal;->digits:[C

    #@2c
    iget v2, p0, Lsun/misc/FormattedFloatingDecimal;->nDigits:I

    #@2e
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@31
    .line 974
    const/16 v1, 0x65

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@36
    .line 975
    iget v1, p0, Lsun/misc/FormattedFloatingDecimal;->decExponent:I

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@3b
    goto :goto_0
.end method
