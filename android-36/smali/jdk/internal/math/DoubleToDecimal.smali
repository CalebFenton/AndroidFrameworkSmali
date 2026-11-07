.class public final Ljdk/internal/math/DoubleToDecimal;
.super Ljava/lang/Object;
.source "DoubleToDecimal.java"


# static fields
.field private static final blacklist BQ_MASK:I = 0x7ff

.field private static final blacklist C_MIN:J = 0x10000000000000L

.field static final blacklist C_TINY:J = 0x3L

.field static final blacklist E_MAX:I = 0x135

.field static final blacklist E_MIN:I = -0x143

.field static final blacklist H:I = 0x11

.field static final blacklist K_MAX:I = 0x124

.field static final blacklist K_MIN:I = -0x144

.field private static final blacklist MASK_28:I = 0xfffffff

.field private static final blacklist MASK_63:J = 0x7fffffffffffffffL

.field public static final blacklist MAX_CHARS:I = 0x18

.field private static final blacklist MINUS_INF:I = 0x4

.field private static final blacklist MINUS_ZERO:I = 0x2

.field private static final blacklist NAN:I = 0x5

.field private static final blacklist NON_SPECIAL:I = 0x0

.field static final blacklist P:I = 0x35

.field private static final blacklist PLUS_INF:I = 0x3

.field private static final blacklist PLUS_ZERO:I = 0x1

.field static final blacklist Q_MAX:I = 0x3cb

.field static final blacklist Q_MIN:I = -0x432

.field private static final blacklist T_MASK:J = 0xfffffffffffffL

.field private static final blacklist W:I = 0xb


