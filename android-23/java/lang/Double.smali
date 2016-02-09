.class public final Ljava/lang/Double;
.super Ljava/lang/Number;
.source "Double.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field static final EXPONENT_BIAS:I = 0x3ff

.field static final EXPONENT_BITS:I = 0xc

.field static final EXPONENT_MASK:J = 0x7ff0000000000000L

.field static final MANTISSA_BITS:I = 0x34

.field static final MANTISSA_MASK:J = 0xfffffffffffffL

.field public static final MAX_EXPONENT:I = 0x3ff

.field public static final MAX_VALUE:D = 1.7976931348623157E308

.field public static final MIN_EXPONENT:I = -0x3fe

.field public static final MIN_NORMAL:D = 2.2250738585072014E-308

.field public static final MIN_VALUE:D = 4.9E-324

.field public static final NEGATIVE_INFINITY:D = -Infinity

.field static final NON_MANTISSA_BITS:I = 0xc

.field public static final NaN:D = NaN

.field public static final POSITIVE_INFINITY:D = Infinity

.field static final SIGN_MASK:J = -0x8000000000000000L

.field public static final SIZE:I = 0x40

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x7f4c3db5d69404fcL


# instance fields
.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 103
    const-class v0, [D

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    .line 102
    sput-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@8
    .line 26
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 123
    iput-wide p1, p0, Ljava/lang/Double;->value:D

    #@5
    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 136
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    #@7
    .line 135
    return-void
.end method

.method public static compare(DD)I
    .locals 10
    .param p0, "double1"    # D
    .param p2, "double2"    # D

    #@0
    .prologue
    const/16 v9, 0x3f

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    const/4 v6, -0x1

    #@5
    .line 359
    cmpl-double v4, p0, p2

    #@7
    if-lez v4, :cond_0

    #@9
    .line 360
    return v8

    #@a
    .line 362
    :cond_0
    cmpl-double v4, p2, p0

    #@c
    if-lez v4, :cond_1

    #@e
    .line 363
    return v6

    #@f
    .line 365
    :cond_1
    cmpl-double v4, p0, p2

    #@11
    if-nez v4, :cond_2

    #@13
    const-wide/16 v4, 0x0

    #@15
    cmpl-double v4, v4, p0

    #@17
    if-eqz v4, :cond_2

    #@19
    .line 366
    return v7

    #@1a
    .line 370
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_4

    #@20
    .line 371
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_3

    #@26
    .line 372
    return v7

    #@27
    .line 374
    :cond_3
    return v8

    #@28
    .line 375
    :cond_4
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_5

    #@2e
    .line 376
    return v6

    #@2f
    .line 380
    :cond_5
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@32
    move-result-wide v0

    #@33
    .line 381
    .local v0, "d1":J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@36
    move-result-wide v2

    #@37
    .line 384
    .local v2, "d2":J
    shr-long v4, v0, v9

    #@39
    shr-long v6, v2, v9

    #@3b
    sub-long/2addr v4, v6

    #@3c
    long-to-int v4, v4

    #@3d
    return v4
.end method

.method public static doubleToLongBits(D)J
    .locals 2
    .param p0, "value"    # D

    #@0
    .prologue
    .line 175
    cmpl-double v0, p0, p0

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 176
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@6
    return-wide v0

    #@7
    .line 178
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method

.method public static native doubleToRawLongBits(D)J
.end method

.method public static isInfinite(D)Z
    .locals 4
    .param p0, "d"    # D

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 254
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@3
    cmpl-double v1, p0, v2

    #@5
    if-eqz v1, :cond_0

    #@7
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@9
    cmpl-double v1, p0, v2

    #@b
    if-nez v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public static isNaN(D)Z
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 277
    cmpl-double v0, p0, p0

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public static native longBitsToDouble(J)D
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 301
    invoke-static {p0}, Ljava/lang/StringToReal;->parseDouble(Ljava/lang/String;)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static toHexString(D)Ljava/lang/String;
    .locals 16
    .param p0, "d"    # D

    #@0
    .prologue
    .line 411
    cmpl-double v12, p0, p0

    #@2
    if-eqz v12, :cond_0

    #@4
    .line 412
    const-string/jumbo v12, "NaN"

    #@7
    return-object v12

    #@8
    .line 414
    :cond_0
    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@a
    cmpl-double v12, p0, v12

    #@c
    if-nez v12, :cond_1

    #@e
    .line 415
    const-string/jumbo v12, "Infinity"

    #@11
    return-object v12

    #@12
    .line 417
    :cond_1
    const-wide/high16 v12, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@14
    cmpl-double v12, p0, v12

    #@16
    if-nez v12, :cond_2

    #@18
    .line 418
    const-string/jumbo v12, "-Infinity"

    #@1b
    return-object v12

    #@1c
    .line 421
    :cond_2
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@1f
    move-result-wide v0

    #@20
    .line 423
    .local v0, "bitValue":J
    const-wide/high16 v12, -0x8000000000000000L

    #@22
    and-long/2addr v12, v0

    #@23
    const-wide/16 v14, 0x0

    #@25
    cmp-long v12, v12, v14

    #@27
    if-eqz v12, :cond_3

    #@29
    const/4 v9, 0x1

    #@2a
    .line 425
    .local v9, "negative":Z
    :goto_0
    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@2c
    and-long/2addr v12, v0

    #@2d
    const/16 v14, 0x34

    #@2f
    ushr-long v4, v12, v14

    #@31
    .line 427
    .local v4, "exponent":J
    const-wide v12, 0xfffffffffffffL

    #@36
    and-long v10, v0, v12

    #@38
    .line 429
    .local v10, "significand":J
    const-wide/16 v12, 0x0

    #@3a
    cmp-long v12, v4, v12

    #@3c
    if-nez v12, :cond_5

    #@3e
    const-wide/16 v12, 0x0

    #@40
    cmp-long v12, v10, v12

    #@42
    if-nez v12, :cond_5

    #@44
    .line 430
    if-eqz v9, :cond_4

    #@46
    const-string/jumbo v12, "-0x0.0p0"

    #@49
    :goto_1
    return-object v12

    #@4a
    .line 423
    .end local v4    # "exponent":J
    .end local v9    # "negative":Z
    .end local v10    # "significand":J
    :cond_3
    const/4 v9, 0x0

    #@4b
    .restart local v9    # "negative":Z
    goto :goto_0

    #@4c
    .line 430
    .restart local v4    # "exponent":J
    .restart local v10    # "significand":J
    :cond_4
    const-string/jumbo v12, "0x0.0p0"

    #@4f
    goto :goto_1

    #@50
    .line 433
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    #@52
    const/16 v12, 0xa

    #@54
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    #@57
    .line 434
    .local v8, "hexString":Ljava/lang/StringBuilder;
    if-eqz v9, :cond_6

    #@59
    .line 435
    const-string/jumbo v12, "-0x"

    #@5c
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    .line 440
    :goto_2
    const-wide/16 v12, 0x0

    #@61
    cmp-long v12, v4, v12

    #@63
    if-nez v12, :cond_9

    #@65
    .line 441
    const-string/jumbo v12, "0."

    #@68
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    .line 443
    const/16 v6, 0xd

    #@6d
    .line 446
    .local v6, "fractionDigits":I
    :goto_3
    const-wide/16 v12, 0x0

    #@6f
    cmp-long v12, v10, v12

    #@71
    if-eqz v12, :cond_7

    #@73
    const-wide/16 v12, 0xf

    #@75
    and-long/2addr v12, v10

    #@76
    const-wide/16 v14, 0x0

    #@78
    cmp-long v12, v12, v14

    #@7a
    if-nez v12, :cond_7

    #@7c
    .line 447
    const/4 v12, 0x4

    #@7d
    ushr-long/2addr v10, v12

    #@7e
    .line 448
    add-int/lit8 v6, v6, -0x1

    #@80
    goto :goto_3

    #@81
    .line 437
    .end local v6    # "fractionDigits":I
    :cond_6
    const-string/jumbo v12, "0x"

    #@84
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    goto :goto_2

    #@88
    .line 451
    .restart local v6    # "fractionDigits":I
    :cond_7
    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@8b
    move-result-object v7

    #@8c
    .line 454
    .local v7, "hexSignificand":Ljava/lang/String;
    const-wide/16 v12, 0x0

    #@8e
    cmp-long v12, v10, v12

    #@90
    if-eqz v12, :cond_8

    #@92
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@95
    move-result v12

    #@96
    if-le v6, v12, :cond_8

    #@98
    .line 455
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@9b
    move-result v12

    #@9c
    sub-int v2, v6, v12

    #@9e
    .local v2, "digitDiff":I
    move v3, v2

    #@9f
    .line 456
    .end local v2    # "digitDiff":I
    .local v3, "digitDiff":I
    :goto_4
    add-int/lit8 v2, v3, -0x1

    #@a1
    .end local v3    # "digitDiff":I
    .restart local v2    # "digitDiff":I
    if-eqz v3, :cond_8

    #@a3
    .line 457
    const/16 v12, 0x30

    #@a5
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a8
    move v3, v2

    #@a9
    .end local v2    # "digitDiff":I
    .restart local v3    # "digitDiff":I
    goto :goto_4

    #@aa
    .line 460
    .end local v3    # "digitDiff":I
    :cond_8
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    .line 461
    const-string/jumbo v12, "p-1022"

    #@b0
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    .line 488
    :goto_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v12

    #@b7
    return-object v12

    #@b8
    .line 463
    .end local v6    # "fractionDigits":I
    .end local v7    # "hexSignificand":Ljava/lang/String;
    :cond_9
    const-string/jumbo v12, "1."

    #@bb
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    .line 465
    const/16 v6, 0xd

    #@c0
    .line 468
    .restart local v6    # "fractionDigits":I
    :goto_6
    const-wide/16 v12, 0x0

    #@c2
    cmp-long v12, v10, v12

    #@c4
    if-eqz v12, :cond_a

    #@c6
    const-wide/16 v12, 0xf

    #@c8
    and-long/2addr v12, v10

    #@c9
    const-wide/16 v14, 0x0

    #@cb
    cmp-long v12, v12, v14

    #@cd
    if-nez v12, :cond_a

    #@cf
    .line 469
    const/4 v12, 0x4

    #@d0
    ushr-long/2addr v10, v12

    #@d1
    .line 470
    add-int/lit8 v6, v6, -0x1

    #@d3
    goto :goto_6

    #@d4
    .line 473
    :cond_a
    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@d7
    move-result-object v7

    #@d8
    .line 476
    .restart local v7    # "hexSignificand":Ljava/lang/String;
    const-wide/16 v12, 0x0

    #@da
    cmp-long v12, v10, v12

    #@dc
    if-eqz v12, :cond_b

    #@de
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@e1
    move-result v12

    #@e2
    if-le v6, v12, :cond_b

    #@e4
    .line 477
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@e7
    move-result v12

    #@e8
    sub-int v2, v6, v12

    #@ea
    .restart local v2    # "digitDiff":I
    move v3, v2

    #@eb
    .line 478
    .end local v2    # "digitDiff":I
    .restart local v3    # "digitDiff":I
    :goto_7
    add-int/lit8 v2, v3, -0x1

    #@ed
    .end local v3    # "digitDiff":I
    .restart local v2    # "digitDiff":I
    if-eqz v3, :cond_b

    #@ef
    .line 479
    const/16 v12, 0x30

    #@f1
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f4
    move v3, v2

    #@f5
    .end local v2    # "digitDiff":I
    .restart local v3    # "digitDiff":I
    goto :goto_7

    #@f6
    .line 483
    .end local v3    # "digitDiff":I
    :cond_b
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    .line 484
    const/16 v12, 0x70

    #@fb
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@fe
    .line 486
    const-wide/16 v12, 0x3ff

    #@100
    sub-long v12, v4, v12

    #@102
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@105
    move-result-object v12

    #@106
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    goto :goto_5
.end method

.method public static toString(D)Ljava/lang/String;
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 323
    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1}, Ljava/lang/RealToString;->doubleToString(D)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static valueOf(D)Ljava/lang/Double;
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 396
    new-instance v0, Ljava/lang/Double;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/lang/Double;-><init>(D)V

    #@5
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 338
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 2

    #@0
    .prologue
    .line 165
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    #@2
    double-to-int v0, v0

    #@3
    int-to-byte v0, v0

    #@4
    return v0
