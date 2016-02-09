.class final Ljava/lang/RealToString;
.super Ljava/lang/Object;
.source "RealToString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/RealToString$1;
    }
.end annotation


# static fields
.field private static final INSTANCE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/RealToString;",
            ">;"
        }
    .end annotation
.end field

.field private static final invLogOfTenBaseTwo:D


# instance fields
.field private digitCount:I

.field private final digits:[I

.field private firstK:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 23
    new-instance v0, Ljava/lang/RealToString$1;

    #@2
    invoke-direct {v0}, Ljava/lang/RealToString$1;-><init>()V

    #@5
    sput-object v0, Ljava/lang/RealToString;->INSTANCE:Ljava/lang/ThreadLocal;

    #@7
    .line 29
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    #@9
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    #@c
    move-result-wide v0

    #@d
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    #@f
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    #@12
    move-result-wide v2

    #@13
    div-double/2addr v0, v2

    #@14
    sput-wide v0, Ljava/lang/RealToString;->invLogOfTenBaseTwo:D

    #@16
    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    const/16 v0, 0x40

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Ljava/lang/RealToString;->digits:[I

    #@9
    .line 43
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/RealToString;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/RealToString;-><init>()V

    #@3
    return-void
.end method

.method private native bigIntDigitGenerator(JIZI)V
.end method

.method private convertDouble(Ljava/lang/AbstractStringBuilder;D)Ljava/lang/String;
    .locals 24
    .param p1, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p2, "inputNumber"    # D

    #@0
    .prologue
    .line 67
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v20

    #@4
    .line 68
    .local v20, "inputNumberBits":J
    const-wide/high16 v12, -0x8000000000000000L

    #@6
    and-long v12, v12, v20

    #@8
    const-wide/16 v14, 0x0

    #@a
    cmp-long v3, v12, v14

    #@c
    if-nez v3, :cond_1

    #@e
    const/16 v17, 0x1

    #@10
    .line 69
    .local v17, "positive":Z
    :goto_0
    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@12
    and-long v12, v12, v20

    #@14
    const/16 v3, 0x34

    #@16
    shr-long/2addr v12, v3

    #@17
    long-to-int v10, v12

    #@18
    .line 70
    .local v10, "e":I
    const-wide v12, 0xfffffffffffffL

    #@1d
    and-long v4, v20, v12

    #@1f
    .line 71
    .local v4, "f":J
    const-wide/16 v12, 0x0

    #@21
    cmp-long v3, v4, v12

    #@23
    if-nez v3, :cond_2

    #@25
    const/4 v8, 0x1

    #@26
    .line 73
    .local v8, "mantissaIsZero":Z
    :goto_1
    const/16 v22, 0x0

    #@28
    .line 74
    .local v22, "quickResult":Ljava/lang/String;
    const/16 v3, 0x7ff

    #@2a
    if-ne v10, v3, :cond_5

    #@2c
    .line 75
    if-eqz v8, :cond_4

    #@2e
    .line 76
    if-eqz v17, :cond_3

    #@30
    const-string/jumbo v22, "Infinity"

    #@33
    .line 88
    .end local v22    # "quickResult":Ljava/lang/String;
    :cond_0
    :goto_2
    if-eqz v22, :cond_9

    #@35
    .line 89
    move-object/from16 v0, p1

    #@37
    move-object/from16 v1, v22

    #@39
    invoke-static {v0, v1}, Ljava/lang/RealToString;->resultOrSideEffect(Ljava/lang/AbstractStringBuilder;Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    return-object v3

    #@3e
    .line 68
    .end local v4    # "f":J
    .end local v8    # "mantissaIsZero":Z
    .end local v10    # "e":I
    .end local v17    # "positive":Z
    :cond_1
    const/16 v17, 0x0

    #@40
    .restart local v17    # "positive":Z
    goto :goto_0

    #@41
    .line 71
    .restart local v4    # "f":J
    .restart local v10    # "e":I
    :cond_2
    const/4 v8, 0x0

    #@42
    .restart local v8    # "mantissaIsZero":Z
    goto :goto_1

    #@43
    .line 76
    .restart local v22    # "quickResult":Ljava/lang/String;
    :cond_3
    const-string/jumbo v22, "-Infinity"

    #@46
    .local v22, "quickResult":Ljava/lang/String;
    goto :goto_2

    #@47
    .line 78
    .local v22, "quickResult":Ljava/lang/String;
    :cond_4
    const-string/jumbo v22, "NaN"

    #@4a
    .local v22, "quickResult":Ljava/lang/String;
    goto :goto_2

    #@4b
    .line 80
    .local v22, "quickResult":Ljava/lang/String;
    :cond_5
    if-nez v10, :cond_0

    #@4d
    .line 81
    if-eqz v8, :cond_7

    #@4f
    .line 82
    if-eqz v17, :cond_6

    #@51
    const-string/jumbo v22, "0.0"

    #@54
    .local v22, "quickResult":Ljava/lang/String;
    goto :goto_2

    #@55
    .local v22, "quickResult":Ljava/lang/String;
    :cond_6
    const-string/jumbo v22, "-0.0"

    #@58
    .local v22, "quickResult":Ljava/lang/String;
    goto :goto_2

    #@59
    .line 83
    .local v22, "quickResult":Ljava/lang/String;
    :cond_7
    const-wide/16 v12, 0x1

    #@5b
    cmp-long v3, v4, v12

    #@5d
    if-nez v3, :cond_0

    #@5f
    .line 85
    if-eqz v17, :cond_8

    #@61
    const-string/jumbo v22, "4.9E-324"

    #@64
    .local v22, "quickResult":Ljava/lang/String;
    goto :goto_2

    #@65
    .local v22, "quickResult":Ljava/lang/String;
    :cond_8
    const-string/jumbo v22, "-4.9E-324"

    #@68
    .local v22, "quickResult":Ljava/lang/String;
    goto :goto_2

    #@69
    .line 94
    .end local v22    # "quickResult":Ljava/lang/String;
    :cond_9
    const/16 v9, 0x34

    #@6b
    .line 95
    .local v9, "numBits":I
    if-nez v10, :cond_a

    #@6d
    .line 96
    const/16 v6, -0x432

    #@6f
    .line 97
    .local v6, "pow":I
    move-wide/from16 v18, v4

    #@71
    .line 98
    .local v18, "ff":J
    :goto_3
    const-wide/high16 v12, 0x10000000000000L

    #@73
    and-long v12, v12, v18

    #@75
    const-wide/16 v14, 0x0

    #@77
    cmp-long v3, v12, v14

    #@79
    if-nez v3, :cond_b

    #@7b
    .line 99
    const/4 v3, 0x1

    #@7c
    shl-long v18, v18, v3

    #@7e
    .line 100
    add-int/lit8 v9, v9, -0x1

    #@80
    goto :goto_3

    #@81
    .line 105
    .end local v6    # "pow":I
    .end local v18    # "ff":J
    :cond_a
    const-wide/high16 v12, 0x10000000000000L

    #@83
    or-long/2addr v4, v12

    #@84
    .line 106
    add-int/lit16 v6, v10, -0x433

    #@86
    .line 109
    .restart local v6    # "pow":I
    :cond_b
    const/4 v3, 0x0

    #@87
    move-object/from16 v0, p0

    #@89
    iput v3, v0, Ljava/lang/RealToString;->digitCount:I

    #@8b
    const/4 v3, 0x0

    #@8c
    move-object/from16 v0, p0

    #@8e
    iput v3, v0, Ljava/lang/RealToString;->firstK:I

    #@90
    .line 110
    const/16 v3, -0x3b

    #@92
    if-ge v3, v6, :cond_e

    #@94
    const/4 v3, 0x6

    #@95
    if-ge v6, v3, :cond_e

    #@97
    .line 111
    :cond_c
    if-nez v10, :cond_10

    #@99
    const/4 v7, 0x1

    #@9a
    :goto_4
    move-object/from16 v3, p0

    #@9c
    invoke-direct/range {v3 .. v9}, Ljava/lang/RealToString;->longDigitGenerator(JIZZI)V

    #@9f
    .line 115
    :goto_5
    if-eqz p1, :cond_12

    #@a1
    move-object/from16 v2, p1

    #@a3
    .line 116
    .local v2, "dst":Ljava/lang/AbstractStringBuilder;
    :goto_6
    const-wide v12, 0x416312d000000000L    # 1.0E7

    #@a8
    cmpl-double v3, p2, v12

    #@aa
    if-gez v3, :cond_d

    #@ac
    const-wide v12, -0x3e9ced3000000000L    # -1.0E7

    #@b1
    cmpg-double v3, p2, v12

    #@b3
    if-gtz v3, :cond_13

    #@b5
    .line 118
    :cond_d
    move-object/from16 v0, p0

    #@b7
    move/from16 v1, v17

    #@b9
    invoke-direct {v0, v2, v1}, Ljava/lang/RealToString;->freeFormatExponential(Ljava/lang/AbstractStringBuilder;Z)V

    #@bc
    .line 122
    :goto_7
    if-eqz p1, :cond_15

    #@be
    const/4 v3, 0x0

    #@bf
    :goto_8
    return-object v3

    #@c0
    .line 110
    .end local v2    # "dst":Ljava/lang/AbstractStringBuilder;
    :cond_e
    const/16 v3, -0x3b

    #@c2
    if-ne v6, v3, :cond_f

    #@c4
    if-eqz v8, :cond_c

    #@c6
    .line 113
    :cond_f
    if-nez v10, :cond_11

    #@c8
    const/4 v15, 0x1

    #@c9
    :goto_9
    move-object/from16 v11, p0

    #@cb
    move-wide v12, v4

    #@cc
    move v14, v6

    #@cd
    move/from16 v16, v9

    #@cf
    invoke-direct/range {v11 .. v16}, Ljava/lang/RealToString;->bigIntDigitGenerator(JIZI)V

    #@d2
    goto :goto_5

    #@d3
    .line 111
    :cond_10
    const/4 v7, 0x0

    #@d4
    goto :goto_4

    #@d5
    .line 113
    :cond_11
    const/4 v15, 0x0

    #@d6
    goto :goto_9

    #@d7
    .line 115
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    #@d9
    const/16 v3, 0x1a

    #@db
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@de
    .restart local v2    # "dst":Ljava/lang/AbstractStringBuilder;
    goto :goto_6

    #@df
    .line 117
    :cond_13
    const-wide v12, -0x40af9db22d0e5604L    # -0.001

    #@e4
    cmpl-double v3, p2, v12

    #@e6
    if-lez v3, :cond_14

    #@e8
    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    #@ed
    cmpg-double v3, p2, v12

    #@ef
    if-ltz v3, :cond_d

    #@f1
    .line 120
    :cond_14
    move-object/from16 v0, p0

    #@f3
    move/from16 v1, v17

    #@f5
    invoke-direct {v0, v2, v1}, Ljava/lang/RealToString;->freeFormat(Ljava/lang/AbstractStringBuilder;Z)V

    #@f8
    goto :goto_7

    #@f9
    .line 122
    :cond_15
    invoke-virtual {v2}, Ljava/lang/AbstractStringBuilder;->toString()Ljava/lang/String;

    #@fc
    move-result-object v3

    #@fd
    goto :goto_8
.end method

.method private freeFormat(Ljava/lang/AbstractStringBuilder;Z)V
    .locals 10
    .param p1, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p2, "positive"    # Z

    #@0
    .prologue
    const/16 v9, 0x2e

    #@2
    const/16 v8, 0x30

    #@4
    const/4 v7, 0x0

    #@5
    const/4 v6, -0x1

    #@6
    .line 218
    if-nez p2, :cond_0

    #@8
    .line 219
    const/16 v5, 0x2d

    #@a
    invoke-virtual {p1, v5}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    #@d
    .line 221
    :cond_0
    iget v4, p0, Ljava/lang/RealToString;->firstK:I

    #@f
    .line 222
    .local v4, "k":I
    if-gez v4, :cond_1

    #@11
    .line 223
    invoke-virtual {p1, v8}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    #@14
    .line 224
    invoke-virtual {p1, v9}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    #@17
    .line 225
    add-int/lit8 v3, v4, 0x1

    #@19
    .local v3, "i":I
    :goto_0
    if-gez v3, :cond_1

    #@1b
    .line 226
    invoke-virtual {p1, v8}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    #@1e
    .line 225
    add-int/lit8 v3, v3, 0x1

    #@20
    goto :goto_0

    #@21
    .line 229
    .end local v3    # "i":I
    :cond_1
    iget-object v5, p0, Ljava/lang/RealToString;->digits:[I

    #@23
    const/4 v1, 0x1

    #@24
    .local v1, "digitIndex":I
    aget v0, v5, v7

    #@26
    .local v0, "U":I
    move v2, v1

    #@27
    .line 231
    .end local v1    # "digitIndex":I
    .local v2, "digitIndex":I
    :goto_1
    if-eq v0, v6, :cond_5

    #@29
    .line 232
    add-int/lit8 v5, v0, 0x30

    #@2b
    int-to-char v5, v5

    #@2c
    invoke-virtual {p1, v5}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    #@2f
    .line 236
    :cond_2
    :goto_2
    if-nez v4, :cond_3

    #@31
    .line 237
    invoke-virtual {p1, v9}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    #@34
    .line 239
    :cond_3
    add-int/lit8 v4, v4, -0x1

    #@36
    .line 240
    iget v5, p0, Ljava/lang/RealToString;->digitCount:I

    #@38
    if-ge v2, v5, :cond_6

    #@3a
    iget-object v5, p0, Ljava/lang/RealToString;->digits:[I

    #@3c
    add-int/lit8 v1, v2, 0x1

    #@3e
    .end local v2    # "digitIndex":I
    .restart local v1    # "digitIndex":I
    aget v0, v5, v2

    #@40
    .line 241
    :goto_3
    if-ne v0, v6, :cond_4

    #@42
    if-lt v4, v6, :cond_7

    #@44
    :cond_4
    move v2, v1

    #@45
    .end local v1    # "digitIndex":I
    .restart local v2    # "digitIndex":I
    goto :goto_1

    #@46
    .line 233
    :cond_5
    if-lt v4, v6, :cond_2

    #@48
    .line 234
    invoke-virtual {p1, v8}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    #@4b
    goto :goto_2

    #@4c
    .line 240
    :cond_6
    const/4 v0, -0x1

    #@4d
    move v1, v2

    #@4e
    .end local v2    # "digitIndex":I
    .restart local v1    # "digitIndex":I
    goto :goto_3

    #@4f
    .line 216
    :cond_7
    return-void
.end method

.method private freeFormatExponential(Ljava/lang/AbstractStringBuilder;Z)V
    .locals 7
    .param p1, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p2, "positive"    # Z

    #@0
    .prologue
    const/16 v6, 0x30

    #@2
    .line 193
    if-nez p2, :cond_0

    #@4
    .line 194
    const/16 v4, 0x2d

    #@6
    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    #@9
    .line 196
    :cond_0
    iget-object v4, p0, Ljava/lang/RealToString;->digits:[I

    #@b
    .line 192
    const/4 v5, 0x0

    #@c
    .line 196
    const/4 v0, 0x1

    #@d
    .local v0, "digitIndex":I
    aget v4, v4, v5

    #@f
    add-int/lit8 v4, v4, 0x30

    #@11
    int-to-char v4, v4

    #@12
    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    #@15
    .line 197
    const/16 v4, 0x2e

    #@17
    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    #@1a
    .line 199
    iget v3, p0, Ljava/lang/RealToString;->firstK:I

    #@1c
    .line 200
    .local v3, "k":I
    move v2, v3

    #@1d
    .line 202
    .local v2, "exponent":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    #@1f
    .line 203
    iget v4, p0, Ljava/lang/RealToString;->digitCount:I

    #@21
    if-lt v0, v4, :cond_2

    #@23
    .line 209
    add-int/lit8 v4, v2, -0x1

    #@25
    if-ne v3, v4, :cond_1

    #@27
    .line 210
    invoke-virtual {p1, v6}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    #@2a
    .line 212
    :cond_1
    const/16 v4, 0x45

    #@2c
    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    #@2f
    .line 213
    invoke-static {p1, v2}, Ljava/lang/IntegralToString;->appendInt(Ljava/lang/AbstractStringBuilder;I)V

    #@32
    .line 191
    return-void

    #@33
    .line 206
    :cond_2
    iget-object v4, p0, Ljava/lang/RealToString;->digits:[I

    #@35
    add-int/lit8 v1, v0, 0x1

    #@37
    .end local v0    # "digitIndex":I
    .local v1, "digitIndex":I
    aget v4, v4, v0

    #@39
    add-int/lit8 v4, v4, 0x30

    #@3b
    int-to-char v4, v4

    #@3c
    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    #@3f
    move v0, v1

    #@40
    .end local v1    # "digitIndex":I
    .restart local v0    # "digitIndex":I
    goto :goto_0
.end method

.method public static getInstance()Ljava/lang/RealToString;
    .locals 1

    #@0
    .prologue
    .line 47
    sget-object v0, Ljava/lang/RealToString;->INSTANCE:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/RealToString;

    #@8
    return-object v0
.end method

.method private longDigitGenerator(JIZZI)V
    .locals 23
    .param p1, "f"    # J
    .param p3, "e"    # I
    .param p4, "isDenormalized"    # Z
    .param p5, "mantissaIsZero"    # Z
    .param p6, "p"    # I

    #@0
    .prologue
    .line 249
    if-ltz p3, :cond_3

    #@2
    .line 250
    const-wide/16 v18, 0x1

    #@4
    shl-long v2, v18, p3

    #@6
    .line 251
    .local v2, "M":J
    if-nez p5, :cond_2

    #@8
    .line 252
    add-int/lit8 v13, p3, 0x1

    #@a
    shl-long v4, p1, v13

    #@c
    .line 253
    .local v4, "R":J
    const-wide/16 v6, 0x2

    #@e
    .line 269
    .local v6, "S":J
    :goto_0
    add-int v13, p3, p6

    #@10
    add-int/lit8 v13, v13, -0x1

    #@12
    int-to-double v0, v13

    #@13
    move-wide/from16 v18, v0

    #@15
    sget-wide v20, Ljava/lang/RealToString;->invLogOfTenBaseTwo:D

    #@17
    mul-double v18, v18, v20

    #@19
    const-wide v20, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    #@1e
    sub-double v18, v18, v20

    #@20
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    #@23
    move-result-wide v18

    #@24
    move-wide/from16 v0, v18

    #@26
    double-to-int v11, v0

    #@27
    .line 271
    .local v11, "k":I
    if-lez v11, :cond_5

    #@29
    .line 272
    sget-object v13, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@2b
    aget-wide v18, v13, v11

    #@2d
    mul-long v6, v6, v18

    #@2f
    .line 279
    :cond_0
    :goto_1
    add-long v18, v4, v2

    #@31
    cmp-long v13, v18, v6

    #@33
    if-lez v13, :cond_7

    #@35
    .line 280
    move-object/from16 v0, p0

    #@37
    iput v11, v0, Ljava/lang/RealToString;->firstK:I

    #@39
    .line 291
    :goto_2
    const/4 v8, 0x0

    #@3a
    .line 292
    .local v8, "U":I
    const/4 v10, 0x3

    #@3b
    .local v10, "i":I
    :goto_3
    if-ltz v10, :cond_8

    #@3d
    .line 293
    shl-long v18, v6, v10

    #@3f
    sub-long v14, v4, v18

    #@41
    .line 294
    .local v14, "remainder":J
    const-wide/16 v18, 0x0

    #@43
    cmp-long v13, v14, v18

    #@45
    if-ltz v13, :cond_1

    #@47
    .line 295
    move-wide v4, v14

    #@48
    .line 296
    const/4 v13, 0x1

    #@49
    shl-int/2addr v13, v10

    #@4a
    add-int/2addr v8, v13

    #@4b
    .line 292
    :cond_1
    add-int/lit8 v10, v10, -0x1

    #@4d
    goto :goto_3

    #@4e
    .line 255
    .end local v4    # "R":J
    .end local v6    # "S":J
    .end local v8    # "U":I
    .end local v10    # "i":I
    .end local v11    # "k":I
    .end local v14    # "remainder":J
    :cond_2
    add-int/lit8 v13, p3, 0x2

    #@50
    shl-long v4, p1, v13

    #@52
    .line 256
    .restart local v4    # "R":J
    const-wide/16 v6, 0x4

    #@54
    .restart local v6    # "S":J
    goto :goto_0

    #@55
    .line 259
    .end local v2    # "M":J
    .end local v4    # "R":J
    .end local v6    # "S":J
    :cond_3
    const-wide/16 v2, 0x1

    #@57
    .line 260
    .restart local v2    # "M":J
    if-nez p4, :cond_4

    #@59
    if-eqz p5, :cond_4

    #@5b
    .line 264
    const/4 v13, 0x2

    #@5c
    shl-long v4, p1, v13

    #@5e
    .line 265
    .restart local v4    # "R":J
    rsub-int/lit8 v13, p3, 0x2

    #@60
    const-wide/16 v18, 0x1

    #@62
    shl-long v6, v18, v13

    #@64
    .restart local v6    # "S":J
    goto :goto_0

    #@65
    .line 261
    .end local v4    # "R":J
    .end local v6    # "S":J
    :cond_4
    const/4 v13, 0x1

    #@66
    shl-long v4, p1, v13

    #@68
    .line 262
    .restart local v4    # "R":J
    rsub-int/lit8 v13, p3, 0x1

    #@6a
    const-wide/16 v18, 0x1

    #@6c
    shl-long v6, v18, v13

    #@6e
    .line 260
    .restart local v6    # "S":J
    goto :goto_0

    #@6f
    .line 273
    .restart local v11    # "k":I
    :cond_5
    if-gez v11, :cond_0

    #@71
    .line 274
    sget-object v13, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    #@73
    neg-int v0, v11

    #@74
    move/from16 v18, v0

    #@76
    aget-wide v16, v13, v18

    #@78
    .line 275
    .local v16, "scale":J
    mul-long v4, v4, v16

    #@7a
    .line 276
    const-wide/16 v18, 0x1

    #@7c
    cmp-long v13, v2, v18

    #@7e
    if-nez v13, :cond_6

    #@80
    move-wide/from16 v2, v16

    #@82
    goto :goto_1

    #@83
    :cond_6
    mul-long v2, v2, v16

    #@85
    goto :goto_1

    #@86
    .line 282
    .end local v16    # "scale":J
    :cond_7
    add-int/lit8 v13, v11, -0x1

    #@88
    move-object/from16 v0, p0

    #@8a
    iput v13, v0, Ljava/lang/RealToString;->firstK:I

    #@8c
    .line 283
    const-wide/16 v18, 0xa

    #@8e
    mul-long v4, v4, v18

    #@90
    .line 284
    const-wide/16 v18, 0xa

    #@92
    mul-long v2, v2, v18

    #@94
    goto :goto_2

    #@95
    .line 300
    .restart local v8    # "U":I
    .restart local v10    # "i":I
    :cond_8
    cmp-long v13, v4, v2

    #@97
    if-gez v13, :cond_c

    #@99
    const/4 v12, 0x1

    #@9a
    .line 301
    .local v12, "low":Z
    :goto_4
    add-long v18, v4, v2

    #@9c
    cmp-long v13, v18, v6

    #@9e
    if-lez v13, :cond_d

    #@a0
    const/4 v9, 0x1

    #@a1
    .line 303
    .local v9, "high":Z
    :goto_5
    if-nez v12, :cond_9

    #@a3
    if-eqz v9, :cond_e

    #@a5
    .line 310
    :cond_9
    if-eqz v12, :cond_a

    #@a7
    if-eqz v9, :cond_f

    #@a9
    .line 312
    :cond_a
    if-eqz v9, :cond_b

    #@ab
    if-eqz v12, :cond_10

    #@ad
    .line 314
    :cond_b
    const/4 v13, 0x1

    #@ae
    shl-long v18, v4, v13

    #@b0
    cmp-long v13, v18, v6

    #@b2
    if-gez v13, :cond_11

    #@b4
    .line 315
    move-object/from16 v0, p0

    #@b6
    iget-object v13, v0, Ljava/lang/RealToString;->digits:[I

    #@b8
    move-object/from16 v0, p0

    #@ba
    iget v0, v0, Ljava/lang/RealToString;->digitCount:I

    #@bc
    move/from16 v18, v0

    #@be
    add-int/lit8 v19, v18, 0x1

    #@c0
    move/from16 v0, v19

    #@c2
    move-object/from16 v1, p0

    #@c4
    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    #@c6
    aput v8, v13, v18

    #@c8
    .line 247
    :goto_6
    return-void

    #@c9
    .line 300
    .end local v9    # "high":Z
    .end local v12    # "low":Z
    :cond_c
    const/4 v12, 0x0

    #@ca
    .restart local v12    # "low":Z
    goto :goto_4

    #@cb
    .line 301
    :cond_d
    const/4 v9, 0x0

    #@cc
    .restart local v9    # "high":Z
    goto :goto_5

    #@cd
    .line 306
    :cond_e
    const-wide/16 v18, 0xa

    #@cf
    mul-long v4, v4, v18

    #@d1
    .line 307
    const-wide/16 v18, 0xa

    #@d3
    mul-long v2, v2, v18

    #@d5
    .line 308
    move-object/from16 v0, p0

    #@d7
    iget-object v13, v0, Ljava/lang/RealToString;->digits:[I

    #@d9
    move-object/from16 v0, p0

    #@db
    iget v0, v0, Ljava/lang/RealToString;->digitCount:I

    #@dd
    move/from16 v18, v0

    #@df
    add-int/lit8 v19, v18, 0x1

    #@e1
    move/from16 v0, v19

    #@e3
    move-object/from16 v1, p0

    #@e5
    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    #@e7
    aput v8, v13, v18

    #@e9
    goto/16 :goto_2

    #@eb
    .line 311
    :cond_f
    move-object/from16 v0, p0

    #@ed
    iget-object v13, v0, Ljava/lang/RealToString;->digits:[I

    #@ef
    move-object/from16 v0, p0

    #@f1
    iget v0, v0, Ljava/lang/RealToString;->digitCount:I

    #@f3
    move/from16 v18, v0

    #@f5
    add-int/lit8 v19, v18, 0x1

    #@f7
    move/from16 v0, v19

    #@f9
    move-object/from16 v1, p0

    #@fb
    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    #@fd
    aput v8, v13, v18

    #@ff
    goto :goto_6

    #@100
    .line 313
    :cond_10
    move-object/from16 v0, p0

    #@102
    iget-object v13, v0, Ljava/lang/RealToString;->digits:[I

    #@104
    move-object/from16 v0, p0

    #@106
    iget v0, v0, Ljava/lang/RealToString;->digitCount:I

    #@108
    move/from16 v18, v0

    #@10a
    add-int/lit8 v19, v18, 0x1

    #@10c
    move/from16 v0, v19

    #@10e
    move-object/from16 v1, p0

    #@110
    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    #@112
    add-int/lit8 v19, v8, 0x1

    #@114
    aput v19, v13, v18

    #@116
    goto :goto_6

    #@117
    .line 317
    :cond_11
    move-object/from16 v0, p0

    #@119
    iget-object v13, v0, Ljava/lang/RealToString;->digits:[I

    #@11b
    move-object/from16 v0, p0

    #@11d
    iget v0, v0, Ljava/lang/RealToString;->digitCount:I

    #@11f
    move/from16 v18, v0

    #@121
    add-int/lit8 v19, v18, 0x1

    #@123
    move/from16 v0, v19

    #@125
    move-object/from16 v1, p0

    #@127
    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    #@129
    add-int/lit8 v19, v8, 0x1

    #@12b
    aput v19, v13, v18

    #@12d
    goto :goto_6
.end method

.method private static resultOrSideEffect(Ljava/lang/AbstractStringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 51
    if-eqz p0, :cond_0

    #@3
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->append0(Ljava/lang/String;)V

    #@6
    .line 53
    return-object v0

    #@7
    .line 55
    :cond_0
    return-object p1
.end method


# virtual methods
.method public appendDouble(Ljava/lang/AbstractStringBuilder;D)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p2, "d"    # D

    #@0
    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Ljava/lang/RealToString;->convertDouble(Ljava/lang/AbstractStringBuilder;D)Ljava/lang/String;

    #@3
    .line 62
    return-void
.end method

.method public appendFloat(Ljava/lang/AbstractStringBuilder;F)V
    .locals 0
    .param p1, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p2, "f"    # F

    #@0
    .prologue
    .line 130
    invoke-virtual {p0, p1, p2}, Ljava/lang/RealToString;->convertFloat(Ljava/lang/AbstractStringBuilder;F)Ljava/lang/String;

    #@3
    .line 129
    return-void
.end method

.method public convertFloat(Ljava/lang/AbstractStringBuilder;F)Ljava/lang/String;
    .locals 22
    .param p1, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p2, "inputNumber"    # F

    #@0
    .prologue
    .line 134
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@3
    move-result v19

    #@4
    .line 135
    .local v19, "inputNumberBits":I
    const/high16 v3, -0x80000000

    #@6
    and-int v3, v3, v19

    #@8
    if-nez v3, :cond_1

    #@a
    const/16 v20, 0x1

    #@c
    .line 136
    .local v20, "positive":Z
    :goto_0
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    #@e
    and-int v3, v3, v19

    #@10
    shr-int/lit8 v10, v3, 0x17

    #@12
    .line 137
    .local v10, "e":I
    const v3, 0x7fffff

    #@15
    and-int v17, v19, v3

    #@17
    .line 138
    .local v17, "f":I
    if-nez v17, :cond_2

    #@19
    const/4 v8, 0x1

    #@1a
    .line 140
    .local v8, "mantissaIsZero":Z
    :goto_1
    const/16 v21, 0x0

    #@1c
    .line 141
    .local v21, "quickResult":Ljava/lang/String;
    const/16 v3, 0xff

    #@1e
    if-ne v10, v3, :cond_5

    #@20
    .line 142
    if-eqz v8, :cond_4

    #@22
    .line 143
    if-eqz v20, :cond_3

    #@24
    const-string/jumbo v21, "Infinity"

    #@27
    .line 150
    .end local v21    # "quickResult":Ljava/lang/String;
    :cond_0
    :goto_2
    if-eqz v21, :cond_7

    #@29
    .line 151
    move-object/from16 v0, p1

    #@2b
    move-object/from16 v1, v21

    #@2d
    invoke-static {v0, v1}, Ljava/lang/RealToString;->resultOrSideEffect(Ljava/lang/AbstractStringBuilder;Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    return-object v3

    #@32
    .line 135
    .end local v8    # "mantissaIsZero":Z
    .end local v10    # "e":I
    .end local v17    # "f":I
    .end local v20    # "positive":Z
    :cond_1
    const/16 v20, 0x0

    #@34
    .restart local v20    # "positive":Z
    goto :goto_0

    #@35
    .line 138
    .restart local v10    # "e":I
    .restart local v17    # "f":I
    :cond_2
    const/4 v8, 0x0

    #@36
    .restart local v8    # "mantissaIsZero":Z
    goto :goto_1

    #@37
    .line 143
    .restart local v21    # "quickResult":Ljava/lang/String;
    :cond_3
    const-string/jumbo v21, "-Infinity"

    #@3a
    .local v21, "quickResult":Ljava/lang/String;
    goto :goto_2

    #@3b
    .line 145
    .local v21, "quickResult":Ljava/lang/String;
    :cond_4
    const-string/jumbo v21, "NaN"

    #@3e
    .local v21, "quickResult":Ljava/lang/String;
    goto :goto_2

    #@3f
    .line 147
    .local v21, "quickResult":Ljava/lang/String;
    :cond_5
    if-nez v10, :cond_0

    #@41
    if-eqz v8, :cond_0

    #@43
    .line 148
    if-eqz v20, :cond_6

    #@45
    const-string/jumbo v21, "0.0"

    #@48
    .local v21, "quickResult":Ljava/lang/String;
    goto :goto_2

    #@49
    .local v21, "quickResult":Ljava/lang/String;
    :cond_6
    const-string/jumbo v21, "-0.0"

    #@4c
    .local v21, "quickResult":Ljava/lang/String;
    goto :goto_2

    #@4d
    .line 156
    .end local v21    # "quickResult":Ljava/lang/String;
    :cond_7
    const/16 v9, 0x17

    #@4f
    .line 157
    .local v9, "numBits":I
    if-nez v10, :cond_9

    #@51
    .line 158
    const/16 v6, -0x95

    #@53
    .line 159
    .local v6, "pow":I
    const/16 v3, 0x8

    #@55
    move/from16 v0, v17

    #@57
    if-ge v0, v3, :cond_8

    #@59
    .line 160
    shl-int/lit8 v17, v17, 0x2

    #@5b
    .line 161
    add-int/lit8 v6, v6, -0x2

    #@5d
    .line 163
    :cond_8
    move/from16 v18, v17

    #@5f
    .line 164
    .local v18, "ff":I
    :goto_3
    const/high16 v3, 0x800000

    #@61
    and-int v3, v3, v18

    #@63
    if-nez v3, :cond_a

    #@65
    .line 165
    shl-int/lit8 v18, v18, 0x1

    #@67
    .line 166
    add-int/lit8 v9, v9, -0x1

    #@69
    goto :goto_3

    #@6a
    .line 171
    .end local v6    # "pow":I
    .end local v18    # "ff":I
    :cond_9
    const/high16 v3, 0x800000

    #@6c
    or-int v17, v17, v3

    #@6e
    .line 172
    add-int/lit16 v6, v10, -0x96

    #@70
    .line 175
    .restart local v6    # "pow":I
    :cond_a
    const/4 v3, 0x0

    #@71
    move-object/from16 v0, p0

    #@73
    iput v3, v0, Ljava/lang/RealToString;->digitCount:I

    #@75
    const/4 v3, 0x0

    #@76
    move-object/from16 v0, p0

    #@78
    iput v3, v0, Ljava/lang/RealToString;->firstK:I

    #@7a
    .line 176
    const/16 v3, -0x3b

    #@7c
    if-ge v3, v6, :cond_d

    #@7e
    const/16 v3, 0x23

    #@80
    if-ge v6, v3, :cond_d

    #@82
    .line 177
    :cond_b
    move/from16 v0, v17

    #@84
    int-to-long v4, v0

    #@85
    if-nez v10, :cond_f

    #@87
    const/4 v7, 0x1

    #@88
    :goto_4
    move-object/from16 v3, p0

    #@8a
    invoke-direct/range {v3 .. v9}, Ljava/lang/RealToString;->longDigitGenerator(JIZZI)V

    #@8d
    .line 181
    :goto_5
    if-eqz p1, :cond_11

    #@8f
    move-object/from16 v2, p1

    #@91
    .line 182
    .local v2, "dst":Ljava/lang/AbstractStringBuilder;
    :goto_6
    const v3, 0x4b189680    # 1.0E7f

    #@94
    cmpl-float v3, p2, v3

    #@96
    if-gez v3, :cond_c

    #@98
    const v3, -0x34e76980    # -1.0E7f

    #@9b
    cmpg-float v3, p2, v3

    #@9d
    if-gtz v3, :cond_12

    #@9f
    .line 184
    :cond_c
    move-object/from16 v0, p0

    #@a1
    move/from16 v1, v20

    #@a3
    invoke-direct {v0, v2, v1}, Ljava/lang/RealToString;->freeFormatExponential(Ljava/lang/AbstractStringBuilder;Z)V

    #@a6
    .line 188
    :goto_7
    if-eqz p1, :cond_14

    #@a8
    const/4 v3, 0x0

    #@a9
    :goto_8
    return-object v3

    #@aa
    .line 176
    .end local v2    # "dst":Ljava/lang/AbstractStringBuilder;
    :cond_d
    const/16 v3, -0x3b

    #@ac
    if-ne v6, v3, :cond_e

    #@ae
    if-eqz v8, :cond_b

    #@b0
    .line 179
    :cond_e
    move/from16 v0, v17

    #@b2
    int-to-long v12, v0

    #@b3
    if-nez v10, :cond_10

    #@b5
    const/4 v15, 0x1

    #@b6
    :goto_9
    move-object/from16 v11, p0

    #@b8
    move v14, v6

    #@b9
    move/from16 v16, v9

    #@bb
    invoke-direct/range {v11 .. v16}, Ljava/lang/RealToString;->bigIntDigitGenerator(JIZI)V

    #@be
    goto :goto_5

    #@bf
    .line 177
    :cond_f
    const/4 v7, 0x0

    #@c0
    goto :goto_4

    #@c1
    .line 179
    :cond_10
    const/4 v15, 0x0

    #@c2
    goto :goto_9

    #@c3
    .line 181
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    #@c5
    const/16 v3, 0x1a

    #@c7
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@ca
    .restart local v2    # "dst":Ljava/lang/AbstractStringBuilder;
    goto :goto_6

    #@cb
    .line 183
    :cond_12
    const v3, -0x457ced91    # -0.001f

    #@ce
    cmpl-float v3, p2, v3

    #@d0
    if-lez v3, :cond_13

    #@d2
    const v3, 0x3a83126f    # 0.001f

    #@d5
    cmpg-float v3, p2, v3

    #@d7
    if-ltz v3, :cond_c

    #@d9
    .line 186
    :cond_13
    move-object/from16 v0, p0

    #@db
    move/from16 v1, v20

    #@dd
    invoke-direct {v0, v2, v1}, Ljava/lang/RealToString;->freeFormat(Ljava/lang/AbstractStringBuilder;Z)V

    #@e0
    goto :goto_7

    #@e1
    .line 188
    :cond_14
    invoke-virtual {v2}, Ljava/lang/AbstractStringBuilder;->toString()Ljava/lang/String;

    #@e4
    move-result-object v3

    #@e5
    goto :goto_8
.end method

.method public doubleToString(D)Ljava/lang/String;
    .locals 1
    .param p1, "d"    # D

    #@0
    .prologue
    .line 59
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2}, Ljava/lang/RealToString;->convertDouble(Ljava/lang/AbstractStringBuilder;D)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public floatToString(F)Ljava/lang/String;
    .locals 1
    .param p1, "f"    # F

    #@0
    .prologue
    .line 126
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Ljava/lang/RealToString;->convertFloat(Ljava/lang/AbstractStringBuilder;F)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method
