.class public final Ljdk/internal/math/FloatToDecimal;
.super Ljava/lang/Object;
.source "FloatToDecimal.java"


# static fields
.field private static final blacklist BQ_MASK:I = 0xff

.field private static final blacklist C_MIN:I = 0x800000

.field static final blacklist C_TINY:I = 0x8

.field static final blacklist E_MAX:I = 0x27

.field static final blacklist E_MIN:I = -0x2c

.field static final blacklist H:I = 0x9

.field static final blacklist K_MAX:I = 0x1f

.field static final blacklist K_MIN:I = -0x2d

.field private static final blacklist MASK_28:I = 0xfffffff

.field private static final blacklist MASK_32:J = 0xffffffffL

.field public static final blacklist MAX_CHARS:I = 0xf

.field private static final blacklist MINUS_INF:I = 0x4

.field private static final blacklist MINUS_ZERO:I = 0x2

.field private static final blacklist NAN:I = 0x5

.field private static final blacklist NON_SPECIAL:I = 0x0

.field static final blacklist P:I = 0x18

.field private static final blacklist PLUS_INF:I = 0x3

.field private static final blacklist PLUS_ZERO:I = 0x1

.field static final blacklist Q_MAX:I = 0x68

.field static final blacklist Q_MIN:I = -0x95

.field private static final blacklist T_MASK:I = 0x7fffff

.field private static final blacklist W:I = 0x8


