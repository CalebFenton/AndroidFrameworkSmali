.class public final Landroid/icu/impl/BMPSet;
.super Ljava/lang/Object;
.source "BMPSet.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field public static blacklist U16_SURROGATE_OFFSET:I


# instance fields
.field private greylist-max-o bmpBlockBits:[I

.field private greylist-max-o latin1Contains:[Z

.field private final greylist-max-o list:[I

.field private greylist-max-o list4kStarts:[I

.field private final greylist-max-o listLength:I

.field private greylist-max-o table7FF:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    nop

    .line 29
    const v0, 0x35fdc00

    sput v0, Landroid/icu/impl/BMPSet;->U16_SURROGATE_OFFSET:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/BMPSet;[II)V
    .registers 5
    .param p1, "otherBMPSet"    # Landroid/icu/impl/BMPSet;
    .param p2, "newParentList"    # [I
    .param p3, "newParentListLength"    # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Landroid/icu/impl/BMPSet;->list:[I

    .line 95
    iput p3, p0, Landroid/icu/impl/BMPSet;->listLength:I

    .line 96
    iget-object v0, p1, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    .line 97
    iget-object v0, p1, Landroid/icu/impl/BMPSet;->table7FF:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    .line 98
    iget-object v0, p1, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    .line 99
    iget-object v0, p1, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    .line 100
    return-void
.end method

.method public constructor blacklist <init>([II)V
    .registers 8
    .param p1, "parentList"    # [I
    .param p2, "parentListLength"    # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroid/icu/impl/BMPSet;->list:[I

    .line 72
    iput p2, p0, Landroid/icu/impl/BMPSet;->listLength:I

    .line 73
    const/16 v0, 0x100

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    .line 74
    const/16 v0, 0x40

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    .line 75
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    .line 76
    const/16 v0, 0x12

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    .line 83
    iget-object v0, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    iget v1, p0, Landroid/icu/impl/BMPSet;->listLength:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x800

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v1}, Landroid/icu/impl/BMPSet;->findCodePoint(III)I

    move-result v1

    aput v1, v0, v3

    .line 85
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2d
    const/16 v1, 0x10

    if-gt v0, v1, :cond_48

    .line 86
    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    shl-int/lit8 v2, v0, 0xc

    iget-object v3, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    iget v4, p0, Landroid/icu/impl/BMPSet;->listLength:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v2, v3, v4}, Landroid/icu/impl/BMPSet;->findCodePoint(III)I

    move-result v2

    aput v2, v1, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 88
    :cond_48
    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    iget v2, p0, Landroid/icu/impl/BMPSet;->listLength:I

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x11

    aput v2, v1, v3

    .line 90
    invoke-direct {p0}, Landroid/icu/impl/BMPSet;->initBits()V

    .line 91
    return-void
.end method

.method private final greylist-max-o containsSlow(III)Z
    .registers 6
    .param p1, "c"    # I
    .param p2, "lo"    # I
    .param p3, "hi"    # I

    .line 513
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/BMPSet;->findCodePoint(III)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method private greylist-max-o findCodePoint(III)I
    .registers 6
    .param p1, "c"    # I
    .param p2, "lo"    # I
    .param p3, "hi"    # I

    .line 491
    iget-object v0, p0, Landroid/icu/impl/BMPSet;->list:[I

    aget v0, v0, p2

    if-ge p1, v0, :cond_7

    .line 492
    return p2

    .line 495
    :cond_7
    if-ge p2, p3, :cond_24

    iget-object v0, p0, Landroid/icu/impl/BMPSet;->list:[I

    add-int/lit8 v1, p3, -0x1

    aget v0, v0, v1

    if-lt p1, v0, :cond_12

    goto :goto_24

    .line 500
    :cond_12
    :goto_12
    add-int v0, p2, p3

    ushr-int/lit8 v0, v0, 0x1

    .line 501
    .local v0, "i":I
    if-ne v0, p2, :cond_1a

    .line 502
    nop

    .line 509
    .end local v0    # "i":I
    return p3

    .line 503
    .restart local v0    # "i":I
    :cond_1a
    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list:[I

    aget v1, v1, v0

    if-ge p1, v1, :cond_22

    .line 504
    move p3, v0

    goto :goto_23

    .line 506
    :cond_22
    move p2, v0

    .line 508
    .end local v0    # "i":I
    :goto_23
    goto :goto_12

    .line 496
    :cond_24
    :goto_24
    return p3
.end method

.method private greylist-max-o initBits()V
    .registers 11

    .line 381
    const/4 v0, 0x0

    .line 385
    .local v0, "listIndex":I
    :goto_1
    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list:[I

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "listIndex":I
    .local v2, "listIndex":I
    aget v0, v1, v0

    .line 386
    .local v0, "start":I
    iget v1, p0, Landroid/icu/impl/BMPSet;->listLength:I

    if-ge v2, v1, :cond_13

    .line 387
    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "listIndex":I
    .local v3, "listIndex":I
    aget v1, v1, v2

    move v2, v3

    .local v1, "limit":I
    goto :goto_15

    .line 389
    .end local v1    # "limit":I
    .end local v3    # "listIndex":I
    .restart local v2    # "listIndex":I
    :cond_13
    const/high16 v1, 0x110000

    .line 391
    .restart local v1    # "limit":I
    :goto_15
    const/16 v3, 0x100

    if-lt v0, v3, :cond_1a

    .line 392
    goto :goto_2b

    .line 395
    :cond_1a
    :goto_1a
    iget-object v4, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "start":I
    .local v5, "start":I
    const/4 v6, 0x1

    aput-boolean v6, v4, v0

    .line 396
    if-ge v5, v1, :cond_28

    if-lt v5, v3, :cond_26

    goto :goto_28

    :cond_26
    move v0, v5

    goto :goto_1a

    .line 397
    :cond_28
    :goto_28
    if-le v1, v3, :cond_be

    move v0, v5

    .line 400
    .end local v5    # "start":I
    .restart local v0    # "start":I
    :goto_2b
    const/16 v3, 0x800

    if-ge v0, v3, :cond_54

    .line 401
    iget-object v4, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    if-gt v1, v3, :cond_35

    move v5, v1

    goto :goto_36

    :cond_35
    move v5, v3

    :goto_36
    invoke-static {v4, v0, v5}, Landroid/icu/impl/BMPSet;->set32x64Bits([III)V

    .line 402
    if-le v1, v3, :cond_3e

    .line 403
    const/16 v0, 0x800

    .line 404
    goto :goto_54

    .line 407
    :cond_3e
    iget-object v3, p0, Landroid/icu/impl/BMPSet;->list:[I

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "listIndex":I
    .local v4, "listIndex":I
    aget v0, v3, v2

    .line 408
    iget v2, p0, Landroid/icu/impl/BMPSet;->listLength:I

    if-ge v4, v2, :cond_50

    .line 409
    iget-object v2, p0, Landroid/icu/impl/BMPSet;->list:[I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "listIndex":I
    .restart local v3    # "listIndex":I
    aget v1, v2, v4

    move v2, v3

    goto :goto_2b

    .line 411
    .end local v3    # "listIndex":I
    .restart local v4    # "listIndex":I
    :cond_50
    const/high16 v1, 0x110000

    move v2, v4

    goto :goto_2b

    .line 416
    .end local v4    # "listIndex":I
    .restart local v2    # "listIndex":I
    :cond_54
    :goto_54
    const/16 v3, 0x800

    .line 417
    .local v3, "minStart":I
    :goto_56
    const/high16 v4, 0x10000

    if-ge v0, v4, :cond_bd

    .line 418
    if-le v1, v4, :cond_5e

    .line 419
    const/high16 v1, 0x10000

    .line 422
    :cond_5e
    if-ge v0, v3, :cond_61

    .line 423
    move v0, v3

    .line 425
    :cond_61
    if-ge v0, v1, :cond_a4

    .line 426
    and-int/lit8 v5, v0, 0x3f

    const v6, 0x10001

    if-eqz v5, :cond_7e

    .line 428
    shr-int/lit8 v0, v0, 0x6

    .line 429
    iget-object v5, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    and-int/lit8 v7, v0, 0x3f

    aget v8, v5, v7

    shr-int/lit8 v9, v0, 0x6

    shl-int v9, v6, v9

    or-int/2addr v8, v9

    aput v8, v5, v7

    .line 430
    add-int/lit8 v5, v0, 0x1

    shl-int/lit8 v0, v5, 0x6

    .line 431
    move v3, v0

    .line 433
    :cond_7e
    if-ge v0, v1, :cond_a4

    .line 434
    and-int/lit8 v5, v1, -0x40

    if-ge v0, v5, :cond_8d

    .line 436
    iget-object v5, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v7, v0, 0x6

    shr-int/lit8 v8, v1, 0x6

    invoke-static {v5, v7, v8}, Landroid/icu/impl/BMPSet;->set32x64Bits([III)V

    .line 439
    :cond_8d
    and-int/lit8 v5, v1, 0x3f

    if-eqz v5, :cond_a4

    .line 441
    shr-int/lit8 v1, v1, 0x6

    .line 442
    iget-object v5, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    and-int/lit8 v7, v1, 0x3f

    aget v8, v5, v7

    shr-int/lit8 v9, v1, 0x6

    shl-int/2addr v6, v9

    or-int/2addr v6, v8

    aput v6, v5, v7

    .line 443
    add-int/lit8 v5, v1, 0x1

    shl-int/lit8 v1, v5, 0x6

    .line 444
    move v3, v1

    .line 449
    :cond_a4
    if-ne v1, v4, :cond_a7

    .line 450
    goto :goto_bd

    .line 453
    :cond_a7
    iget-object v4, p0, Landroid/icu/impl/BMPSet;->list:[I

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "listIndex":I
    .local v5, "listIndex":I
    aget v0, v4, v2

    .line 454
    iget v2, p0, Landroid/icu/impl/BMPSet;->listLength:I

    if-ge v5, v2, :cond_b9

    .line 455
    iget-object v2, p0, Landroid/icu/impl/BMPSet;->list:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "listIndex":I
    .restart local v4    # "listIndex":I
    aget v1, v2, v5

    move v2, v4

    goto :goto_56

    .line 457
    .end local v4    # "listIndex":I
    .restart local v5    # "listIndex":I
    :cond_b9
    const/high16 v1, 0x110000

    move v2, v5

    goto :goto_56

    .line 460
    .end local v5    # "listIndex":I
    .restart local v2    # "listIndex":I
    :cond_bd
    :goto_bd
    return-void

    .line 397
    .end local v0    # "start":I
    .end local v3    # "minStart":I
    .local v5, "start":I
    :cond_be
    move v0, v2

    goto/16 :goto_1
.end method

.method private static greylist-max-o set32x64Bits([III)V
    .registers 12
    .param p0, "table"    # [I
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 330
    nop

    .line 331
    shr-int/lit8 v0, p1, 0x6

    .line 332
    .local v0, "lead":I
    and-int/lit8 v1, p1, 0x3f

    .line 335
    .local v1, "trail":I
    const/4 v2, 0x1

    shl-int v3, v2, v0

    .line 336
    .local v3, "bits":I
    add-int/lit8 v4, p1, 0x1

    if-ne v4, p2, :cond_12

    .line 337
    aget v2, p0, v1

    or-int/2addr v2, v3

    aput v2, p0, v1

    .line 338
    return-void

    .line 341
    :cond_12
    shr-int/lit8 v4, p2, 0x6

    .line 342
    .local v4, "limitLead":I
    and-int/lit8 v5, p2, 0x3f

    .line 344
    .local v5, "limitTrail":I
    if-ne v0, v4, :cond_23

    .line 346
    :goto_18
    if-ge v1, v5, :cond_5c

    .line 347
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "trail":I
    .local v2, "trail":I
    aget v6, p0, v1

    or-int/2addr v6, v3

    aput v6, p0, v1

    move v1, v2

    goto :goto_18

    .line 353
    .end local v2    # "trail":I
    .restart local v1    # "trail":I
    :cond_23
    const/16 v6, 0x40

    if-lez v1, :cond_36

    .line 355
    :goto_27
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "trail":I
    .local v7, "trail":I
    aget v8, p0, v1

    or-int/2addr v8, v3

    aput v8, p0, v1

    .line 356
    if-lt v7, v6, :cond_34

    .line 357
    add-int/lit8 v0, v0, 0x1

    move v1, v7

    goto :goto_36

    .line 356
    :cond_34
    move v1, v7

    goto :goto_27

    .line 359
    .end local v7    # "trail":I
    .restart local v1    # "trail":I
    :cond_36
    :goto_36
    if-ge v0, v4, :cond_4f

    .line 360
    shl-int v7, v2, v0

    sub-int/2addr v7, v2

    not-int v3, v7

    .line 361
    const/16 v7, 0x20

    if-ge v4, v7, :cond_44

    .line 362
    shl-int v7, v2, v4

    sub-int/2addr v7, v2

    and-int/2addr v3, v7

    .line 364
    :cond_44
    const/4 v1, 0x0

    :goto_45
    if-ge v1, v6, :cond_4f

    .line 365
    aget v7, p0, v1

    or-int/2addr v7, v3

    aput v7, p0, v1

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 372
    :cond_4f
    shl-int v3, v2, v4

    .line 373
    const/4 v1, 0x0

    :goto_52
    if-ge v1, v5, :cond_5c

    .line 374
    aget v2, p0, v1

    or-int/2addr v2, v3

    aput v2, p0, v1

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 377
    :cond_5c
    return-void
.end method


# virtual methods
.method public blacklist contains(I)Z
    .registers 7
    .param p1, "c"    # I

    .line 103
    const/16 v0, 0xff

    if-gt p1, v0, :cond_9

    .line 104
    iget-object v0, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    aget-boolean v0, v0, p1

    return v0

    .line 105
    :cond_9
    const/16 v0, 0x7ff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p1, v0, :cond_1e

    .line 106
    iget-object v0, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    and-int/lit8 v3, p1, 0x3f

    aget v0, v0, v3

    shr-int/lit8 v3, p1, 0x6

    shl-int v3, v2, v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_1d

    move v1, v2

    :cond_1d
    return v1

    .line 107
    :cond_1e
    const v0, 0xd800

    if-lt p1, v0, :cond_45

    const v0, 0xe000

    if-lt p1, v0, :cond_2e

    const v0, 0xffff

    if-gt p1, v0, :cond_2e

    goto :goto_45

    .line 118
    :cond_2e
    const v0, 0x10ffff

    if-gt p1, v0, :cond_44

    .line 120
    iget-object v0, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v1, 0xd

    aget v0, v0, v1

    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    invoke-direct {p0, p1, v0, v1}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v0

    return v0

    .line 124
    :cond_44
    return v1

    .line 108
    :cond_45
    :goto_45
    shr-int/lit8 v0, p1, 0xc

    .line 109
    .local v0, "lead":I
    iget-object v3, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v4, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget v3, v3, v4

    shr-int/2addr v3, v0

    const v4, 0x10001

    and-int/2addr v3, v4

    .line 110
    .local v3, "twoBits":I
    if-gt v3, v2, :cond_5a

    .line 113
    if-eqz v3, :cond_59

    move v1, v2

    :cond_59
    return v1

    .line 116
    :cond_5a
    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v1, v1, v0

    iget-object v2, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    add-int/lit8 v4, v0, 0x1

    aget v2, v2, v4

    invoke-direct {p0, p1, v1, v2}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v1

    return v1
.end method

.method public final blacklist span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I
    .registers 25
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;
    .param p4, "outCount"    # Landroid/icu/util/OutputInt;

    .line 143
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p2

    .line 144
    .local v3, "i":I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 145
    .local v4, "limit":I
    const/4 v5, 0x0

    .line 146
    .local v5, "numSupplementary":I
    sget-object v6, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    const v9, 0xe000

    const v11, 0xd800

    const/16 v12, 0x7ff

    const/16 v13, 0xff

    const v14, 0xdc00

    const/4 v15, 0x1

    move-object/from16 v7, p3

    const/16 v16, 0x11

    if-eq v6, v7, :cond_c0

    .line 148
    :goto_23
    if-ge v3, v4, :cond_13d

    .line 149
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 150
    .local v6, "c":C
    if-gt v6, v13, :cond_3a

    .line 151
    const/16 v17, 0x10

    iget-object v8, v0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    aget-boolean v8, v8, v6

    if-nez v8, :cond_35

    .line 152
    goto/16 :goto_13d

    .line 151
    :cond_35
    const v18, 0x10001

    goto/16 :goto_b7

    .line 154
    :cond_3a
    const/16 v17, 0x10

    if-gt v6, v12, :cond_52

    .line 155
    iget-object v8, v0, Landroid/icu/impl/BMPSet;->table7FF:[I

    and-int/lit8 v18, v6, 0x3f

    aget v8, v8, v18

    shr-int/lit8 v18, v6, 0x6

    shl-int v18, v15, v18

    and-int v8, v8, v18

    if-nez v8, :cond_4e

    .line 156
    goto/16 :goto_13d

    .line 155
    :cond_4e
    const v18, 0x10001

    goto :goto_b7

    .line 158
    :cond_52
    if-lt v6, v11, :cond_8e

    if-ge v6, v14, :cond_8e

    add-int/lit8 v8, v3, 0x1

    if-eq v8, v4, :cond_8e

    add-int/lit8 v8, v3, 0x1

    .line 159
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move/from16 v18, v8

    .local v18, "c2":C
    if-lt v8, v14, :cond_88

    move/from16 v8, v18

    .end local v18    # "c2":C
    .local v8, "c2":C
    if-lt v8, v9, :cond_6c

    const v18, 0x10001

    goto :goto_91

    .line 176
    :cond_6c
    const v18, 0x10001

    invoke-static {v6, v8}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v10

    .line 177
    .local v10, "supplementary":I
    iget-object v9, v0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v9, v9, v17

    iget-object v14, v0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v14, v14, v16

    invoke-direct {v0, v10, v9, v14}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v9

    if-nez v9, :cond_83

    .line 178
    goto/16 :goto_13d

    .line 180
    :cond_83
    add-int/lit8 v5, v5, 0x1

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_b7

    .line 159
    .end local v8    # "c2":C
    .end local v10    # "supplementary":I
    .restart local v18    # "c2":C
    :cond_88
    move/from16 v8, v18

    const v18, 0x10001

    .end local v18    # "c2":C
    .restart local v8    # "c2":C
    goto :goto_91

    .line 158
    .end local v8    # "c2":C
    :cond_8e
    const v18, 0x10001

    .line 160
    :goto_91
    shr-int/lit8 v8, v6, 0xc

    .line 161
    .local v8, "lead":I
    iget-object v9, v0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v10, v6, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget v9, v9, v10

    shr-int/2addr v9, v8

    and-int v9, v9, v18

    .line 162
    .local v9, "twoBits":I
    if-gt v9, v15, :cond_a4

    .line 165
    if-nez v9, :cond_b6

    .line 166
    goto/16 :goto_13d

    .line 170
    :cond_a4
    iget-object v10, v0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v10, v10, v8

    iget-object v14, v0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    add-int/lit8 v19, v8, 0x1

    aget v14, v14, v19

    invoke-direct {v0, v6, v10, v14}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v10

    if-nez v10, :cond_b6

    .line 171
    goto/16 :goto_13d

    .line 174
    .end local v8    # "lead":I
    .end local v9    # "twoBits":I
    :cond_b6
    nop

    .line 183
    :goto_b7
    add-int/2addr v3, v15

    const v9, 0xe000

    const v14, 0xdc00

    goto/16 :goto_23

    .line 146
    .end local v6    # "c":C
    :cond_c0
    const/16 v17, 0x10

    const v18, 0x10001

    .line 187
    :goto_c5
    if-ge v3, v4, :cond_13d

    .line 188
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 189
    .restart local v6    # "c":C
    if-gt v6, v13, :cond_d5

    .line 190
    iget-object v8, v0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    aget-boolean v8, v8, v6

    if-eqz v8, :cond_13b

    .line 191
    goto/16 :goto_13d

    .line 193
    :cond_d5
    if-gt v6, v12, :cond_e5

    .line 194
    iget-object v8, v0, Landroid/icu/impl/BMPSet;->table7FF:[I

    and-int/lit8 v9, v6, 0x3f

    aget v8, v8, v9

    shr-int/lit8 v9, v6, 0x6

    shl-int v9, v15, v9

    and-int/2addr v8, v9

    if-eqz v8, :cond_13b

    .line 195
    goto :goto_13d

    .line 197
    :cond_e5
    if-lt v6, v11, :cond_117

    const v8, 0xdc00

    if-ge v6, v8, :cond_117

    add-int/lit8 v9, v3, 0x1

    if-eq v9, v4, :cond_117

    add-int/lit8 v9, v3, 0x1

    .line 198
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move v10, v9

    .local v10, "c2":C
    if-lt v9, v8, :cond_117

    const v9, 0xe000

    if-lt v10, v9, :cond_ff

    goto :goto_117

    .line 215
    :cond_ff
    invoke-static {v6, v10}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v14

    .line 216
    .local v14, "supplementary":I
    iget-object v8, v0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v8, v8, v17

    iget-object v9, v0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v9, v9, v16

    invoke-direct {v0, v14, v8, v9}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v8

    if-eqz v8, :cond_112

    .line 217
    goto :goto_13d

    .line 219
    :cond_112
    add-int/lit8 v5, v5, 0x1

    .line 220
    add-int/lit8 v3, v3, 0x1

    goto :goto_13b

    .line 199
    .end local v10    # "c2":C
    .end local v14    # "supplementary":I
    :cond_117
    :goto_117
    shr-int/lit8 v8, v6, 0xc

    .line 200
    .restart local v8    # "lead":I
    iget-object v9, v0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v10, v6, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget v9, v9, v10

    shr-int/2addr v9, v8

    and-int v9, v9, v18

    .line 201
    .restart local v9    # "twoBits":I
    if-gt v9, v15, :cond_129

    .line 204
    if-eqz v9, :cond_13a

    .line 205
    goto :goto_13d

    .line 209
    :cond_129
    iget-object v10, v0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v10, v10, v8

    iget-object v14, v0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    add-int/lit8 v19, v8, 0x1

    aget v14, v14, v19

    invoke-direct {v0, v6, v10, v14}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v10

    if-eqz v10, :cond_13a

    .line 210
    goto :goto_13d

    .line 213
    .end local v8    # "lead":I
    .end local v9    # "twoBits":I
    :cond_13a
    nop

    .line 222
    :cond_13b
    :goto_13b
    add-int/2addr v3, v15

    goto :goto_c5

    .line 225
    .end local v6    # "c":C
    :cond_13d
    :goto_13d
    if-eqz v2, :cond_145

    .line 226
    sub-int v6, v3, p2

    .line 227
    .local v6, "spanLength":I
    sub-int v8, v6, v5

    iput v8, v2, Landroid/icu/util/OutputInt;->value:I

    .line 229
    .end local v6    # "spanLength":I
    :cond_145
    return v3
.end method

.method public final blacklist spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    .registers 23
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "limit"    # I
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 242
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    const/16 v4, 0x10

    const/4 v5, 0x0

    const v6, 0x10001

    const/16 v7, 0x7ff

    const/16 v8, 0xff

    const v9, 0xdc00

    const v10, 0xd800

    const/4 v11, 0x1

    move-object/from16 v12, p3

    if-eq v2, v12, :cond_af

    move/from16 v2, p2

    .line 245
    .end local p2    # "limit":I
    .local v2, "limit":I
    :goto_1d
    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 246
    .local v13, "c":C
    if-gt v13, v8, :cond_33

    .line 247
    iget-object v14, v0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    aget-boolean v14, v14, v13

    if-nez v14, :cond_2d

    .line 248
    goto/16 :goto_11e

    .line 247
    :cond_2d
    move/from16 v17, v4

    const/16 v16, 0x11

    goto/16 :goto_a8

    .line 250
    :cond_33
    if-gt v13, v7, :cond_49

    .line 251
    iget-object v14, v0, Landroid/icu/impl/BMPSet;->table7FF:[I

    and-int/lit8 v15, v13, 0x3f

    aget v14, v14, v15

    shr-int/lit8 v15, v13, 0x6

    shl-int v15, v11, v15

    and-int/2addr v14, v15

    if-nez v14, :cond_44

    .line 252
    goto/16 :goto_11e

    .line 251
    :cond_44
    move/from16 v17, v4

    const/16 v16, 0x11

    goto :goto_a8

    .line 254
    :cond_49
    if-lt v13, v10, :cond_7f

    if-lt v13, v9, :cond_7f

    if-eqz v2, :cond_7f

    add-int/lit8 v14, v2, -0x1

    .line 255
    invoke-interface {v1, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    move v15, v14

    .local v15, "c2":C
    if-lt v14, v10, :cond_7a

    if-lt v15, v9, :cond_5f

    move/from16 v17, v4

    const/16 v16, 0x11

    goto :goto_83

    .line 272
    :cond_5f
    invoke-static {v15, v13}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v14

    .line 273
    .local v14, "supplementary":I
    const/16 v16, 0x11

    iget-object v3, v0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v3, v3, v4

    move/from16 v17, v4

    iget-object v4, v0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v4, v4, v16

    invoke-direct {v0, v14, v3, v4}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v3

    if-nez v3, :cond_77

    .line 274
    goto/16 :goto_11e

    .line 276
    :cond_77
    add-int/lit8 v2, v2, -0x1

    goto :goto_a8

    .line 255
    .end local v14    # "supplementary":I
    :cond_7a
    move/from16 v17, v4

    const/16 v16, 0x11

    goto :goto_83

    .line 254
    .end local v15    # "c2":C
    :cond_7f
    move/from16 v17, v4

    const/16 v16, 0x11

    .line 256
    :goto_83
    shr-int/lit8 v3, v13, 0xc

    .line 257
    .local v3, "lead":I
    iget-object v4, v0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v14, v13, 0x6

    and-int/lit8 v14, v14, 0x3f

    aget v4, v4, v14

    shr-int/2addr v4, v3

    and-int/2addr v4, v6

    .line 258
    .local v4, "twoBits":I
    if-gt v4, v11, :cond_95

    .line 261
    if-nez v4, :cond_a7

    .line 262
    goto/16 :goto_11e

    .line 266
    :cond_95
    iget-object v14, v0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v14, v14, v3

    iget-object v15, v0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    add-int/lit8 v18, v3, 0x1

    aget v15, v15, v18

    invoke-direct {v0, v13, v14, v15}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v14

    if-nez v14, :cond_a7

    .line 267
    goto/16 :goto_11e

    .line 270
    .end local v3    # "lead":I
    .end local v4    # "twoBits":I
    :cond_a7
    nop

    .line 278
    :goto_a8
    if-nez v2, :cond_ab

    .line 279
    return v5

    .line 278
    :cond_ab
    move/from16 v4, v17

    goto/16 :goto_1d

    .line 242
    .end local v2    # "limit":I
    .end local v13    # "c":C
    .restart local p2    # "limit":I
    :cond_af
    move/from16 v17, v4

    const/16 v16, 0x11

    move/from16 v2, p2

    .line 285
    .end local p2    # "limit":I
    .restart local v2    # "limit":I
    :cond_b5
    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 286
    .restart local v13    # "c":C
    if-gt v13, v8, :cond_c4

    .line 287
    iget-object v3, v0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    aget-boolean v3, v3, v13

    if-eqz v3, :cond_122

    .line 288
    goto :goto_11e

    .line 290
    :cond_c4
    if-gt v13, v7, :cond_d4

    .line 291
    iget-object v3, v0, Landroid/icu/impl/BMPSet;->table7FF:[I

    and-int/lit8 v4, v13, 0x3f

    aget v3, v3, v4

    shr-int/lit8 v4, v13, 0x6

    shl-int v4, v11, v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_122

    .line 292
    goto :goto_11e

    .line 294
    :cond_d4
    if-lt v13, v10, :cond_fc

    if-lt v13, v9, :cond_fc

    if-eqz v2, :cond_fc

    add-int/lit8 v3, v2, -0x1

    .line 295
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move v4, v3

    .local v4, "c2":C
    if-lt v3, v10, :cond_fc

    if-lt v4, v9, :cond_e6

    goto :goto_fc

    .line 312
    :cond_e6
    invoke-static {v4, v13}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    .line 313
    .local v3, "supplementary":I
    iget-object v14, v0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v14, v14, v17

    iget-object v15, v0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v15, v15, v16

    invoke-direct {v0, v3, v14, v15}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v14

    if-eqz v14, :cond_f9

    .line 314
    goto :goto_11e

    .line 316
    :cond_f9
    add-int/lit8 v2, v2, -0x1

    goto :goto_122

    .line 296
    .end local v3    # "supplementary":I
    .end local v4    # "c2":C
    :cond_fc
    :goto_fc
    shr-int/lit8 v3, v13, 0xc

    .line 297
    .local v3, "lead":I
    iget-object v4, v0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v14, v13, 0x6

    and-int/lit8 v14, v14, 0x3f

    aget v4, v4, v14

    shr-int/2addr v4, v3

    and-int/2addr v4, v6

    .line 298
    .local v4, "twoBits":I
    if-gt v4, v11, :cond_10d

    .line 301
    if-eqz v4, :cond_121

    .line 302
    goto :goto_11e

    .line 306
    :cond_10d
    iget-object v14, v0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v14, v14, v3

    iget-object v15, v0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    add-int/lit8 v18, v3, 0x1

    aget v15, v15, v18

    invoke-direct {v0, v13, v14, v15}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v14

    if-eqz v14, :cond_121

    .line 307
    nop

    .line 323
    .end local v3    # "lead":I
    .end local v4    # "twoBits":I
    :goto_11e
    add-int/lit8 v3, v2, 0x1

    return v3

    .line 310
    :cond_121
    nop

    .line 318
    :cond_122
    :goto_122
    if-nez v2, :cond_b5

    .line 319
    return v5
.end method