.end method

.method public compareTo(Ljava/lang/Double;)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Double;

    #@0
    .prologue
    .line 160
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    #@2
    iget-wide v2, p1, Ljava/lang/Double;->value:D

    #@4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 159
    check-cast p1, Ljava/lang/Double;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public doubleValue()D
    .locals 2

    #@0
    .prologue
    .line 197
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    #@2
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 215
    instance-of v1, p1, Ljava/lang/Double;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 216
    iget-wide v2, p0, Ljava/lang/Double;->value:D

    #@7
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@a
    move-result-wide v2

    #@b
    check-cast p1, Ljava/lang/Double;

    #@d
    .end local p1    # "object":Ljava/lang/Object;
    iget-wide v4, p1, Ljava/lang/Double;->value:D

    #@f
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@12
    move-result-wide v4

    #@13
    cmp-long v1, v2, v4

    #@15
    if-nez v1, :cond_0

    #@17
    const/4 v0, 0x1

    #@18
    .line 215
    :cond_0
    return v0
.end method

.method public floatValue()F
    .locals 2

    #@0
    .prologue
    .line 221
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    #@2
    double-to-float v0, v0

    #@3
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 226
    iget-wide v2, p0, Ljava/lang/Double;->value:D

    #@2
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@5
    move-result-wide v0

    #@6
    .line 227
    .local v0, "v":J
    const/16 v2, 0x20

    #@8
    ushr-long v2, v0, v2

    #@a
    xor-long/2addr v2, v0

    #@b
    long-to-int v2, v2

    #@c
    return v2
.end method

.method public intValue()I
    .locals 2

    #@0
    .prologue
    .line 232
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    #@2
    double-to-int v0, v0

    #@3
    return v0
.end method

.method public isInfinite()Z
    .locals 2

    #@0
    .prologue
    .line 242
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    #@2
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isNaN()Z
    .locals 2

    #@0
    .prologue
    .line 264
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    #@2
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public longValue()J
    .locals 2

    #@0
    .prologue
    .line 288
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    #@2
    double-to-long v0, v0

    #@3
    return-wide v0
.end method

.method public shortValue()S
    .locals 2

    #@0
    .prologue
    .line 306
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    #@2
    double-to-int v0, v0

    #@3
    int-to-short v0, v0

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 311
    iget-wide v0, p0, Ljava/lang/Double;->value:D

    #@2
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
