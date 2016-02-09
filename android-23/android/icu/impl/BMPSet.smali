.class public final Landroid/icu/impl/BMPSet;
.super Ljava/lang/Object;
.source "BMPSet.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static U16_SURROGATE_OFFSET:I


# instance fields
.field private bmpBlockBits:[I

.field private latin1Contains:[Z

.field private final list:[I

.field private list4kStarts:[I

.field private final listLength:I

.field private table7FF:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/BMPSet;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/impl/BMPSet;->-assertionsDisabled:Z

    #@b
    .line 24
    const v0, 0x35fdc00

    #@e
    sput v0, Landroid/icu/impl/BMPSet;->U16_SURROGATE_OFFSET:I

    #@10
    .line 23
    return-void

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/impl/BMPSet;[II)V
    .locals 1
    .param p1, "otherBMPSet"    # Landroid/icu/impl/BMPSet;
    .param p2, "newParentList"    # [I
    .param p3, "newParentListLength"    # I

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 91
    iput-object p2, p0, Landroid/icu/impl/BMPSet;->list:[I

    #@5
    .line 92
    iput p3, p0, Landroid/icu/impl/BMPSet;->listLength:I

    #@7
    .line 93
    iget-object v0, p1, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    #@9
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, [Z

    #@f
    iput-object v0, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    #@11
    .line 94
    iget-object v0, p1, Landroid/icu/impl/BMPSet;->table7FF:[I

    #@13
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, [I

    #@19
    iput-object v0, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    #@1b
    .line 95
    iget-object v0, p1, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    #@1d
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, [I

    #@23
    iput-object v0, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    #@25
    .line 96
    iget-object v0, p1, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@27
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, [I

    #@2d
    iput-object v0, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@2f
    .line 90
    return-void
.end method

.method public constructor <init>([II)V
    .locals 5
    .param p1, "parentList"    # [I
    .param p2, "parentListLength"    # I

    #@0
    .prologue
    const/16 v2, 0x40

    #@2
    const/4 v4, 0x0

    #@3
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 68
    iput-object p1, p0, Landroid/icu/impl/BMPSet;->list:[I

    #@8
    .line 69
    iput p2, p0, Landroid/icu/impl/BMPSet;->listLength:I

    #@a
    .line 70
    const/16 v1, 0x100

    #@c
    new-array v1, v1, [Z

    #@e
    iput-object v1, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    #@10
    .line 71
    new-array v1, v2, [I

    #@12
    iput-object v1, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    #@14
    .line 72
    new-array v1, v2, [I

    #@16
    iput-object v1, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    #@18
    .line 73
    const/16 v1, 0x12

    #@1a
    new-array v1, v1, [I

    #@1c
    iput-object v1, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@1e
    .line 80
    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@20
    iget v2, p0, Landroid/icu/impl/BMPSet;->listLength:I

    #@22
    add-int/lit8 v2, v2, -0x1

    #@24
    const/16 v3, 0x800

    #@26
    invoke-direct {p0, v3, v4, v2}, Landroid/icu/impl/BMPSet;->findCodePoint(III)I

    #@29
    move-result v2

    #@2a
    aput v2, v1, v4

    #@2c
    .line 82
    const/4 v0, 0x1

    #@2d
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    #@2f
    if-gt v0, v1, :cond_0

    #@31
    .line 83
    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@33
    shl-int/lit8 v2, v0, 0xc

    #@35
    iget-object v3, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@37
    add-int/lit8 v4, v0, -0x1

    #@39
    aget v3, v3, v4

    #@3b
    iget v4, p0, Landroid/icu/impl/BMPSet;->listLength:I

    #@3d
    add-int/lit8 v4, v4, -0x1

    #@3f
    invoke-direct {p0, v2, v3, v4}, Landroid/icu/impl/BMPSet;->findCodePoint(III)I

    #@42
    move-result v2

    #@43
    aput v2, v1, v0

    #@45
    .line 82
    add-int/lit8 v0, v0, 0x1

    #@47
    goto :goto_0

    #@48
    .line 85
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@4a
    iget v2, p0, Landroid/icu/impl/BMPSet;->listLength:I

    #@4c
    add-int/lit8 v2, v2, -0x1

    #@4e
    const/16 v3, 0x11

    #@50
    aput v2, v1, v3

    #@52
    .line 87
    invoke-direct {p0}, Landroid/icu/impl/BMPSet;->initBits()V

    #@55
    .line 67
    return-void
.end method

.method private final containsSlow(III)Z
    .locals 2
    .param p1, "c"    # I
    .param p2, "lo"    # I
    .param p3, "hi"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 510
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/BMPSet;->findCodePoint(III)I

    #@4
    move-result v1

    #@5
    and-int/lit8 v1, v1, 0x1

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private findCodePoint(III)I
    .locals 3
    .param p1, "c"    # I
    .param p2, "lo"    # I
    .param p3, "hi"    # I

    #@0
    .prologue
    .line 488
    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list:[I

    #@2
    aget v1, v1, p2

    #@4
    if-ge p1, v1, :cond_0

    #@6
    .line 489
    return p2

    #@7
    .line 492
    :cond_0
    if-ge p2, p3, :cond_1

    #@9
    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list:[I

    #@b
    add-int/lit8 v2, p3, -0x1

    #@d
    aget v1, v1, v2

    #@f
    if-lt p1, v1, :cond_3

    #@11
    .line 493
    :cond_1
    return p3

    #@12
    .line 500
    .local v0, "i":I
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list:[I

    #@14
    aget v1, v1, v0

    #@16
    if-ge p1, v1, :cond_4

    #@18
    .line 501
    move p3, v0

    #@19
    .line 497
    .end local v0    # "i":I
    :cond_3
    :goto_0
    add-int v1, p2, p3

    #@1b
    ushr-int/lit8 v0, v1, 0x1

    #@1d
    .line 498
    .restart local v0    # "i":I
    if-ne v0, p2, :cond_2

    #@1f
    .line 506
    return p3

    #@20
    .line 503
    :cond_4
    move p2, v0

    #@21
    goto :goto_0
.end method

.method private initBits()V
    .locals 12

    #@0
    .prologue
    const v11, 0x10001

    #@3
    const/high16 v10, 0x10000

    #@5
    const/16 v9, 0x100

    #@7
    const/16 v7, 0x800

    #@9
    .line 378
    const/4 v1, 0x0

    #@a
    .line 382
    .local v1, "listIndex":I
    :cond_0
    iget-object v6, p0, Landroid/icu/impl/BMPSet;->list:[I

    #@c
    add-int/lit8 v2, v1, 0x1

    #@e
    .end local v1    # "listIndex":I
    .local v2, "listIndex":I
    aget v4, v6, v1

    #@10
    .line 383
    .local v4, "start":I
    iget v6, p0, Landroid/icu/impl/BMPSet;->listLength:I

    #@12
    if-ge v2, v6, :cond_8

    #@14
    .line 384
    iget-object v6, p0, Landroid/icu/impl/BMPSet;->list:[I

    #@16
    add-int/lit8 v1, v2, 0x1

    #@18
    .end local v2    # "listIndex":I
    .restart local v1    # "listIndex":I
    aget v0, v6, v2

    #@1a
    .line 388
    .local v0, "limit":I
    :goto_0
    if-lt v4, v9, :cond_9

    #@1c
    move v2, v1

    #@1d
    .line 397
    .end local v1    # "listIndex":I
    .restart local v2    # "listIndex":I
    :goto_1
    if-ge v4, v7, :cond_1

    #@1f
    .line 398
    iget-object v8, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    #@21
    if-gt v0, v7, :cond_b

    #@23
    move v6, v0

    #@24
    :goto_2
    invoke-static {v8, v4, v6}, Landroid/icu/impl/BMPSet;->set32x64Bits([III)V

    #@27
    .line 399
    if-le v0, v7, :cond_c

    #@29
    .line 400
    const/16 v4, 0x800

    #@2b
    .line 413
    :cond_1
    const/16 v3, 0x800

    #@2d
    .line 414
    .local v3, "minStart":I
    :goto_3
    if-ge v4, v10, :cond_7

    #@2f
    .line 415
    if-le v0, v10, :cond_2

    #@31
    .line 416
    const/high16 v0, 0x10000

    #@33
    .line 419
    :cond_2
    if-ge v4, v3, :cond_3

    #@35
    .line 420
    move v4, v3

    #@36
    .line 422
    :cond_3
    if-ge v4, v0, :cond_6

    #@38
    .line 423
    and-int/lit8 v6, v4, 0x3f

    #@3a
    if-eqz v6, :cond_4

    #@3c
    .line 425
    shr-int/lit8 v4, v4, 0x6

    #@3e
    .line 426
    iget-object v6, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    #@40
    and-int/lit8 v7, v4, 0x3f

    #@42
    aget v8, v6, v7

    #@44
    shr-int/lit8 v9, v4, 0x6

    #@46
    shl-int v9, v11, v9

    #@48
    or-int/2addr v8, v9

    #@49
    aput v8, v6, v7

    #@4b
    .line 427
    add-int/lit8 v6, v4, 0x1

    #@4d
    shl-int/lit8 v4, v6, 0x6

    #@4f
    .line 428
    move v3, v4

    #@50
    .line 430
    :cond_4
    if-ge v4, v0, :cond_6

    #@52
    .line 431
    and-int/lit8 v6, v0, -0x40

    #@54
    if-ge v4, v6, :cond_5

    #@56
    .line 433
    iget-object v6, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    #@58
    shr-int/lit8 v7, v4, 0x6

    #@5a
    shr-int/lit8 v8, v0, 0x6

    #@5c
    invoke-static {v6, v7, v8}, Landroid/icu/impl/BMPSet;->set32x64Bits([III)V

    #@5f
    .line 436
    :cond_5
    and-int/lit8 v6, v0, 0x3f

    #@61
    if-eqz v6, :cond_6

    #@63
    .line 438
    shr-int/lit8 v0, v0, 0x6

    #@65
    .line 439
    iget-object v6, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    #@67
    and-int/lit8 v7, v0, 0x3f

    #@69
    aget v8, v6, v7

    #@6b
    shr-int/lit8 v9, v0, 0x6

    #@6d
    shl-int v9, v11, v9

    #@6f
    or-int/2addr v8, v9

    #@70
    aput v8, v6, v7

    #@72
    .line 440
    add-int/lit8 v6, v0, 0x1

    #@74
    shl-int/lit8 v0, v6, 0x6

    #@76
    .line 441
    move v3, v0

    #@77
    .line 446
    :cond_6
    if-ne v0, v10, :cond_e

    #@79
    .line 376
    :cond_7
    return-void

    #@7a
    .line 386
    .end local v0    # "limit":I
    .end local v3    # "minStart":I
    :cond_8
    const/high16 v0, 0x110000

    #@7c
    .restart local v0    # "limit":I
    move v1, v2

    #@7d
    .end local v2    # "listIndex":I
    .restart local v1    # "listIndex":I
    goto :goto_0

    #@7e
    .line 392
    :cond_9
    :goto_4
    iget-object v6, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    #@80
    add-int/lit8 v5, v4, 0x1

    #@82
    .end local v4    # "start":I
    .local v5, "start":I
    const/4 v8, 0x1

    #@83
    aput-boolean v8, v6, v4

    #@85
    .line 393
    if-ge v5, v0, :cond_a

    #@87
    if-ge v5, v9, :cond_a

    #@89
    move v4, v5

    #@8a
    .end local v5    # "start":I
    .restart local v4    # "start":I
    goto :goto_4

    #@8b
    .line 394
    .end local v4    # "start":I
    .restart local v5    # "start":I
    :cond_a
    if-le v0, v9, :cond_0

    #@8d
    move v2, v1

    #@8e
    .end local v1    # "listIndex":I
    .restart local v2    # "listIndex":I
    move v4, v5

    #@8f
    .end local v5    # "start":I
    .restart local v4    # "start":I
    goto :goto_1

    #@90
    :cond_b
    move v6, v7

    #@91
    .line 398
    goto :goto_2

    #@92
    .line 404
    :cond_c
    iget-object v6, p0, Landroid/icu/impl/BMPSet;->list:[I

    #@94
    add-int/lit8 v1, v2, 0x1

    #@96
    .end local v2    # "listIndex":I
    .restart local v1    # "listIndex":I
    aget v4, v6, v2

    #@98
    .line 405
    iget v6, p0, Landroid/icu/impl/BMPSet;->listLength:I

    #@9a
    if-ge v1, v6, :cond_d

    #@9c
    .line 406
    iget-object v6, p0, Landroid/icu/impl/BMPSet;->list:[I

    #@9e
    add-int/lit8 v2, v1, 0x1

    #@a0
    .end local v1    # "listIndex":I
    .restart local v2    # "listIndex":I
    aget v0, v6, v1

    #@a2
    move v1, v2

    #@a3
    .end local v2    # "listIndex":I
    .restart local v1    # "listIndex":I
    :goto_5
    move v2, v1

    #@a4
    .end local v1    # "listIndex":I
    .restart local v2    # "listIndex":I
    goto/16 :goto_1

    #@a6
    .line 408
    .end local v2    # "listIndex":I
    .restart local v1    # "listIndex":I
    :cond_d
    const/high16 v0, 0x110000

    #@a8
    goto :goto_5

    #@a9
    .line 450
    .end local v1    # "listIndex":I
    .restart local v2    # "listIndex":I
    .restart local v3    # "minStart":I
    :cond_e
    iget-object v6, p0, Landroid/icu/impl/BMPSet;->list:[I

    #@ab
    add-int/lit8 v1, v2, 0x1

    #@ad
    .end local v2    # "listIndex":I
    .restart local v1    # "listIndex":I
    aget v4, v6, v2

    #@af
    .line 451
    iget v6, p0, Landroid/icu/impl/BMPSet;->listLength:I

    #@b1
    if-ge v1, v6, :cond_f

    #@b3
    .line 452
    iget-object v6, p0, Landroid/icu/impl/BMPSet;->list:[I

    #@b5
    add-int/lit8 v2, v1, 0x1

    #@b7
    .end local v1    # "listIndex":I
    .restart local v2    # "listIndex":I
    aget v0, v6, v1

    #@b9
    move v1, v2

    #@ba
    .end local v2    # "listIndex":I
    .restart local v1    # "listIndex":I
    :goto_6
    move v2, v1

    #@bb
    .end local v1    # "listIndex":I
    .restart local v2    # "listIndex":I
    goto/16 :goto_3

    #@bd
    .line 454
    .end local v2    # "listIndex":I
    .restart local v1    # "listIndex":I
    :cond_f
    const/high16 v0, 0x110000

    #@bf
    goto :goto_6
.end method

.method private static set32x64Bits([III)V
    .locals 10
    .param p0, "table"    # [I
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/16 v9, 0x40

    #@3
    const/4 v7, 0x1

    #@4
    .line 327
    sget-boolean v8, Landroid/icu/impl/BMPSet;->-assertionsDisabled:Z

    #@6
    if-nez v8, :cond_1

    #@8
    array-length v8, p0

    #@9
    if-ne v9, v8, :cond_0

    #@b
    move v6, v7

    #@c
    :cond_0
    if-nez v6, :cond_1

    #@e
    new-instance v6, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v6

    #@14
    .line 328
    :cond_1
    shr-int/lit8 v1, p1, 0x6

    #@16
    .line 329
    .local v1, "lead":I
    and-int/lit8 v4, p1, 0x3f

    #@18
    .line 332
    .local v4, "trail":I
    shl-int v0, v7, v1

    #@1a
    .line 333
    .local v0, "bits":I
    add-int/lit8 v6, p1, 0x1

    #@1c
    if-ne v6, p2, :cond_2

    #@1e
    .line 334
    aget v6, p0, v4

    #@20
    or-int/2addr v6, v0

    #@21
    aput v6, p0, v4

    #@23
    .line 335
    return-void

    #@24
    .line 338
    :cond_2
    shr-int/lit8 v2, p2, 0x6

    #@26
    .line 339
    .local v2, "limitLead":I
    and-int/lit8 v3, p2, 0x3f

    #@28
    .line 341
    .local v3, "limitTrail":I
    if-ne v1, v2, :cond_3

    #@2a
    :goto_0
    move v5, v4

    #@2b
    .line 343
    .end local v4    # "trail":I
    .local v5, "trail":I
    if-ge v5, v3, :cond_8

    #@2d
    .line 344
    add-int/lit8 v4, v5, 0x1

    #@2f
    .end local v5    # "trail":I
    .restart local v4    # "trail":I
    aget v6, p0, v5

    #@31
    or-int/2addr v6, v0

    #@32
    aput v6, p0, v5

    #@34
    goto :goto_0

    #@35
    .line 350
    :cond_3
    if-lez v4, :cond_5

    #@37
    .line 352
    :goto_1
    add-int/lit8 v5, v4, 0x1

    #@39
    .end local v4    # "trail":I
    .restart local v5    # "trail":I
    aget v6, p0, v4

    #@3b
    or-int/2addr v6, v0

    #@3c
    aput v6, p0, v4

    #@3e
    .line 353
    if-ge v5, v9, :cond_4

    #@40
    move v4, v5

    #@41
    .end local v5    # "trail":I
    .restart local v4    # "trail":I
    goto :goto_1

    #@42
    .line 354
    .end local v4    # "trail":I
    .restart local v5    # "trail":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@44
    move v4, v5

    #@45
    .line 356
    .end local v5    # "trail":I
    .restart local v4    # "trail":I
    :cond_5
    if-ge v1, v2, :cond_7

    #@47
    .line 357
    shl-int v6, v7, v1

    #@49
    add-int/lit8 v6, v6, -0x1

    #@4b
    not-int v0, v6

    #@4c
    .line 358
    const/16 v6, 0x20

    #@4e
    if-ge v2, v6, :cond_6

    #@50
    .line 359
    shl-int v6, v7, v2

    #@52
    add-int/lit8 v6, v6, -0x1

    #@54
    and-int/2addr v0, v6

    #@55
    .line 361
    :cond_6
    const/4 v4, 0x0

    #@56
    :goto_2
    if-ge v4, v9, :cond_7

    #@58
    .line 362
    aget v6, p0, v4

    #@5a
    or-int/2addr v6, v0

    #@5b
    aput v6, p0, v4

    #@5d
    .line 361
    add-int/lit8 v4, v4, 0x1

    #@5f
    goto :goto_2

    #@60
    .line 369
    :cond_7
    shl-int v0, v7, v2

    #@62
    .line 370
    const/4 v4, 0x0

    #@63
    :goto_3
    if-ge v4, v3, :cond_9

    #@65
    .line 371
    aget v6, p0, v4

    #@67
    or-int/2addr v6, v0

    #@68
    aput v6, p0, v4

    #@6a
    .line 370
    add-int/lit8 v4, v4, 0x1

    #@6c
    goto :goto_3

    #@6d
    .end local v4    # "trail":I
    .restart local v5    # "trail":I
    :cond_8
    move v4, v5

    #@6e
    .line 326
    .end local v5    # "trail":I
    .restart local v4    # "trail":I
    :cond_9
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 6
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 100
    const/16 v4, 0xff

    #@4
    if-gt p1, v4, :cond_0

    #@6
    .line 101
    iget-object v2, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    #@8
    aget-boolean v2, v2, p1

    #@a
    return v2

    #@b
    .line 102
    :cond_0
    const/16 v4, 0x7ff

    #@d
    if-gt p1, v4, :cond_2

    #@f
    .line 103
    iget-object v4, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    #@11
    and-int/lit8 v5, p1, 0x3f

    #@13
    aget v4, v4, v5

    #@15
    shr-int/lit8 v5, p1, 0x6

    #@17
    shl-int v5, v2, v5

    #@19
    and-int/2addr v4, v5

    #@1a
    if-eqz v4, :cond_1

    #@1c
    :goto_0
    return v2

    #@1d
    :cond_1
    move v2, v3

    #@1e
    goto :goto_0

    #@1f
    .line 104
    :cond_2
    const v4, 0xd800

    #@22
    if-lt p1, v4, :cond_3

    #@24
    const v4, 0xe000

    #@27
    if-lt p1, v4, :cond_6

    #@29
    const v4, 0xffff

    #@2c
    if-gt p1, v4, :cond_6

    #@2e
    .line 105
    :cond_3
    shr-int/lit8 v0, p1, 0xc

    #@30
    .line 106
    .local v0, "lead":I
    iget-object v4, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    #@32
    shr-int/lit8 v5, p1, 0x6

    #@34
    and-int/lit8 v5, v5, 0x3f

    #@36
    aget v4, v4, v5

    #@38
    shr-int/2addr v4, v0

    #@39
    const v5, 0x10001

    #@3c
    and-int v1, v4, v5

    #@3e
    .line 107
    .local v1, "twoBits":I
    if-gt v1, v2, :cond_5

    #@40
    .line 110
    if-eqz v1, :cond_4

    #@42
    :goto_1
    return v2

    #@43
    :cond_4
    move v2, v3

    #@44
    goto :goto_1

    #@45
    .line 113
    :cond_5
    iget-object v2, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@47
    aget v2, v2, v0

    #@49
    iget-object v3, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@4b
    add-int/lit8 v4, v0, 0x1

    #@4d
    aget v3, v3, v4

    #@4f
    invoke-direct {p0, p1, v2, v3}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    #@52
    move-result v2

    #@53
    return v2

    #@54
    .line 115
    .end local v0    # "lead":I
    .end local v1    # "twoBits":I
    :cond_6
    const v2, 0x10ffff

    #@57
    if-gt p1, v2, :cond_7

    #@59
    .line 117
    iget-object v2, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@5b
    const/16 v3, 0xd

    #@5d
    aget v2, v2, v3

    #@5f
    iget-object v3, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@61
    const/16 v4, 0x11

    #@63
    aget v3, v3, v4

    #@65
    invoke-direct {p0, p1, v2, v3}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    #@68
    move-result v2

    #@69
    return v2

    #@6a
    .line 121
    :cond_7
    return v3
.end method

.method public final span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I
    .locals 13
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;
    .param p4, "outCount"    # Landroid/icu/util/OutputInt;

    #@0
    .prologue
    .line 140
    move v3, p2

    #@1
    .line 141
    .local v3, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v5

    #@5
    .line 142
    .local v5, "limit":I
    const/4 v6, 0x0

    #@6
    .line 143
    .local v6, "numSupplementary":I
    sget-object v10, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@8
    move-object/from16 v0, p3

    #@a
    if-eq v10, v0, :cond_a

    #@c
    .line 145
    :goto_0
    if-ge v3, v5, :cond_0

    #@e
    .line 146
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@11
    move-result v1

    #@12
    .line 147
    .local v1, "c":C
    const/16 v10, 0xff

    #@14
    if-gt v1, v10, :cond_2

    #@16
    .line 148
    iget-object v10, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    #@18
    aget-boolean v10, v10, v1

    #@1a
    if-nez v10, :cond_3

    #@1c
    .line 222
    .end local v1    # "c":C
    :cond_0
    :goto_1
    if-eqz p4, :cond_1

    #@1e
    .line 223
    sub-int v7, v3, p2

    #@20
    .line 224
    .local v7, "spanLength":I
    sub-int v10, v7, v6

    #@22
    move-object/from16 v0, p4

    #@24
    iput v10, v0, Landroid/icu/util/OutputInt;->value:I

    #@26
    .line 226
    .end local v7    # "spanLength":I
    :cond_1
    return v3

    #@27
    .line 151
    .restart local v1    # "c":C
    :cond_2
    const/16 v10, 0x7ff

    #@29
    if-gt v1, v10, :cond_4

    #@2b
    .line 152
    iget-object v10, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    #@2d
    and-int/lit8 v11, v1, 0x3f

    #@2f
    aget v10, v10, v11

    #@31
    shr-int/lit8 v11, v1, 0x6

    #@33
    const/4 v12, 0x1

    #@34
    shl-int v11, v12, v11

    #@36
    and-int/2addr v10, v11

    #@37
    if-eqz v10, :cond_0

    #@39
    .line 180
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 155
    :cond_4
    const v10, 0xd800

    #@3f
    if-lt v1, v10, :cond_5

    #@41
    .line 156
    const v10, 0xdc00

    #@44
    if-lt v1, v10, :cond_6

    #@46
    .line 157
    :cond_5
    shr-int/lit8 v4, v1, 0xc

    #@48
    .line 158
    .local v4, "lead":I
    iget-object v10, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    #@4a
    shr-int/lit8 v11, v1, 0x6

    #@4c
    and-int/lit8 v11, v11, 0x3f

    #@4e
    aget v10, v10, v11

    #@50
    shr-int/2addr v10, v4

    #@51
    const v11, 0x10001

    #@54
    and-int v9, v10, v11

    #@56
    .line 159
    .local v9, "twoBits":I
    const/4 v10, 0x1

    #@57
    if-gt v9, v10, :cond_7

    #@59
    .line 162
    if-nez v9, :cond_3

    #@5b
    goto :goto_1

    #@5c
    .line 156
    .end local v4    # "lead":I
    .end local v9    # "twoBits":I
    :cond_6
    add-int/lit8 v10, v3, 0x1

    #@5e
    if-eq v10, v5, :cond_5

    #@60
    add-int/lit8 v10, v3, 0x1

    #@62
    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    #@65
    move-result v2

    #@66
    .local v2, "c2":C
    const v10, 0xdc00

    #@69
    if-lt v2, v10, :cond_5

    #@6b
    const v10, 0xe000

    #@6e
    if-ge v2, v10, :cond_5

    #@70
    .line 173
    invoke-static {v1, v2}, Landroid/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    #@73
    move-result v8

    #@74
    .line 174
    .local v8, "supplementary":I
    iget-object v10, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@76
    const/16 v11, 0x10

    #@78
    aget v10, v10, v11

    #@7a
    iget-object v11, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@7c
    const/16 v12, 0x11

    #@7e
    aget v11, v11, v12

    #@80
    invoke-direct {p0, v8, v10, v11}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    #@83
    move-result v10

    #@84
    if-eqz v10, :cond_0

    #@86
    .line 177
    add-int/lit8 v6, v6, 0x1

    #@88
    .line 178
    add-int/lit8 v3, v3, 0x1

    #@8a
    goto :goto_2

    #@8b
    .line 167
    .end local v2    # "c2":C
    .end local v8    # "supplementary":I
    .restart local v4    # "lead":I
    .restart local v9    # "twoBits":I
    :cond_7
    iget-object v10, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@8d
    aget v10, v10, v4

    #@8f
    iget-object v11, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@91
    add-int/lit8 v12, v4, 0x1

    #@93
    aget v11, v11, v12

    #@95
    invoke-direct {p0, v1, v10, v11}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    #@98
    move-result v10

    #@99
    if-nez v10, :cond_3

    #@9b
    goto :goto_1

    #@9c
    .line 216
    .end local v4    # "lead":I
    .end local v9    # "twoBits":I
    .restart local v2    # "c2":C
    .restart local v8    # "supplementary":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    #@9e
    .line 217
    add-int/lit8 v3, v3, 0x1

    #@a0
    .line 219
    .end local v2    # "c2":C
    .end local v8    # "supplementary":I
    :cond_9
    add-int/lit8 v3, v3, 0x1

    #@a2
    .line 184
    .end local v1    # "c":C
    :cond_a
    if-ge v3, v5, :cond_0

    #@a4
    .line 185
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@a7
    move-result v1

    #@a8
    .line 186
    .restart local v1    # "c":C
    const/16 v10, 0xff

    #@aa
    if-gt v1, v10, :cond_b

    #@ac
    .line 187
    iget-object v10, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    #@ae
    aget-boolean v10, v10, v1

    #@b0
    if-eqz v10, :cond_9

    #@b2
    goto/16 :goto_1

    #@b4
    .line 190
    :cond_b
    const/16 v10, 0x7ff

    #@b6
    if-gt v1, v10, :cond_c

    #@b8
    .line 191
    iget-object v10, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    #@ba
    and-int/lit8 v11, v1, 0x3f

    #@bc
    aget v10, v10, v11

    #@be
    shr-int/lit8 v11, v1, 0x6

    #@c0
    const/4 v12, 0x1

    #@c1
    shl-int v11, v12, v11

    #@c3
    and-int/2addr v10, v11

    #@c4
    if-eqz v10, :cond_9

    #@c6
    goto/16 :goto_1

    #@c8
    .line 194
    :cond_c
    const v10, 0xd800

    #@cb
    if-lt v1, v10, :cond_d

    #@cd
    .line 195
    const v10, 0xdc00

    #@d0
    if-lt v1, v10, :cond_e

    #@d2
    .line 196
    :cond_d
    shr-int/lit8 v4, v1, 0xc

    #@d4
    .line 197
    .restart local v4    # "lead":I
    iget-object v10, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    #@d6
    shr-int/lit8 v11, v1, 0x6

    #@d8
    and-int/lit8 v11, v11, 0x3f

    #@da
    aget v10, v10, v11

    #@dc
    shr-int/2addr v10, v4

    #@dd
    const v11, 0x10001

    #@e0
    and-int v9, v10, v11

    #@e2
    .line 198
    .restart local v9    # "twoBits":I
    const/4 v10, 0x1

    #@e3
    if-gt v9, v10, :cond_f

    #@e5
    .line 201
    if-eqz v9, :cond_9

    #@e7
    goto/16 :goto_1

    #@e9
    .line 195
    .end local v4    # "lead":I
    .end local v9    # "twoBits":I
    :cond_e
    add-int/lit8 v10, v3, 0x1

    #@eb
    if-eq v10, v5, :cond_d

    #@ed
    add-int/lit8 v10, v3, 0x1

    #@ef
    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    #@f2
    move-result v2

    #@f3
    .restart local v2    # "c2":C
    const v10, 0xdc00

    #@f6
    if-lt v2, v10, :cond_d

    #@f8
    const v10, 0xe000

    #@fb
    if-ge v2, v10, :cond_d

    #@fd
    .line 212
    invoke-static {v1, v2}, Landroid/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    #@100
    move-result v8

    #@101
    .line 213
    .restart local v8    # "supplementary":I
    iget-object v10, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@103
    const/16 v11, 0x10

    #@105
    aget v10, v10, v11

    #@107
    iget-object v11, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@109
    const/16 v12, 0x11

    #@10b
    aget v11, v11, v12

    #@10d
    invoke-direct {p0, v8, v10, v11}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    #@110
    move-result v10

    #@111
    if-eqz v10, :cond_8

    #@113
    goto/16 :goto_1

    #@115
    .line 206
    .end local v2    # "c2":C
    .end local v8    # "supplementary":I
    .restart local v4    # "lead":I
    .restart local v9    # "twoBits":I
    :cond_f
    iget-object v10, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@117
    aget v10, v10, v4

    #@119
    iget-object v11, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@11b
    add-int/lit8 v12, v4, 0x1

    #@11d
    aget v11, v11, v12

    #@11f
    invoke-direct {p0, v1, v10, v11}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    #@122
    move-result v10

    #@123
    if-eqz v10, :cond_9

    #@125
    goto/16 :goto_1
.end method

.method public final spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "limit"    # I
    .param p3, "spanCondition"    # Landroid/icu/text/UnicodeSet$SpanCondition;

    #@0
    .prologue
    .line 239
    sget-object v5, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    #@2
    if-eq v5, p3, :cond_8

    #@4
    .line 242
    :cond_0
    add-int/lit8 p2, p2, -0x1

    #@6
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    #@9
    move-result v0

    #@a
    .line 243
    .local v0, "c":C
    const/16 v5, 0xff

    #@c
    if-gt v0, v5, :cond_2

    #@e
    .line 244
    iget-object v5, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    #@10
    aget-boolean v5, v5, v0

    #@12
    if-nez v5, :cond_3

    #@14
    .line 320
    :cond_1
    :goto_0
    add-int/lit8 v5, p2, 0x1

    #@16
    return v5

    #@17
    .line 247
    :cond_2
    const/16 v5, 0x7ff

    #@19
    if-gt v0, v5, :cond_4

    #@1b
    .line 248
    iget-object v5, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    #@1d
    and-int/lit8 v6, v0, 0x3f

    #@1f
    aget v5, v5, v6

    #@21
    shr-int/lit8 v6, v0, 0x6

    #@23
    const/4 v7, 0x1

    #@24
    shl-int v6, v7, v6

    #@26
    and-int/2addr v5, v6

    #@27
    if-eqz v5, :cond_1

    #@29
    .line 275
    :cond_3
    :goto_1
    if-nez p2, :cond_0

    #@2b
    .line 276
    const/4 v5, 0x0

    #@2c
    return v5

    #@2d
    .line 251
    :cond_4
    const v5, 0xd800

    #@30
    if-lt v0, v5, :cond_5

    #@32
    .line 252
    const v5, 0xdc00

    #@35
    if-ge v0, v5, :cond_6

    #@37
    .line 253
    :cond_5
    shr-int/lit8 v2, v0, 0xc

    #@39
    .line 254
    .local v2, "lead":I
    iget-object v5, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    #@3b
    shr-int/lit8 v6, v0, 0x6

    #@3d
    and-int/lit8 v6, v6, 0x3f

    #@3f
    aget v5, v5, v6

    #@41
    shr-int/2addr v5, v2

    #@42
    const v6, 0x10001

    #@45
    and-int v4, v5, v6

    #@47
    .line 255
    .local v4, "twoBits":I
    const/4 v5, 0x1

    #@48
    if-gt v4, v5, :cond_7

    #@4a
    .line 258
    if-nez v4, :cond_3

    #@4c
    goto :goto_0

    #@4d
    .line 252
    .end local v2    # "lead":I
    .end local v4    # "twoBits":I
    :cond_6
    if-eqz p2, :cond_5

    #@4f
    add-int/lit8 v5, p2, -0x1

    #@51
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@54
    move-result v1

    #@55
    .local v1, "c2":C
    const v5, 0xd800

    #@58
    if-lt v1, v5, :cond_5

    #@5a
    const v5, 0xdc00

    #@5d
    if-ge v1, v5, :cond_5

    #@5f
    .line 269
    invoke-static {v1, v0}, Landroid/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    #@62
    move-result v3

    #@63
    .line 270
    .local v3, "supplementary":I
    iget-object v5, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@65
    const/16 v6, 0x10

    #@67
    aget v5, v5, v6

    #@69
    iget-object v6, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@6b
    const/16 v7, 0x11

    #@6d
    aget v6, v6, v7

    #@6f
    invoke-direct {p0, v3, v5, v6}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    #@72
    move-result v5

    #@73
    if-eqz v5, :cond_1

    #@75
    .line 273
    add-int/lit8 p2, p2, -0x1

    #@77
    goto :goto_1

    #@78
    .line 263
    .end local v1    # "c2":C
    .end local v3    # "supplementary":I
    .restart local v2    # "lead":I
    .restart local v4    # "twoBits":I
    :cond_7
    iget-object v5, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@7a
    aget v5, v5, v2

    #@7c
    iget-object v6, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@7e
    add-int/lit8 v7, v2, 0x1

    #@80
    aget v6, v6, v7

    #@82
    invoke-direct {p0, v0, v5, v6}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    #@85
    move-result v5

    #@86
    if-nez v5, :cond_3

    #@88
    goto :goto_0

    #@89
    .line 282
    .end local v0    # "c":C
    .end local v2    # "lead":I
    .end local v4    # "twoBits":I
    :cond_8
    add-int/lit8 p2, p2, -0x1

    #@8b
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    #@8e
    move-result v0

    #@8f
    .line 283
    .restart local v0    # "c":C
    const/16 v5, 0xff

    #@91
    if-gt v0, v5, :cond_a

    #@93
    .line 284
    iget-object v5, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    #@95
    aget-boolean v5, v5, v0

    #@97
    if-nez v5, :cond_1

    #@99
    .line 315
    :cond_9
    :goto_2
    if-nez p2, :cond_8

    #@9b
    .line 316
    const/4 v5, 0x0

    #@9c
    return v5

    #@9d
    .line 287
    :cond_a
    const/16 v5, 0x7ff

    #@9f
    if-gt v0, v5, :cond_b

    #@a1
    .line 288
    iget-object v5, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    #@a3
    and-int/lit8 v6, v0, 0x3f

    #@a5
    aget v5, v5, v6

    #@a7
    shr-int/lit8 v6, v0, 0x6

    #@a9
    const/4 v7, 0x1

    #@aa
    shl-int v6, v7, v6

    #@ac
    and-int/2addr v5, v6

    #@ad
    if-eqz v5, :cond_9

    #@af
    goto/16 :goto_0

    #@b1
    .line 291
    :cond_b
    const v5, 0xd800

    #@b4
    if-lt v0, v5, :cond_c

    #@b6
    .line 292
    const v5, 0xdc00

    #@b9
    if-ge v0, v5, :cond_d

    #@bb
    .line 293
    :cond_c
    shr-int/lit8 v2, v0, 0xc

    #@bd
    .line 294
    .restart local v2    # "lead":I
    iget-object v5, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    #@bf
    shr-int/lit8 v6, v0, 0x6

    #@c1
    and-int/lit8 v6, v6, 0x3f

    #@c3
    aget v5, v5, v6

    #@c5
    shr-int/2addr v5, v2

    #@c6
    const v6, 0x10001

    #@c9
    and-int v4, v5, v6

    #@cb
    .line 295
    .restart local v4    # "twoBits":I
    const/4 v5, 0x1

    #@cc
    if-gt v4, v5, :cond_e

    #@ce
    .line 298
    if-eqz v4, :cond_9

    #@d0
    goto/16 :goto_0

    #@d2
    .line 292
    .end local v2    # "lead":I
    .end local v4    # "twoBits":I
    :cond_d
    if-eqz p2, :cond_c

    #@d4
    add-int/lit8 v5, p2, -0x1

    #@d6
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@d9
    move-result v1

    #@da
    .restart local v1    # "c2":C
    const v5, 0xd800

    #@dd
    if-lt v1, v5, :cond_c

    #@df
    const v5, 0xdc00

    #@e2
    if-ge v1, v5, :cond_c

    #@e4
    .line 309
    invoke-static {v1, v0}, Landroid/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    #@e7
    move-result v3

    #@e8
    .line 310
    .restart local v3    # "supplementary":I
    iget-object v5, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@ea
    const/16 v6, 0x10

    #@ec
    aget v5, v5, v6

    #@ee
    iget-object v6, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@f0
    const/16 v7, 0x11

    #@f2
    aget v6, v6, v7

    #@f4
    invoke-direct {p0, v3, v5, v6}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    #@f7
    move-result v5

    #@f8
    if-nez v5, :cond_1

    #@fa
    .line 313
    add-int/lit8 p2, p2, -0x1

    #@fc
    goto :goto_2

    #@fd
    .line 303
    .end local v1    # "c2":C
    .end local v3    # "supplementary":I
    .restart local v2    # "lead":I
    .restart local v4    # "twoBits":I
    :cond_e
    iget-object v5, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@ff
    aget v5, v5, v2

    #@101
    iget-object v6, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    #@103
    add-int/lit8 v7, v2, 0x1

    #@105
    aget v6, v6, v7

    #@107
    invoke-direct {p0, v0, v5, v6}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    #@10a
    move-result v5

    #@10b
    if-eqz v5, :cond_9

    #@10d
    goto/16 :goto_0
.end method
