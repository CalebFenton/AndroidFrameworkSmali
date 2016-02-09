.class public final Ljava/lang/Float;
.super Ljava/lang/Number;
.source "Float.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field static final EXPONENT_BIAS:I = 0x7f

.field static final EXPONENT_BITS:I = 0x9

.field static final EXPONENT_MASK:I = 0x7f800000

.field static final MANTISSA_BITS:I = 0x17

.field static final MANTISSA_MASK:I = 0x7fffff

.field public static final MAX_EXPONENT:I = 0x7f

.field public static final MAX_VALUE:F = 3.4028235E38f

.field public static final MIN_EXPONENT:I = -0x7e

.field public static final MIN_NORMAL:F = 1.17549435E-38f

.field public static final MIN_VALUE:F = 1.4E-45f

.field public static final NEGATIVE_INFINITY:F = -Infinityf

.field static final NON_MANTISSA_BITS:I = 0x9

.field public static final NaN:F = NaNf

.field public static final POSITIVE_INFINITY:F = Infinityf

.field static final SIGN_MASK:I = -0x80000000

.field public static final SIZE:I = 0x20

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2512365d24c30f14L


# instance fields
.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 100
    const-class v0, [F

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    .line 99
    sput-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@8
    .line 26
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    #@0
    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 129
    double-to-float v0, p1

    #@4
    iput v0, p0, Ljava/lang/Float;->value:F

    #@6
    .line 128
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "value"    # F

    #@0
    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 119
    iput p1, p0, Ljava/lang/Float;->value:F

    #@5
    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/Float;-><init>(F)V

    #@7
    .line 141
    return-void
.end method

.method public static compare(FF)I
    .locals 6
    .param p0, "float1"    # F
    .param p1, "float2"    # F

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, -0x1

    #@3
    .line 365
    cmpl-float v2, p0, p1

    #@5
    if-lez v2, :cond_0

    #@7
    .line 366
    return v5

    #@8
    .line 368
    :cond_0
    cmpl-float v2, p1, p0

    #@a
    if-lez v2, :cond_1

    #@c
    .line 369
    return v3

    #@d
    .line 371
    :cond_1
    cmpl-float v2, p0, p1

    #@f
    if-nez v2, :cond_2

    #@11
    const/4 v2, 0x0

    #@12
    cmpl-float v2, v2, p0

    #@14
    if-eqz v2, :cond_2

    #@16
    .line 372
    return v4

    #@17
    .line 376
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_4

    #@1d
    .line 377
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_3

    #@23
    .line 378
    return v4

    #@24
    .line 380
    :cond_3
    return v5

    #@25
    .line 381
    :cond_4
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_5

    #@2b
    .line 382
    return v3

    #@2c
    .line 386
    :cond_5
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@2f
    move-result v0

    #@30
    .line 387
    .local v0, "f1":I
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@33
    move-result v1

    #@34
    .line 391
    .local v1, "f2":I
    shr-int/lit8 v2, v0, 0x1f

    #@36
    shr-int/lit8 v3, v1, 0x1f

    #@38
    sub-int/2addr v2, v3

    #@39
    return v2
.end method

.method public static floatToIntBits(F)I
    .locals 1
    .param p0, "value"    # F

    #@0
    .prologue
    .line 203
    cmpl-float v0, p0, p0

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 204
    const/high16 v0, 0x7fc00000    # NaNf

    #@6
    return v0

    #@7
    .line 206
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public static native floatToRawIntBits(F)I
.end method

.method public static native intBitsToFloat(I)F
.end method

.method public static isInfinite(F)Z
    .locals 2
    .param p0, "f"    # F

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 263
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    #@3
    cmpl-float v1, p0, v1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    #@9
    cmpl-float v1, p0, v1

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

.method public static isNaN(F)Z
    .locals 1
    .param p0, "f"    # F

    #@0
    .prologue
    .line 286
    cmpl-float v0, p0, p0

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

.method public static parseFloat(Ljava/lang/String;)F
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 306
    invoke-static {p0}, Ljava/lang/StringToReal;->parseFloat(Ljava/lang/String;)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static toHexString(F)Ljava/lang/String;
    .locals 11
    .param p0, "f"    # F

    #@0
    .prologue
    const/16 v10, 0x30

    #@2
    .line 418
    cmpl-float v9, p0, p0

    #@4
    if-eqz v9, :cond_0

    #@6
    .line 419
    const-string/jumbo v9, "NaN"

    #@9
    return-object v9

    #@a
    .line 421
    :cond_0
    const/high16 v9, 0x7f800000    # Float.POSITIVE_INFINITY

    #@c
    cmpl-float v9, p0, v9

    #@e
    if-nez v9, :cond_1

    #@10
    .line 422
    const-string/jumbo v9, "Infinity"

    #@13
    return-object v9

    #@14
    .line 424
    :cond_1
    const/high16 v9, -0x800000    # Float.NEGATIVE_INFINITY

    #@16
    cmpl-float v9, p0, v9

    #@18
    if-nez v9, :cond_2

    #@1a
    .line 425
    const-string/jumbo v9, "-Infinity"

    #@1d
    return-object v9

    #@1e
    .line 428
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@21
    move-result v0

    #@22
    .line 430
    .local v0, "bitValue":I
    const/high16 v9, -0x80000000

    #@24
    and-int/2addr v9, v0

    #@25
    if-eqz v9, :cond_3

    #@27
    const/4 v7, 0x1

    #@28
    .line 432
    .local v7, "negative":Z
    :goto_0
    const/high16 v9, 0x7f800000    # Float.POSITIVE_INFINITY

    #@2a
    and-int/2addr v9, v0

    #@2b
    ushr-int/lit8 v3, v9, 0x17

    #@2d
    .line 435
    .local v3, "exponent":I
    const v9, 0x7fffff

    #@30
    and-int/2addr v9, v0

    #@31
    shl-int/lit8 v8, v9, 0x1

    #@33
    .line 437
    .local v8, "significand":I
    if-nez v3, :cond_5

    #@35
    if-nez v8, :cond_5

    #@37
    .line 438
    if-eqz v7, :cond_4

    #@39
    const-string/jumbo v9, "-0x0.0p0"

    #@3c
    :goto_1
    return-object v9

    #@3d
    .line 430
    .end local v3    # "exponent":I
    .end local v7    # "negative":Z
    .end local v8    # "significand":I
    :cond_3
    const/4 v7, 0x0

    #@3e
    .restart local v7    # "negative":Z
    goto :goto_0

    #@3f
    .line 438
    .restart local v3    # "exponent":I
    .restart local v8    # "significand":I
    :cond_4
    const-string/jumbo v9, "0x0.0p0"

    #@42
    goto :goto_1

    #@43
    .line 441
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    #@45
    const/16 v9, 0xa

    #@47
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    #@4a
    .line 442
    .local v6, "hexString":Ljava/lang/StringBuilder;
    if-eqz v7, :cond_6

    #@4c
    .line 443
    const-string/jumbo v9, "-0x"

    #@4f
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 448
    :goto_2
    if-nez v3, :cond_9

    #@54
    .line 449
    const-string/jumbo v9, "0."

    #@57
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    .line 451
    const/4 v4, 0x6

    #@5b
    .line 454
    .local v4, "fractionDigits":I
    :goto_3
    if-eqz v8, :cond_7

    #@5d
    and-int/lit8 v9, v8, 0xf

    #@5f
    if-nez v9, :cond_7

    #@61
    .line 455
    ushr-int/lit8 v8, v8, 0x4

    #@63
    .line 456
    add-int/lit8 v4, v4, -0x1

    #@65
    goto :goto_3

    #@66
    .line 445
    .end local v4    # "fractionDigits":I
    :cond_6
    const-string/jumbo v9, "0x"

    #@69
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    goto :goto_2

    #@6d
    .line 459
    .restart local v4    # "fractionDigits":I
    :cond_7
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    .line 462
    .local v5, "hexSignificand":Ljava/lang/String;
    if-eqz v8, :cond_8

    #@73
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@76
    move-result v9

    #@77
    if-le v4, v9, :cond_8

    #@79
    .line 463
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@7c
    move-result v9

    #@7d
    sub-int v1, v4, v9

    #@7f
    .local v1, "digitDiff":I
    move v2, v1

    #@80
    .line 464
    .end local v1    # "digitDiff":I
    .local v2, "digitDiff":I
    :goto_4
    add-int/lit8 v1, v2, -0x1

    #@82
    .end local v2    # "digitDiff":I
    .restart local v1    # "digitDiff":I
    if-eqz v2, :cond_8

    #@84
    .line 465
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@87
    move v2, v1

    #@88
    .end local v1    # "digitDiff":I
    .restart local v2    # "digitDiff":I
    goto :goto_4

    #@89
    .line 468
    .end local v2    # "digitDiff":I
    :cond_8
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    .line 469
    const-string/jumbo v9, "p-126"

    #@8f
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    .line 495
    :goto_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v9

    #@96
    return-object v9

    #@97
    .line 471
    .end local v4    # "fractionDigits":I
    .end local v5    # "hexSignificand":Ljava/lang/String;
    :cond_9
    const-string/jumbo v9, "1."

    #@9a
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    .line 473
    const/4 v4, 0x6

    #@9e
    .line 476
    .restart local v4    # "fractionDigits":I
    :goto_6
    if-eqz v8, :cond_a

    #@a0
    and-int/lit8 v9, v8, 0xf

    #@a2
    if-nez v9, :cond_a

    #@a4
    .line 477
    ushr-int/lit8 v8, v8, 0x4

    #@a6
    .line 478
    add-int/lit8 v4, v4, -0x1

    #@a8
    goto :goto_6

    #@a9
    .line 481
    :cond_a
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@ac
    move-result-object v5

    #@ad
    .line 484
    .restart local v5    # "hexSignificand":Ljava/lang/String;
    if-eqz v8, :cond_b

    #@af
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@b2
    move-result v9

    #@b3
    if-le v4, v9, :cond_b

    #@b5
    .line 485
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@b8
    move-result v9

    #@b9
    sub-int v1, v4, v9

    #@bb
    .restart local v1    # "digitDiff":I
    move v2, v1

    #@bc
    .line 486
    .end local v1    # "digitDiff":I
    .restart local v2    # "digitDiff":I
    :goto_7
    add-int/lit8 v1, v2, -0x1

    #@be
    .end local v2    # "digitDiff":I
    .restart local v1    # "digitDiff":I
    if-eqz v2, :cond_b

    #@c0
    .line 487
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c3
    move v2, v1

    #@c4
    .end local v1    # "digitDiff":I
    .restart local v2    # "digitDiff":I
    goto :goto_7

    #@c5
    .line 490
    .end local v2    # "digitDiff":I
    :cond_b
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    .line 491
    const/16 v9, 0x70

    #@ca
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@cd
    .line 493
    add-int/lit8 v9, v3, -0x7f

    #@cf
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d2
    goto :goto_5
.end method

.method public static toString(F)Ljava/lang/String;
    .locals 1
    .param p0, "f"    # F

    #@0
    .prologue
    .line 328
    invoke-static {}, Ljava/lang/RealToString;->getInstance()Ljava/lang/RealToString;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Ljava/lang/RealToString;->floatToString(F)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static valueOf(F)Ljava/lang/Float;
    .locals 1
    .param p0, "f"    # F

    #@0
    .prologue
    .line 403
    new-instance v0, Ljava/lang/Float;

    #@2
    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    #@5
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 343
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    #@0
    .prologue
    .line 169
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    float-to-int v0, v0

    #@3
    int-to-byte v0, v0

    #@4
    return v0
.end method

.method public compareTo(Ljava/lang/Float;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Float;

    #@0
    .prologue
    .line 164
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    iget v1, p1, Ljava/lang/Float;->value:F

    #@4
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

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
    .line 163
    check-cast p1, Ljava/lang/Float;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public doubleValue()D
    .locals 2

    #@0
    .prologue
    .line 174
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    float-to-double v0, v0

    #@3
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 192
    instance-of v1, p1, Ljava/lang/Float;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 193
    iget v1, p0, Ljava/lang/Float;->value:F

    #@7
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@a
    move-result v1

    #@b
    check-cast p1, Ljava/lang/Float;

    #@d
    .end local p1    # "object":Ljava/lang/Object;
    iget v2, p1, Ljava/lang/Float;->value:F

    #@f
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@12
    move-result v2

    #@13
    if-ne v1, v2, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    .line 192
    :cond_0
    return v0
.end method

.method public floatValue()F
    .locals 1

    #@0
    .prologue
    .line 225
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 230
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public intValue()I
    .locals 1

    #@0
    .prologue
    .line 241
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    float-to-int v0, v0

    #@3
    return v0
.end method

.method public isInfinite()Z
    .locals 1

    #@0
    .prologue
    .line 251
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isNaN()Z
    .locals 1

    #@0
    .prologue
    .line 273
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public longValue()J
    .locals 2

    #@0
    .prologue
    .line 291
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    float-to-long v0, v0

    #@3
    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    #@0
    .prologue
    .line 311
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    float-to-int v0, v0

    #@3
    int-to-short v0, v0

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 316
    iget v0, p0, Ljava/lang/Float;->value:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