# instance fields
.field private final blacklist bytes:[B

.field private blacklist index:I


# direct methods
.method private constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "noChars"    # Z

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    if-eqz p1, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    const/16 v0, 0x18

    new-array v0, v0, [B

    :goto_b
    iput-object v0, p0, Ljdk/internal/math/DoubleToDecimal;->bytes:[B

    .line 120
    return-void
.end method

.method private blacklist append(I)V
    .registers 5
    .param p1, "c"    # I

    .line 546
    iget-object v0, p0, Ljdk/internal/math/DoubleToDecimal;->bytes:[B

    iget v1, p0, Ljdk/internal/math/DoubleToDecimal;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljdk/internal/math/DoubleToDecimal;->index:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 547
    return-void
.end method

.method private blacklist append8Digits(I)V
    .registers 6
    .param p1, "m"    # I

    .line 484
    invoke-direct {p0, p1}, Ljdk/internal/math/DoubleToDecimal;->y(I)I

    move-result v0

    .line 485
    .local v0, "y":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/16 v2, 0x8

    if-ge v1, v2, :cond_18

    .line 486
    mul-int/lit8 v2, v0, 0xa

    .line 487
    .local v2, "t":I
    ushr-int/lit8 v3, v2, 0x1c

    invoke-direct {p0, v3}, Ljdk/internal/math/DoubleToDecimal;->appendDigit(I)V

    .line 488
    const v3, 0xfffffff

    and-int v0, v2, v3

    .line 485
    .end local v2    # "t":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 490
    .end local v1    # "i":I
    :cond_18
    return-void
.end method

.method private blacklist appendDecimalTo(DLjava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 8
    .param p1, "v"    # D
    .param p3, "app"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljdk/internal/math/DoubleToDecimal;->toDecimal(DLjdk/internal/math/FormattedFPDecimal;)I

    move-result v0

    packed-switch v0, :pswitch_data_64

    .line 204
    const-string v0, "NaN"

    invoke-interface {p3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0

    .line 203
    :pswitch_f
    const-string v0, "-Infinity"

    invoke-interface {p3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0

    .line 202
    :pswitch_16
    const-string v0, "Infinity"

    invoke-interface {p3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0

    .line 201
    :pswitch_1d
    const-string v0, "-0.0"

    invoke-interface {p3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0

    .line 200
    :pswitch_24
    const-string v0, "0.0"

    invoke-interface {p3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0

    .line 186
    :pswitch_2b
    iget v0, p0, Ljdk/internal/math/DoubleToDecimal;->index:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    .line 187
    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_32
    array-length v2, v0

    if-ge v1, v2, :cond_3f

    .line 188
    iget-object v2, p0, Ljdk/internal/math/DoubleToDecimal;->bytes:[B

    aget-byte v2, v2, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 190
    .end local v1    # "i":I
    :cond_3f
    instance-of v1, p3, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4b

    move-object v1, p3

    check-cast v1, Ljava/lang/StringBuilder;

    .line 191
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v2

    return-object v2

    .line 193
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_4b
    instance-of v1, p3, Ljava/lang/StringBuffer;

    if-eqz v1, :cond_57

    move-object v1, p3

    check-cast v1, Ljava/lang/StringBuffer;

    .line 194
    .local v1, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v2

    return-object v2

    .line 196
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    :cond_57
    array-length v1, v0

    const/4 v2, 0x0

    :goto_59
    if-ge v2, v1, :cond_63

    aget-char v3, v0, v2

    .line 197
    .local v3, "c":C
    invoke-interface {p3, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 196
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 199
    :cond_63
    return-object p3

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_24
        :pswitch_1d
        :pswitch_16
        :pswitch_f
    .end packed-switch
.end method

.method private blacklist appendDigit(I)V
    .registers 5
    .param p1, "d"    # I

    .line 550
    iget-object v0, p0, Ljdk/internal/math/DoubleToDecimal;->bytes:[B

    iget v1, p0, Ljdk/internal/math/DoubleToDecimal;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljdk/internal/math/DoubleToDecimal;->index:I

    add-int/lit8 v2, p1, 0x30

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 551
    return-void
.end method

.method public static blacklist appendTo(DLjava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 5
    .param p0, "v"    # D
    .param p2, "app"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    new-instance v0, Ljdk/internal/math/DoubleToDecimal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljdk/internal/math/DoubleToDecimal;-><init>(Z)V

    invoke-direct {v0, p0, p1, p2}, Ljdk/internal/math/DoubleToDecimal;->appendDecimalTo(DLjava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist charsToString()Ljava/lang/String;
    .registers 5

    .line 556
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljdk/internal/math/DoubleToDecimal;->bytes:[B

    iget v2, p0, Ljdk/internal/math/DoubleToDecimal;->index:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Ljava/lang/String;-><init>([BIII)V

    return-object v0
.end method

.method private blacklist exponent(I)V
    .registers 5
    .param p1, "e"    # I

    .line 517
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Ljdk/internal/math/DoubleToDecimal;->append(I)V

    .line 518
    if-gez p1, :cond_d

    .line 519
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Ljdk/internal/math/DoubleToDecimal;->append(I)V

    .line 520
    neg-int p1, p1

    .line 522
    :cond_d
    const/16 v0, 0xa

    if-ge p1, v0, :cond_15

    .line 523
    invoke-direct {p0, p1}, Ljdk/internal/math/DoubleToDecimal;->appendDigit(I)V

    .line 524
    return-void

    .line 527
    :cond_15
    const/16 v1, 0x64

    if-lt p1, v1, :cond_23

    .line 532
    mul-int/lit16 v1, p1, 0x51f

    ushr-int/lit8 v1, v1, 0x11

    .line 533
    .local v1, "d":I
    invoke-direct {p0, v1}, Ljdk/internal/math/DoubleToDecimal;->appendDigit(I)V

    .line 534
    mul-int/lit8 v2, v1, 0x64

    sub-int/2addr p1, v2

    .line 540
    .end local v1    # "d":I
    :cond_23
    mul-int/lit8 v1, p1, 0x67

    ushr-int/lit8 v0, v1, 0xa

    .line 541
    .local v0, "d":I
    invoke-direct {p0, v0}, Ljdk/internal/math/DoubleToDecimal;->appendDigit(I)V

    .line 542
    mul-int/lit8 v1, v0, 0xa

    sub-int v1, p1, v1

    invoke-direct {p0, v1}, Ljdk/internal/math/DoubleToDecimal;->appendDigit(I)V

    .line 543
    return-void
.end method

.method private blacklist lowDigits(I)V
    .registers 2
    .param p1, "l"    # I

    .line 473
    if-eqz p1, :cond_5

    .line 474
    invoke-direct {p0, p1}, Ljdk/internal/math/DoubleToDecimal;->append8Digits(I)V

    .line 476
    :cond_5
    invoke-direct {p0}, Ljdk/internal/math/DoubleToDecimal;->removeTrailingZeroes()V

    .line 477
    return-void
.end method

.method private blacklist removeTrailingZeroes()V
    .registers 3

    .line 493
    nop

    :goto_1
    iget-object v0, p0, Ljdk/internal/math/DoubleToDecimal;->bytes:[B

    iget v1, p0, Ljdk/internal/math/DoubleToDecimal;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x30

    if-ne v0, v1, :cond_12

    .line 494
    iget v0, p0, Ljdk/internal/math/DoubleToDecimal;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljdk/internal/math/DoubleToDecimal;->index:I

    goto :goto_1

    .line 497
    :cond_12
    iget-object v0, p0, Ljdk/internal/math/DoubleToDecimal;->bytes:[B

    iget v1, p0, Ljdk/internal/math/DoubleToDecimal;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_22

    .line 498
    iget v0, p0, Ljdk/internal/math/DoubleToDecimal;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljdk/internal/math/DoubleToDecimal;->index:I

    .line 500
    :cond_22
    return-void
.end method

.method private static blacklist rop(JJJ)J
    .registers 25
    .param p0, "g1"    # J
    .param p2, "g0"    # J
    .param p4, "cp"    # J

    .line 360
    move-wide/from16 v0, p0

    move-wide/from16 v2, p4

    invoke-static/range {p2 .. p5}, Ljava/lang/Math;->multiplyHigh(JJ)J

    move-result-wide v4

    .line 361
    .local v4, "x1":J
    mul-long v6, v0, v2

    .line 362
    .local v6, "y0":J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->multiplyHigh(JJ)J

    move-result-wide v8

    .line 363
    .local v8, "y1":J
    const/4 v10, 0x1

    ushr-long v10, v6, v10

    add-long/2addr v10, v4

    .line 364
    .local v10, "z":J
    const/16 v12, 0x3f

    ushr-long v13, v10, v12

    add-long/2addr v13, v8

    .line 365
    .local v13, "vbp":J
    const-wide v15, 0x7fffffffffffffffL

    and-long v17, v10, v15

    add-long v17, v17, v15

    ushr-long v15, v17, v12

    or-long/2addr v15, v13

    return-wide v15
.end method

.method public static blacklist split(DLjdk/internal/math/FormattedFPDecimal;)V
    .registers 5
    .param p0, "v"    # D
    .param p2, "fd"    # Ljdk/internal/math/FormattedFPDecimal;

    .line 152
    new-instance v0, Ljdk/internal/math/DoubleToDecimal;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljdk/internal/math/DoubleToDecimal;-><init>(Z)V

    invoke-direct {v0, p0, p1, p2}, Ljdk/internal/math/DoubleToDecimal;->toDecimal(DLjdk/internal/math/FormattedFPDecimal;)I

    .line 153
    return-void
.end method

.method private blacklist toChars(JILjdk/internal/math/FormattedFPDecimal;)I
    .registers 12
    .param p1, "f"    # J
    .param p3, "e"    # I
    .param p4, "fd"    # Ljdk/internal/math/FormattedFPDecimal;

    .line 378
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    invoke-static {v0}, Ljdk/internal/math/MathUtils;->flog10pow2(I)I

    move-result v0

    .line 379
    .local v0, "len":I
    invoke-static {v0}, Ljdk/internal/math/MathUtils;->pow10(I)J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-ltz v1, :cond_14

    .line 380
    add-int/lit8 v0, v0, 0x1

    .line 382
    :cond_14
    if-eqz p4, :cond_1b

    .line 383
    invoke-virtual {p4, p1, p2, p3, v0}, Ljdk/internal/math/FormattedFPDecimal;->set(JII)V

    .line 384
    const/4 v1, 0x0

    return v1

    .line 393
    :cond_1b
    rsub-int/lit8 v1, v0, 0x11

    invoke-static {v1}, Ljdk/internal/math/MathUtils;->pow10(I)J

    move-result-wide v1

    mul-long/2addr p1, v1

    .line 394
    add-int/2addr p3, v0

    .line 410
    const-wide v1, 0x2af31dc4611873cL    # 9.53972865917246E-296

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->multiplyHigh(JJ)J

    move-result-wide v1

    const/16 v3, 0x14

    ushr-long/2addr v1, v3

    .line 411
    .local v1, "hm":J
    const-wide/32 v3, 0x5f5e100

    mul-long/2addr v3, v1

    sub-long v3, p1, v3

    long-to-int v3, v3

    .line 412
    .local v3, "l":I
    const-wide/32 v4, 0x55e63b89

    mul-long/2addr v4, v1

    const/16 v6, 0x39

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    .line 413
    .local v4, "h":I
    const v5, 0x5f5e100

    mul-int/2addr v5, v4

    int-to-long v5, v5

    sub-long v5, v1, v5

    long-to-int v5, v5

    .line 415
    .local v5, "m":I
    if-lez p3, :cond_50

    const/4 v6, 0x7

    if-gt p3, v6, :cond_50

    .line 416
    invoke-direct {p0, v4, v5, v3, p3}, Ljdk/internal/math/DoubleToDecimal;->toChars1(IIII)I

    move-result v6

    return v6

    .line 418
    :cond_50
    const/4 v6, -0x3

    if-ge v6, p3, :cond_5a

    if-gtz p3, :cond_5a

    .line 419
    invoke-direct {p0, v4, v5, v3, p3}, Ljdk/internal/math/DoubleToDecimal;->toChars2(IIII)I

    move-result v6

    return v6

    .line 421
    :cond_5a
    invoke-direct {p0, v4, v5, v3, p3}, Ljdk/internal/math/DoubleToDecimal;->toChars3(IIII)I

    move-result v6

    return v6
.end method

.method private blacklist toChars1(IIII)I
    .registers 10
    .param p1, "h"    # I
    .param p2, "m"    # I
    .param p3, "l"    # I
    .param p4, "e"    # I

    .line 430
    invoke-direct {p0, p1}, Ljdk/internal/math/DoubleToDecimal;->appendDigit(I)V

    .line 431
    invoke-direct {p0, p2}, Ljdk/internal/math/DoubleToDecimal;->y(I)I

    move-result v0

    .line 433
    .local v0, "y":I
    const/4 v1, 0x1

    .line 434
    .local v1, "i":I
    :goto_8
    const v2, 0xfffffff

    if-ge v1, p4, :cond_19

    .line 435
    mul-int/lit8 v3, v0, 0xa

    .line 436
    .local v3, "t":I
    ushr-int/lit8 v4, v3, 0x1c

    invoke-direct {p0, v4}, Ljdk/internal/math/DoubleToDecimal;->appendDigit(I)V

    .line 437
    and-int v0, v3, v2

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 439
    .end local v3    # "t":I
    :cond_19
    const/16 v3, 0x2e

    invoke-direct {p0, v3}, Ljdk/internal/math/DoubleToDecimal;->append(I)V

    .line 440
    :goto_1e
    const/16 v3, 0x8

    if-gt v1, v3, :cond_2e

    .line 441
    mul-int/lit8 v3, v0, 0xa

    .line 442
    .restart local v3    # "t":I
    ushr-int/lit8 v4, v3, 0x1c

    invoke-direct {p0, v4}, Ljdk/internal/math/DoubleToDecimal;->appendDigit(I)V

    .line 443
    and-int v0, v3, v2

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 445
    .end local v3    # "t":I
    :cond_2e
    invoke-direct {p0, p3}, Ljdk/internal/math/DoubleToDecimal;->lowDigits(I)V

    .line 446
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist toChars2(IIII)I
    .registers 7
    .param p1, "h"    # I
    .param p2, "m"    # I
    .param p3, "l"    # I
    .param p4, "e"    # I

    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljdk/internal/math/DoubleToDecimal;->appendDigit(I)V

    .line 452
    const/16 v1, 0x2e

    invoke-direct {p0, v1}, Ljdk/internal/math/DoubleToDecimal;->append(I)V

    .line 453
    :goto_9
    if-gez p4, :cond_11

    .line 454
    invoke-direct {p0, v0}, Ljdk/internal/math/DoubleToDecimal;->appendDigit(I)V

    .line 453
    add-int/lit8 p4, p4, 0x1

    goto :goto_9

    .line 456
    :cond_11
    invoke-direct {p0, p1}, Ljdk/internal/math/DoubleToDecimal;->appendDigit(I)V

    .line 457
    invoke-direct {p0, p2}, Ljdk/internal/math/DoubleToDecimal;->append8Digits(I)V

    .line 458
    invoke-direct {p0, p3}, Ljdk/internal/math/DoubleToDecimal;->lowDigits(I)V

    .line 459
    return v0
.end method

.method private blacklist toChars3(IIII)I
    .registers 6
    .param p1, "h"    # I
    .param p2, "m"    # I
    .param p3, "l"    # I
    .param p4, "e"    # I

    .line 464
    invoke-direct {p0, p1}, Ljdk/internal/math/DoubleToDecimal;->appendDigit(I)V

    .line 465
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Ljdk/internal/math/DoubleToDecimal;->append(I)V

    .line 466
    invoke-direct {p0, p2}, Ljdk/internal/math/DoubleToDecimal;->append8Digits(I)V

    .line 467
    invoke-direct {p0, p3}, Ljdk/internal/math/DoubleToDecimal;->lowDigits(I)V

    .line 468
    add-int/lit8 v0, p4, -0x1

    invoke-direct {p0, v0}, Ljdk/internal/math/DoubleToDecimal;->exponent(I)V

    .line 469
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist toDecimal(DLjdk/internal/math/FormattedFPDecimal;)I
    .registers 20
    .param p1, "v"    # D
    .param p3, "fd"    # Ljdk/internal/math/FormattedFPDecimal;

    .line 226
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    .line 227
    .local v6, "bits":J
    const-wide v1, 0xfffffffffffffL

    and-long v8, v6, v1

    .line 228
    .local v8, "t":J
    const/16 v1, 0x34

    ushr-long v1, v6, v1

    long-to-int v1, v1

    const/16 v2, 0x7ff

    and-int/lit16 v10, v1, 0x7ff

    .line 229
    .local v10, "bq":I
    const-wide/16 v3, 0x0

    if-ge v10, v2, :cond_86

    .line 230
    const/4 v1, -0x1

    iput v1, v0, Ljdk/internal/math/DoubleToDecimal;->index:I

    .line 231
    cmp-long v1, v6, v3

    if-gez v1, :cond_26

    .line 236
    const/16 v1, 0x2d

    invoke-direct {v0, v1}, Ljdk/internal/math/DoubleToDecimal;->append(I)V

    .line 238
    :cond_26
    const/4 v1, 0x1

    if-eqz v10, :cond_58

    .line 240
    rsub-int v11, v10, 0x433

    .line 241
    .local v11, "mq":I
    const-wide/high16 v2, 0x10000000000000L

    or-long/2addr v2, v8

    .line 243
    .local v2, "c":J
    const/4 v4, 0x0

    if-lez v11, :cond_33

    move v5, v1

    goto :goto_34

    :cond_33
    move v5, v4

    :goto_34
    const/16 v12, 0x35

    if-ge v11, v12, :cond_39

    goto :goto_3a

    :cond_39
    move v1, v4

    :goto_3a
    and-int/2addr v1, v5

    if-eqz v1, :cond_4f

    .line 244
    shr-long v12, v2, v11

    .line 245
    .local v12, "f":J
    shl-long v14, v12, v11

    cmp-long v1, v14, v2

    if-nez v1, :cond_4c

    .line 246
    move-object/from16 v5, p3

    invoke-direct {v0, v12, v13, v4, v5}, Ljdk/internal/math/DoubleToDecimal;->toChars(JILjdk/internal/math/FormattedFPDecimal;)I

    move-result v1

    return v1

    .line 245
    :cond_4c
    move-object/from16 v5, p3

    goto :goto_51

    .line 243
    .end local v12    # "f":J
    :cond_4f
    move-object/from16 v5, p3

    .line 249
    :goto_51
    neg-int v1, v11

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Ljdk/internal/math/DoubleToDecimal;->toDecimal(IJILjdk/internal/math/FormattedFPDecimal;)I

    move-result v1

    return v1

    .line 251
    .end local v2    # "c":J
    .end local v11    # "mq":I
    :cond_58
    cmp-long v0, v8, v3

    if-eqz v0, :cond_7f

    .line 253
    const-wide/16 v0, 0x3

    cmp-long v0, v8, v0

    if-gez v0, :cond_72

    .line 254
    const-wide/16 v0, 0xa

    mul-long v2, v8, v0

    const/4 v4, -0x1

    const/16 v1, -0x432

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Ljdk/internal/math/DoubleToDecimal;->toDecimal(IJILjdk/internal/math/FormattedFPDecimal;)I

    move-result v1

    goto :goto_7e

    .line 255
    :cond_72
    const/16 v1, -0x432

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    move-wide v2, v8

    .end local v8    # "t":J
    .local v2, "t":J
    invoke-direct/range {v0 .. v5}, Ljdk/internal/math/DoubleToDecimal;->toDecimal(IJILjdk/internal/math/FormattedFPDecimal;)I

    move-result v1

    .line 253
    .end local v2    # "t":J
    .restart local v8    # "t":J
    :goto_7e
    return v1

    .line 257
    :cond_7f
    cmp-long v0, v6, v3

    if-nez v0, :cond_84

    goto :goto_85

    :cond_84
    const/4 v1, 0x2

    :goto_85
    return v1

    .line 259
    :cond_86
    cmp-long v0, v8, v3

    if-eqz v0, :cond_8c

    .line 260
    const/4 v0, 0x5

    return v0

    .line 262
    :cond_8c
    cmp-long v0, v6, v3

    if-lez v0, :cond_92

    const/4 v0, 0x3

    goto :goto_93

    :cond_92
    const/4 v0, 0x4

    :goto_93
    return v0
.end method

.method private blacklist toDecimal(IJILjdk/internal/math/FormattedFPDecimal;)I
    .registers 44
    .param p1, "q"    # I
    .param p2, "c"    # J
    .param p4, "dk"    # I
    .param p5, "fd"    # Ljdk/internal/math/FormattedFPDecimal;

    .line 283
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p5

    long-to-int v5, v2

    const/4 v6, 0x1

    and-int/2addr v5, v6

    .line 284
    .local v5, "out":I
    const/4 v7, 0x2

    shl-long v8, v2, v7

    .line 285
    .local v8, "cb":J
    const-wide/16 v10, 0x2

    add-long v12, v8, v10

    .line 293
    .local v12, "cbr":J
    const-wide/high16 v14, 0x10000000000000L

    cmp-long v14, v2, v14

    const/4 v15, 0x0

    if-eqz v14, :cond_1b

    move v14, v6

    goto :goto_1c

    :cond_1b
    move v14, v15

    :goto_1c
    move/from16 v16, v6

    const/16 v6, -0x432

    if-ne v1, v6, :cond_25

    move/from16 v6, v16

    goto :goto_26

    :cond_25
    move v6, v15

    :goto_26
    or-int/2addr v6, v14

    const-wide/16 v17, 0x1

    if-eqz v6, :cond_32

    .line 295
    sub-long v10, v8, v10

    .line 296
    .local v10, "cbl":J
    invoke-static {v1}, Ljdk/internal/math/MathUtils;->flog10pow2(I)I

    move-result v6

    .local v6, "k":I
    goto :goto_38

    .line 299
    .end local v6    # "k":I
    .end local v10    # "cbl":J
    :cond_32
    sub-long v10, v8, v17

    .line 300
    .restart local v10    # "cbl":J
    invoke-static {v1}, Ljdk/internal/math/MathUtils;->flog10threeQuartersPow2(I)I

    move-result v6

    .line 302
    .restart local v6    # "k":I
    :goto_38
    neg-int v14, v6

    invoke-static {v14}, Ljdk/internal/math/MathUtils;->flog2pow10(I)I

    move-result v14

    add-int/2addr v14, v1

    add-int/2addr v14, v7

    .line 305
    .local v14, "h":I
    invoke-static {v6}, Ljdk/internal/math/MathUtils;->g1(I)J

    move-result-wide v19

    .line 306
    .local v19, "g1":J
    invoke-static {v6}, Ljdk/internal/math/MathUtils;->g0(I)J

    move-result-wide v21

    .line 308
    .local v21, "g0":J
    shl-long v23, v8, v14

    invoke-static/range {v19 .. v24}, Ljdk/internal/math/DoubleToDecimal;->rop(JJJ)J

    move-result-wide v25

    .line 309
    .local v25, "vb":J
    shl-long v23, v10, v14

    invoke-static/range {v19 .. v24}, Ljdk/internal/math/DoubleToDecimal;->rop(JJJ)J

    move-result-wide v27

    .line 310
    .local v27, "vbl":J
    shl-long v23, v12, v14

    invoke-static/range {v19 .. v24}, Ljdk/internal/math/DoubleToDecimal;->rop(JJJ)J

    move-result-wide v23

    .line 312
    .local v23, "vbr":J
    move/from16 v29, v7

    move-wide/from16 v30, v8

    .end local v8    # "cb":J
    .local v30, "cb":J
    shr-long v7, v25, v29

    .line 313
    .local v7, "s":J
    const-wide/16 v32, 0x64

    cmp-long v9, v7, v32

    if-ltz v9, :cond_a4

    .line 325
    const-wide v1, 0x19999999999999a0L

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->multiplyHigh(JJ)J

    move-result-wide v1

    const-wide/16 v32, 0xa

    mul-long v1, v1, v32

    .line 326
    .local v1, "sp10":J
    add-long v32, v1, v32

    .line 327
    .local v32, "tp10":J
    move-wide/from16 v34, v1

    .end local v1    # "sp10":J
    .local v34, "sp10":J
    int-to-long v1, v5

    add-long v1, v27, v1

    shl-long v36, v34, v29

    cmp-long v1, v1, v36

    if-gtz v1, :cond_82

    move/from16 v1, v16

    goto :goto_83

    :cond_82
    move v1, v15

    .line 328
    .local v1, "upin":Z
    :goto_83
    shl-long v2, v32, v29

    move-wide/from16 v36, v2

    int-to-long v2, v5

    add-long v2, v36, v2

    cmp-long v2, v2, v23

    if-gtz v2, :cond_91

    move/from16 v2, v16

    goto :goto_92

    :cond_91
    move v2, v15

    .line 329
    .local v2, "wpin":Z
    :goto_92
    if-eq v1, v2, :cond_a2

    .line 330
    move v3, v1

    move v9, v2

    if-eqz v1, :cond_9b

    move-wide/from16 v1, v34

    goto :goto_9d

    :cond_9b
    move-wide/from16 v1, v32

    .end local v1    # "upin":Z
    .end local v2    # "wpin":Z
    .local v3, "upin":Z
    .local v9, "wpin":Z
    :goto_9d
    invoke-direct {v0, v1, v2, v6, v4}, Ljdk/internal/math/DoubleToDecimal;->toChars(JILjdk/internal/math/FormattedFPDecimal;)I

    move-result v1

    return v1

    .line 329
    .end local v3    # "upin":Z
    .end local v9    # "wpin":Z
    .restart local v1    # "upin":Z
    .restart local v2    # "wpin":Z
    :cond_a2
    move v3, v1

    move v9, v2

    .line 340
    .end local v1    # "upin":Z
    .end local v2    # "wpin":Z
    .end local v32    # "tp10":J
    .end local v34    # "sp10":J
    :cond_a4
    add-long v1, v7, v17

    .line 341
    .local v1, "t":J
    move-wide/from16 v32, v1

    .end local v1    # "t":J
    .local v32, "t":J
    int-to-long v1, v5

    add-long v1, v27, v1

    shl-long v34, v7, v29

    cmp-long v1, v1, v34

    if-gtz v1, :cond_b4

    move/from16 v1, v16

    goto :goto_b5

    :cond_b4
    move v1, v15

    .line 342
    .local v1, "uin":Z
    :goto_b5
    shl-long v2, v32, v29

    move-wide/from16 v34, v2

    int-to-long v2, v5

    add-long v2, v34, v2

    cmp-long v2, v2, v23

    if-gtz v2, :cond_c2

    move/from16 v15, v16

    .line 343
    .local v15, "win":Z
    :cond_c2
    if-eq v1, v15, :cond_d1

    .line 345
    if-eqz v1, :cond_c8

    move-wide v2, v7

    goto :goto_ca

    :cond_c8
    move-wide/from16 v2, v32

    :goto_ca
    add-int v9, v6, p4

    invoke-direct {v0, v2, v3, v9, v4}, Ljdk/internal/math/DoubleToDecimal;->toChars(JILjdk/internal/math/FormattedFPDecimal;)I

    move-result v2

    return v2

    .line 351
    :cond_d1
    add-long v2, v7, v32

    shl-long v2, v2, v16

    sub-long v2, v25, v2

    .line 352
    .local v2, "cmp":J
    const-wide/16 v34, 0x0

    cmp-long v9, v2, v34

    if-ltz v9, :cond_ee

    cmp-long v9, v2, v34

    if-nez v9, :cond_e8

    and-long v16, v7, v17

    cmp-long v9, v16, v34

    if-nez v9, :cond_e8

    goto :goto_ee

    :cond_e8
    move v9, v1

    move-wide/from16 v16, v2

    move-wide/from16 v1, v32

    goto :goto_f2

    :cond_ee
    :goto_ee
    move v9, v1

    move-wide/from16 v16, v2

    move-wide v1, v7

    .end local v1    # "uin":Z
    .end local v2    # "cmp":J
    .local v9, "uin":Z
    .local v16, "cmp":J
    :goto_f2
    add-int v3, v6, p4

    invoke-direct {v0, v1, v2, v3, v4}, Ljdk/internal/math/DoubleToDecimal;->toChars(JILjdk/internal/math/FormattedFPDecimal;)I

    move-result v1

    return v1
.end method

.method private blacklist toDecimalString(D)Ljava/lang/String;
    .registers 4
    .param p1, "v"    # D

    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljdk/internal/math/DoubleToDecimal;->toDecimal(DLjdk/internal/math/FormattedFPDecimal;)I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 178
    const-string v0, "NaN"

    goto :goto_1b

    .line 177
    :pswitch_b
    const-string v0, "-Infinity"

    goto :goto_1b

    .line 176
    :pswitch_e
    const-string v0, "Infinity"

    goto :goto_1b

    .line 175
    :pswitch_11
    const-string v0, "-0.0"

    goto :goto_1b

    .line 174
    :pswitch_14
    const-string v0, "0.0"

    goto :goto_1b

    .line 173
    :pswitch_17
    invoke-direct {p0}, Ljdk/internal/math/DoubleToDecimal;->charsToString()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_1b
    return-object v0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public static blacklist toString(D)Ljava/lang/String;
    .registers 4
    .param p0, "v"    # D

    .line 131
    new-instance v0, Ljdk/internal/math/DoubleToDecimal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljdk/internal/math/DoubleToDecimal;-><init>(Z)V

    invoke-direct {v0, p0, p1}, Ljdk/internal/math/DoubleToDecimal;->toDecimalString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist y(I)I
    .registers 6
    .param p1, "a"    # I

    .line 511
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