# instance fields
.field private final blacklist bytes:[B

.field private blacklist index:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/16 v0, 0xf

    new-array v0, v0, [B

    iput-object v0, p0, Ljdk/internal/math/FloatToDecimal;->bytes:[B

    .line 119
    return-void
.end method

.method private blacklist append(I)V
    .registers 5
    .param p1, "c"    # I

    .line 489
    iget-object v0, p0, Ljdk/internal/math/FloatToDecimal;->bytes:[B

    iget v1, p0, Ljdk/internal/math/FloatToDecimal;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljdk/internal/math/FloatToDecimal;->index:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 490
    return-void
.end method

.method private blacklist append8Digits(I)V
    .registers 6
    .param p1, "m"    # I

    .line 437
    invoke-direct {p0, p1}, Ljdk/internal/math/FloatToDecimal;->y(I)I

    move-result v0

    .line 438
    .local v0, "y":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/16 v2, 0x8

    if-ge v1, v2, :cond_18

    .line 439
    mul-int/lit8 v2, v0, 0xa

    .line 440
    .local v2, "t":I
    ushr-int/lit8 v3, v2, 0x1c

    invoke-direct {p0, v3}, Ljdk/internal/math/FloatToDecimal;->appendDigit(I)V

    .line 441
    const v3, 0xfffffff

    and-int v0, v2, v3

    .line 438
    .end local v2    # "t":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 443
    .end local v1    # "i":I
    :cond_18
    return-void
.end method

.method private blacklist appendDecimalTo(FLjava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 7
    .param p1, "v"    # F
    .param p2, "app"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1}, Ljdk/internal/math/FloatToDecimal;->toDecimal(F)I

    move-result v0

    packed-switch v0, :pswitch_data_64

    .line 182
    const-string v0, "NaN"

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0

    .line 181
    :pswitch_e
    const-string v0, "-Infinity"

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0

    .line 180
    :pswitch_15
    const-string v0, "Infinity"

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0

    .line 179
    :pswitch_1c
    const-string v0, "-0.0"

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0

    .line 178
    :pswitch_23
    const-string v0, "0.0"

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0

    .line 164
    :pswitch_2a
    iget v0, p0, Ljdk/internal/math/FloatToDecimal;->index:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    .line 165
    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_31
    array-length v2, v0

    if-ge v1, v2, :cond_3e

    .line 166
    iget-object v2, p0, Ljdk/internal/math/FloatToDecimal;->bytes:[B

    aget-byte v2, v2, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 168
    .end local v1    # "i":I
    :cond_3e
    instance-of v1, p2, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4a

    move-object v1, p2

    check-cast v1, Ljava/lang/StringBuilder;

    .line 169
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v2

    return-object v2

    .line 171
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_4a
    instance-of v1, p2, Ljava/lang/StringBuffer;

    if-eqz v1, :cond_56

    move-object v1, p2

    check-cast v1, Ljava/lang/StringBuffer;

    .line 172
    .local v1, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v2

    return-object v2

    .line 174
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    :cond_56
    array-length v1, v0

    const/4 v2, 0x0

    :goto_58
    if-ge v2, v1, :cond_62

    aget-char v3, v0, v2

    .line 175
    .local v3, "c":C
    invoke-interface {p2, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 174
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 177
    :cond_62
    return-object p2

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_23
        :pswitch_1c
        :pswitch_15
        :pswitch_e
    .end packed-switch
.end method

.method private blacklist appendDigit(I)V
    .registers 5
    .param p1, "d"    # I

    .line 493
    iget-object v0, p0, Ljdk/internal/math/FloatToDecimal;->bytes:[B

    iget v1, p0, Ljdk/internal/math/FloatToDecimal;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljdk/internal/math/FloatToDecimal;->index:I

    add-int/lit8 v2, p1, 0x30

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 494
    return-void
.end method

.method public static blacklist appendTo(FLjava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 3
    .param p0, "v"    # F
    .param p1, "app"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    new-instance v0, Ljdk/internal/math/FloatToDecimal;

    invoke-direct {v0}, Ljdk/internal/math/FloatToDecimal;-><init>()V

    invoke-direct {v0, p0, p1}, Ljdk/internal/math/FloatToDecimal;->appendDecimalTo(FLjava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist charsToString()Ljava/lang/String;
    .registers 5

    .line 499
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljdk/internal/math/FloatToDecimal;->bytes:[B

    iget v2, p0, Ljdk/internal/math/FloatToDecimal;->index:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Ljava/lang/String;-><init>([BIII)V

    return-object v0
.end method

.method private blacklist exponent(I)V
    .registers 4
    .param p1, "e"    # I

    .line 470
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Ljdk/internal/math/FloatToDecimal;->append(I)V

    .line 471
    if-gez p1, :cond_d

    .line 472
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Ljdk/internal/math/FloatToDecimal;->append(I)V

    .line 473
    neg-int p1, p1

    .line 475
    :cond_d
    const/16 v0, 0xa

    if-ge p1, v0, :cond_15

    .line 476
    invoke-direct {p0, p1}, Ljdk/internal/math/FloatToDecimal;->appendDigit(I)V

    .line 477
    return-void

    .line 483
    :cond_15
    mul-int/lit8 v1, p1, 0x67

    ushr-int/lit8 v0, v1, 0xa

    .line 484
    .local v0, "d":I
    invoke-direct {p0, v0}, Ljdk/internal/math/FloatToDecimal;->appendDigit(I)V

    .line 485
    mul-int/lit8 v1, v0, 0xa

    sub-int v1, p1, v1

    invoke-direct {p0, v1}, Ljdk/internal/math/FloatToDecimal;->appendDigit(I)V

    .line 486
    return-void
.end method

.method private blacklist removeTrailingZeroes()V
    .registers 3

    .line 446
    nop

    :goto_1
    iget-object v0, p0, Ljdk/internal/math/FloatToDecimal;->bytes:[B

    iget v1, p0, Ljdk/internal/math/FloatToDecimal;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x30

    if-ne v0, v1, :cond_12

    .line 447
    iget v0, p0, Ljdk/internal/math/FloatToDecimal;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljdk/internal/math/FloatToDecimal;->index:I

    goto :goto_1

    .line 450
    :cond_12
    iget-object v0, p0, Ljdk/internal/math/FloatToDecimal;->bytes:[B

    iget v1, p0, Ljdk/internal/math/FloatToDecimal;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_22

    .line 451
    iget v0, p0, Ljdk/internal/math/FloatToDecimal;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljdk/internal/math/FloatToDecimal;->index:I

    .line 453
    :cond_22
    return-void
.end method

.method private static blacklist rop(JJ)I
    .registers 12
    .param p0, "g"    # J
    .param p2, "cp"    # J

    .line 333
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->multiplyHigh(JJ)J

    move-result-wide v0

    .line 334
    .local v0, "x1":J
    const/16 v2, 0x1f

    ushr-long v2, v0, v2

    .line 335
    .local v2, "vbp":J
    const-wide v4, 0xffffffffL

    and-long v6, v0, v4

    add-long/2addr v6, v4

    const/16 v4, 0x20

    ushr-long v4, v6, v4

    or-long/2addr v4, v2

    long-to-int v4, v4

    return v4
.end method

.method private blacklist toChars(II)I
    .registers 8
    .param p1, "f"    # I
    .param p2, "e"    # I

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    invoke-static {v0}, Ljdk/internal/math/MathUtils;->flog10pow2(I)I

    move-result v0

    .line 349
    .local v0, "len":I
    int-to-long v1, p1

    invoke-static {v0}, Ljdk/internal/math/MathUtils;->pow10(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_15

    .line 350
    add-int/lit8 v0, v0, 0x1

    .line 359
    :cond_15
    rsub-int/lit8 v1, v0, 0x9

    invoke-static {v1}, Ljdk/internal/math/MathUtils;->pow10(I)J

    move-result-wide v1

    long-to-int v1, v1

    mul-int/2addr p1, v1

    .line 360
    add-int/2addr p2, v0

    .line 372
    int-to-long v1, p1

    const-wide/32 v3, 0x55e63b89

    mul-long/2addr v1, v3

    const/16 v3, 0x39

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    .line 373
    .local v1, "h":I
    const v2, 0x5f5e100

    mul-int/2addr v2, v1

    sub-int v2, p1, v2

    .line 375
    .local v2, "l":I
    if-lez p2, :cond_37

    const/4 v3, 0x7

    if-gt p2, v3, :cond_37

    .line 376
    invoke-direct {p0, v1, v2, p2}, Ljdk/internal/math/FloatToDecimal;->toChars1(III)I

    move-result v3

    return v3

    .line 378
    :cond_37
    const/4 v3, -0x3

    if-ge v3, p2, :cond_41

    if-gtz p2, :cond_41

    .line 379
    invoke-direct {p0, v1, v2, p2}, Ljdk/internal/math/FloatToDecimal;->toChars2(III)I

    move-result v3

    return v3

    .line 381
    :cond_41
    invoke-direct {p0, v1, v2, p2}, Ljdk/internal/math/FloatToDecimal;->toChars3(III)I

    move-result v3

    return v3
.end method

.method private blacklist toChars1(III)I
    .registers 9
    .param p1, "h"    # I
    .param p2, "l"    # I
    .param p3, "e"    # I

    .line 390
    invoke-direct {p0, p1}, Ljdk/internal/math/FloatToDecimal;->appendDigit(I)V

    .line 391
    invoke-direct {p0, p2}, Ljdk/internal/math/FloatToDecimal;->y(I)I

    move-result v0

    .line 393
    .local v0, "y":I
    const/4 v1, 0x1

    .line 394
    .local v1, "i":I
    :goto_8
    const v2, 0xfffffff

    if-ge v1, p3, :cond_19

    .line 395
    mul-int/lit8 v3, v0, 0xa

    .line 396
    .local v3, "t":I
    ushr-int/lit8 v4, v3, 0x1c

    invoke-direct {p0, v4}, Ljdk/internal/math/FloatToDecimal;->appendDigit(I)V

    .line 397
    and-int v0, v3, v2

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 399
    .end local v3    # "t":I
    :cond_19
    const/16 v3, 0x2e

    invoke-direct {p0, v3}, Ljdk/internal/math/FloatToDecimal;->append(I)V

    .line 400
    :goto_1e
    const/16 v3, 0x8

    if-gt v1, v3, :cond_2e

    .line 401
    mul-int/lit8 v3, v0, 0xa

    .line 402
    .restart local v3    # "t":I
    ushr-int/lit8 v4, v3, 0x1c

    invoke-direct {p0, v4}, Ljdk/internal/math/FloatToDecimal;->appendDigit(I)V

    .line 403
    and-int v0, v3, v2

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 405
    .end local v3    # "t":I
    :cond_2e
    invoke-direct {p0}, Ljdk/internal/math/FloatToDecimal;->removeTrailingZeroes()V

    .line 406
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist toChars2(III)I
    .registers 6
    .param p1, "h"    # I
    .param p2, "l"    # I
    .param p3, "e"    # I

    .line 411
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljdk/internal/math/FloatToDecimal;->appendDigit(I)V

    .line 412
    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Ljdk/internal/math/FloatToDecimal;->append(I)V

    .line 413
    :goto_9
    if-gez p3, :cond_11

    .line 414
    invoke-direct {p0, v0}, Ljdk/internal/math/FloatToDecimal;->appendDigit(I)V

    .line 413
    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    .line 416
    :cond_11
    invoke-direct {p0, p1}, Ljdk/internal/math/FloatToDecimal;->appendDigit(I)V

    .line 417
    invoke-direct {p0, p2}, Ljdk/internal/math/FloatToDecimal;->append8Digits(I)V

    .line 418
    invoke-direct {p0}, Ljdk/internal/math/FloatToDecimal;->removeTrailingZeroes()V

    .line 419
    return v0
.end method

.method private blacklist toChars3(III)I
    .registers 5
    .param p1, "h"    # I
    .param p2, "l"    # I
    .param p3, "e"    # I

    .line 424
    invoke-direct {p0, p1}, Ljdk/internal/math/FloatToDecimal;->appendDigit(I)V

    .line 425
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Ljdk/internal/math/FloatToDecimal;->append(I)V

    .line 426
    invoke-direct {p0, p2}, Ljdk/internal/math/FloatToDecimal;->append8Digits(I)V

    .line 427
    invoke-direct {p0}, Ljdk/internal/math/FloatToDecimal;->removeTrailingZeroes()V

    .line 428
    add-int/lit8 v0, p3, -0x1

    invoke-direct {p0, v0}, Ljdk/internal/math/FloatToDecimal;->exponent(I)V

    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist toDecimal(F)I
    .registers 11
    .param p1, "v"    # F

    .line 204
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 205
    .local v0, "bits":I
    const v1, 0x7fffff

    and-int/2addr v1, v0

    .line 206
    .local v1, "t":I
    ushr-int/lit8 v2, v0, 0x17

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 207
    .local v2, "bq":I
    if-ge v2, v3, :cond_5a

    .line 208
    const/4 v3, -0x1

    iput v3, p0, Ljdk/internal/math/FloatToDecimal;->index:I

    .line 209
    if-gez v0, :cond_19

    .line 210
    const/16 v4, 0x2d

    invoke-direct {p0, v4}, Ljdk/internal/math/FloatToDecimal;->append(I)V

    .line 212
    :cond_19
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_41

    .line 214
    rsub-int v3, v2, 0x96

    .line 215
    .local v3, "mq":I
    const/high16 v6, 0x800000

    or-int/2addr v6, v1

    .line 217
    .local v6, "c":I
    if-lez v3, :cond_26

    move v7, v4

    goto :goto_27

    :cond_26
    move v7, v5

    :goto_27
    const/16 v8, 0x18

    if-ge v3, v8, :cond_2c

    goto :goto_2d

    :cond_2c
    move v4, v5

    :goto_2d
    and-int/2addr v4, v7

    if-eqz v4, :cond_3b

    .line 218
    shr-int v4, v6, v3

    .line 219
    .local v4, "f":I
    shl-int v7, v4, v3

    if-ne v7, v6, :cond_3b

    .line 220
    invoke-direct {p0, v4, v5}, Ljdk/internal/math/FloatToDecimal;->toChars(II)I

    move-result v5

    return v5

    .line 223
    .end local v4    # "f":I
    :cond_3b
    neg-int v4, v3

    invoke-direct {p0, v4, v6, v5}, Ljdk/internal/math/FloatToDecimal;->toDecimal(III)I

    move-result v4

    return v4

    .line 225
    .end local v3    # "mq":I
    .end local v6    # "c":I
    :cond_41
    if-eqz v1, :cond_55

    .line 227
    const/16 v4, 0x8

    const/16 v6, -0x95

    if-ge v1, v4, :cond_50

    .line 228
    mul-int/lit8 v4, v1, 0xa

    invoke-direct {p0, v6, v4, v3}, Ljdk/internal/math/FloatToDecimal;->toDecimal(III)I

    move-result v3

    goto :goto_54

    .line 229
    :cond_50
    invoke-direct {p0, v6, v1, v5}, Ljdk/internal/math/FloatToDecimal;->toDecimal(III)I

    move-result v3

    .line 227
    :goto_54
    return v3

    .line 231
    :cond_55
    if-nez v0, :cond_58

    goto :goto_59

    :cond_58
    const/4 v4, 0x2

    :goto_59
    return v4

    .line 233
    :cond_5a
    if-eqz v1, :cond_5e

    .line 234
    const/4 v3, 0x5

    return v3

    .line 236
    :cond_5e
    if-lez v0, :cond_62

    const/4 v3, 0x3

    goto :goto_63

    :cond_62
    const/4 v3, 0x4

    :goto_63
    return v3
.end method

.method private blacklist toDecimal(III)I
    .registers 27
    .param p1, "q"    # I
    .param p2, "c"    # I
    .param p3, "dk"    # I

    .line 258
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    and-int/lit8 v3, v2, 0x1

    .line 259
    .local v3, "out":I
    shl-int/lit8 v4, v2, 0x2

    int-to-long v4, v4

    .line 260
    .local v4, "cb":J
    const-wide/16 v6, 0x2

    add-long v8, v4, v6

    .line 268
    .local v8, "cbr":J
    const/high16 v10, 0x800000

    if-eq v2, v10, :cond_15

    const/4 v10, 0x1

    goto :goto_16

    :cond_15
    const/4 v10, 0x0

    :goto_16
    const/16 v13, -0x95

    if-ne v1, v13, :cond_1c

    const/4 v13, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v13, 0x0

    :goto_1d
    or-int/2addr v10, v13

    const-wide/16 v13, 0x1

    if-eqz v10, :cond_29

    .line 270
    sub-long v6, v4, v6

    .line 271
    .local v6, "cbl":J
    invoke-static {v1}, Ljdk/internal/math/MathUtils;->flog10pow2(I)I

    move-result v10

    .local v10, "k":I
    goto :goto_2f

    .line 274
    .end local v6    # "cbl":J
    .end local v10    # "k":I
    :cond_29
    sub-long v6, v4, v13

    .line 275
    .restart local v6    # "cbl":J
    invoke-static {v1}, Ljdk/internal/math/MathUtils;->flog10threeQuartersPow2(I)I

    move-result v10

    .line 277
    .restart local v10    # "k":I
    :goto_2f
    neg-int v15, v10

    invoke-static {v15}, Ljdk/internal/math/MathUtils;->flog2pow10(I)I

    move-result v15

    add-int/2addr v15, v1

    add-int/lit8 v15, v15, 0x21

    .line 280
    .local v15, "h":I
    invoke-static {v10}, Ljdk/internal/math/MathUtils;->g1(I)J

    move-result-wide v16

    add-long v13, v16, v13

    .line 282
    .local v13, "g":J
    const/16 v17, 0x1

    shl-long v11, v4, v15

    invoke-static {v13, v14, v11, v12}, Ljdk/internal/math/FloatToDecimal;->rop(JJ)I

    move-result v11

    .line 283
    .local v11, "vb":I
    shl-long v1, v6, v15

    invoke-static {v13, v14, v1, v2}, Ljdk/internal/math/FloatToDecimal;->rop(JJ)I

    move-result v1

    .line 284
    .local v1, "vbl":I
    move v12, v1

    .end local v1    # "vbl":I
    .local v12, "vbl":I
    shl-long v1, v8, v15

    invoke-static {v13, v14, v1, v2}, Ljdk/internal/math/FloatToDecimal;->rop(JJ)I

    move-result v1

    .line 286
    .local v1, "vbr":I
    shr-int/lit8 v2, v11, 0x2

    .line 287
    .local v2, "s":I
    move/from16 v18, v3

    .end local v3    # "out":I
    .local v18, "out":I
    const/16 v3, 0x64

    if-lt v2, v3, :cond_91

    .line 298
    move-wide/from16 v19, v4

    .end local v4    # "cb":J
    .local v19, "cb":J
    int-to-long v3, v2

    const-wide/32 v21, 0x66666667

    mul-long v3, v3, v21

    const/16 v5, 0x22

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    mul-int/lit8 v3, v3, 0xa

    .line 299
    .local v3, "sp10":I
    add-int/lit8 v4, v3, 0xa

    .line 300
    .local v4, "tp10":I
    add-int v5, v12, v18

    move/from16 v21, v2

    .end local v2    # "s":I
    .local v21, "s":I
    shl-int/lit8 v2, v3, 0x2

    if-gt v5, v2, :cond_75

    move/from16 v2, v17

    goto :goto_76

    :cond_75
    const/4 v2, 0x0

    .line 301
    .local v2, "upin":Z
    :goto_76
    shl-int/lit8 v5, v4, 0x2

    add-int v5, v5, v18

    if-gt v5, v1, :cond_7f

    move/from16 v5, v17

    goto :goto_80

    :cond_7f
    const/4 v5, 0x0

    .line 302
    .local v5, "wpin":Z
    :goto_80
    if-eq v2, v5, :cond_8e

    .line 303
    move/from16 v22, v2

    if-eqz v2, :cond_88

    move v2, v3

    goto :goto_89

    :cond_88
    move v2, v4

    .end local v2    # "upin":Z
    .local v22, "upin":Z
    :goto_89
    invoke-direct {v0, v2, v10}, Ljdk/internal/math/FloatToDecimal;->toChars(II)I

    move-result v2

    return v2

    .line 302
    .end local v22    # "upin":Z
    .restart local v2    # "upin":Z
    :cond_8e
    move/from16 v22, v2

    .end local v2    # "upin":Z
    .restart local v22    # "upin":Z
    goto :goto_95

    .line 287
    .end local v3    # "sp10":I
    .end local v5    # "wpin":Z
    .end local v19    # "cb":J
    .end local v21    # "s":I
    .end local v22    # "upin":Z
    .local v2, "s":I
    .local v4, "cb":J
    :cond_91
    move/from16 v21, v2

    move-wide/from16 v19, v4

    .line 313
    .end local v2    # "s":I
    .end local v4    # "cb":J
    .restart local v19    # "cb":J
    .restart local v21    # "s":I
    :goto_95
    add-int/lit8 v2, v21, 0x1

    .line 314
    .local v2, "t":I
    add-int v3, v12, v18

    shl-int/lit8 v4, v21, 0x2

    if-gt v3, v4, :cond_a0

    move/from16 v3, v17

    goto :goto_a1

    :cond_a0
    const/4 v3, 0x0

    .line 315
    .local v3, "uin":Z
    :goto_a1
    shl-int/lit8 v4, v2, 0x2

    add-int v4, v4, v18

    if-gt v4, v1, :cond_aa

    move/from16 v16, v17

    goto :goto_ac

    :cond_aa
    const/16 v16, 0x0

    :goto_ac
    move/from16 v4, v16

    .line 316
    .local v4, "win":Z
    if-eq v3, v4, :cond_bf

    .line 318
    if-eqz v3, :cond_b5

    move/from16 v5, v21

    goto :goto_b6

    :cond_b5
    move v5, v2

    :goto_b6
    move/from16 v16, v1

    .end local v1    # "vbr":I
    .local v16, "vbr":I
    add-int v1, v10, p3

    invoke-direct {v0, v5, v1}, Ljdk/internal/math/FloatToDecimal;->toChars(II)I

    move-result v1

    return v1

    .line 324
    .end local v16    # "vbr":I
    .restart local v1    # "vbr":I
    :cond_bf
    move/from16 v16, v1

    .end local v1    # "vbr":I
    .restart local v16    # "vbr":I
    add-int v1, v21, v2

    shl-int/lit8 v1, v1, 0x1

    sub-int v1, v11, v1

    .line 325
    .local v1, "cmp":I
    if-ltz v1, :cond_d2

    if-nez v1, :cond_d0

    and-int/lit8 v5, v21, 0x1

    if-nez v5, :cond_d0

    goto :goto_d2

    :cond_d0
    move v5, v2

    goto :goto_d4

    :cond_d2
    :goto_d2
    move/from16 v5, v21

    :goto_d4
    move/from16 v17, v1

    .end local v1    # "cmp":I
    .local v17, "cmp":I
    add-int v1, v10, p3

    invoke-direct {v0, v5, v1}, Ljdk/internal/math/FloatToDecimal;->toChars(II)I

    move-result v1

    return v1
.end method

.method private blacklist toDecimalString(F)Ljava/lang/String;
    .registers 3
    .param p1, "v"    # F

    .line 150
    invoke-direct {p0, p1}, Ljdk/internal/math/FloatToDecimal;->toDecimal(F)I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 156
    const-string v0, "NaN"

    goto :goto_1a

    .line 155
    :pswitch_a
    const-string v0, "-Infinity"

    goto :goto_1a

    .line 154
    :pswitch_d
    const-string v0, "Infinity"

    goto :goto_1a

    .line 153
    :pswitch_10
    const-string v0, "-0.0"

    goto :goto_1a

    .line 152
    :pswitch_13
    const-string v0, "0.0"

    goto :goto_1a

    .line 151
    :pswitch_16
    invoke-direct {p0}, Ljdk/internal/math/FloatToDecimal;->charsToString()Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_1a
    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method public static blacklist toString(F)Ljava/lang/String;
    .registers 2
    .param p0, "v"    # F

    .line 130
    new-instance v0, Ljdk/internal/math/FloatToDecimal;

    invoke-direct {v0}, Ljdk/internal/math/FloatToDecimal;-><init>()V

    invoke-direct {v0, p0}, Ljdk/internal/math/FloatToDecimal;->toDecimalString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist y(I)I
    .registers 6
    .param p1, "a"    # I

    .line 464
    add-int/lit8 v0, p1, 0x1

    int-to-long v0, v0

    const/16 v2, 0x1c

    shl-long/2addr v0, v2

    const-wide v2, 0x2af31dc4611873cL    # 9.53972865917246E-296

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->multiplyHigh(JJ)J

    move-result-wide v0

    const/16 v2, 0x14

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
