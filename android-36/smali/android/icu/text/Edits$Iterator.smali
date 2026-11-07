.class public final Landroid/icu/text/Edits$Iterator;
.super Ljava/lang/Object;
.source "Edits.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Edits;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Iterator"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final greylist-max-o array:[C

.field private greylist-max-o changed:Z

.field private final greylist-max-o coarse:Z

.field private greylist-max-o destIndex:I

.field private greylist-max-o dir:I

.field private greylist-max-o index:I

.field private final greylist-max-o length:I

.field private greylist-max-o newLength_:I

.field private greylist-max-o oldLength_:I

.field private final greylist-max-o onlyChanges_:Z

.field private greylist-max-o remaining:I

.field private greylist-max-o replIndex:I

.field private greylist-max-o srcIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 265
    const-class v0, Landroid/icu/text/Edits;

    return-void
.end method

.method private constructor greylist-max-o <init>([CIZZ)V
    .registers 5
    .param p1, "a"    # [C
    .param p2, "len"    # I
    .param p3, "oc"    # Z
    .param p4, "crs"    # Z

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    .line 283
    iput p2, p0, Landroid/icu/text/Edits$Iterator;->length:I

    .line 284
    iput-boolean p3, p0, Landroid/icu/text/Edits$Iterator;->onlyChanges_:Z

    .line 285
    iput-boolean p4, p0, Landroid/icu/text/Edits$Iterator;->coarse:Z

    .line 286
    return-void
.end method

.method synthetic constructor blacklist <init>([CIZZLandroid/icu/text/Edits-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/Edits$Iterator;-><init>([CIZZ)V

    return-void
.end method

.method private greylist-max-o findIndex(IZ)I
    .registers 13
    .param p1, "i"    # I
    .param p2, "findSource"    # Z

    .line 578
    if-gez p1, :cond_4

    const/4 v0, -0x1

    return v0

    .line 580
    :cond_4
    if-eqz p2, :cond_b

    .line 581
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    .line 582
    .local v0, "spanStart":I
    iget v1, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .local v1, "spanLength":I
    goto :goto_f

    .line 584
    .end local v0    # "spanStart":I
    .end local v1    # "spanLength":I
    :cond_b
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    .line 585
    .restart local v0    # "spanStart":I
    iget v1, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    .line 587
    .restart local v1    # "spanLength":I
    :goto_f
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge p1, v0, :cond_95

    .line 588
    div-int/lit8 v4, v0, 0x2

    if-lt p1, v4, :cond_84

    .line 591
    :goto_17
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->previous()Z

    move-result v4

    .line 592
    .local v4, "hasPrevious":Z
    nop

    .line 593
    if-eqz p2, :cond_21

    iget v5, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    goto :goto_23

    :cond_21
    iget v5, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    :goto_23
    move v0, v5

    .line 594
    if-lt p1, v0, :cond_27

    .line 596
    return v3

    .line 598
    :cond_27
    iget v5, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    if-lez v5, :cond_83

    .line 601
    if-eqz p2, :cond_30

    iget v5, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    goto :goto_32

    :cond_30
    iget v5, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    .line 602
    .end local v1    # "spanLength":I
    .local v5, "spanLength":I
    :goto_32
    iget-object v1, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    iget v6, p0, Landroid/icu/text/Edits$Iterator;->index:I

    aget-char v1, v1, v6

    .line 603
    .local v1, "u":I
    nop

    .line 604
    and-int/lit16 v6, v1, 0x1ff

    add-int/2addr v6, v2

    iget v7, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    sub-int/2addr v6, v7

    .line 605
    .local v6, "num":I
    mul-int v7, v6, v5

    .line 606
    .local v7, "len":I
    sub-int v8, v0, v7

    if-lt p1, v8, :cond_68

    .line 607
    sub-int v8, v0, p1

    sub-int/2addr v8, v2

    div-int/2addr v8, v5

    add-int/2addr v8, v2

    .line 609
    .local v8, "n":I
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    iget v9, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    mul-int/2addr v9, v8

    sub-int/2addr v2, v9

    iput v2, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    .line 610
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    iget v9, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    mul-int/2addr v9, v8

    sub-int/2addr v2, v9

    iput v2, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    .line 611
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    iget v9, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    mul-int/2addr v9, v8

    sub-int/2addr v2, v9

    iput v2, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    .line 612
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    add-int/2addr v2, v8

    iput v2, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    .line 613
    return v3

    .line 616
    .end local v8    # "n":I
    :cond_68
    iget v8, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    iget v9, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    mul-int/2addr v9, v6

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    .line 617
    iget v8, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    iget v9, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    mul-int/2addr v9, v6

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    .line 618
    iget v8, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    iget v9, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    mul-int/2addr v9, v6

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    .line 619
    iput v3, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    move v1, v5

    .line 621
    .end local v4    # "hasPrevious":Z
    .end local v5    # "spanLength":I
    .end local v6    # "num":I
    .end local v7    # "len":I
    .local v1, "spanLength":I
    :cond_83
    goto :goto_17

    .line 624
    :cond_84
    iput v3, p0, Landroid/icu/text/Edits$Iterator;->dir:I

    .line 625
    iput v3, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    iput v3, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    iput v3, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    iput v3, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    iput v3, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    iput v3, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    iput v3, p0, Landroid/icu/text/Edits$Iterator;->index:I

    goto :goto_9a

    .line 626
    :cond_95
    add-int v4, v0, v1

    if-ge p1, v4, :cond_9a

    .line 628
    return v3

    .line 630
    :cond_9a
    :goto_9a
    invoke-direct {p0, v3}, Landroid/icu/text/Edits$Iterator;->next(Z)Z

    move-result v4

    if-eqz v4, :cond_ed

    .line 631
    if-eqz p2, :cond_a7

    .line 632
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    .line 633
    iget v1, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    goto :goto_ab

    .line 635
    :cond_a7
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    .line 636
    iget v1, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    .line 638
    :goto_ab
    add-int v4, v0, v1

    if-ge p1, v4, :cond_b0

    .line 640
    return v3

    .line 642
    :cond_b0
    iget v4, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    if-le v4, v2, :cond_9a

    .line 645
    iget v4, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    mul-int/2addr v4, v1

    .line 646
    .local v4, "len":I
    add-int v5, v0, v4

    if-ge p1, v5, :cond_dc

    .line 647
    sub-int v2, p1, v0

    div-int/2addr v2, v1

    .line 648
    .local v2, "n":I
    iget v5, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    iget v6, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    mul-int/2addr v6, v2

    add-int/2addr v5, v6

    iput v5, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    .line 649
    iget v5, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    iget v6, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    mul-int/2addr v6, v2

    add-int/2addr v5, v6

    iput v5, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    .line 650
    iget v5, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    iget v6, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    mul-int/2addr v6, v2

    add-int/2addr v5, v6

    iput v5, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    .line 651
    iget v5, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    sub-int/2addr v5, v2

    iput v5, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    .line 652
    return v3

    .line 655
    .end local v2    # "n":I
    :cond_dc
    iget v5, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    iget v6, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    mul-int/2addr v5, v6

    iput v5, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 656
    iget v5, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    iget v6, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    mul-int/2addr v5, v6

    iput v5, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    .line 657
    iput v3, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    .line 658
    .end local v4    # "len":I
    goto :goto_9a

    .line 660
    :cond_ed
    return v2
.end method

.method private greylist-max-o next(Z)Z
    .registers 10
    .param p1, "onlyChanges"    # Z

    .line 343
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->dir:I

    const/4 v1, 0x1

    if-lez v0, :cond_9

    .line 344
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->updateNextIndexes()V

    goto :goto_1b

    .line 346
    :cond_9
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->dir:I

    if-gez v0, :cond_19

    .line 349
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    if-lez v0, :cond_19

    .line 352
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->index:I

    .line 353
    iput v1, p0, Landroid/icu/text/Edits$Iterator;->dir:I

    .line 354
    return v1

    .line 357
    :cond_19
    iput v1, p0, Landroid/icu/text/Edits$Iterator;->dir:I

    .line 359
    :goto_1b
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2c

    .line 361
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    if-le v0, v1, :cond_2a

    .line 362
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    .line 363
    return v1

    .line 365
    :cond_2a
    iput v2, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    .line 367
    :cond_2c
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->index:I

    iget v3, p0, Landroid/icu/text/Edits$Iterator;->length:I

    if-lt v0, v3, :cond_37

    .line 368
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->noNext()Z

    move-result v0

    return v0

    .line 370
    :cond_37
    iget-object v0, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    iget v3, p0, Landroid/icu/text/Edits$Iterator;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/icu/text/Edits$Iterator;->index:I

    aget-char v0, v0, v3

    .line 371
    .local v0, "u":I
    const/16 v3, 0xfff

    if-gt v0, v3, :cond_82

    .line 373
    iput-boolean v2, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    .line 374
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 375
    :goto_4b
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->index:I

    iget v4, p0, Landroid/icu/text/Edits$Iterator;->length:I

    if-ge v2, v4, :cond_67

    iget-object v2, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    iget v4, p0, Landroid/icu/text/Edits$Iterator;->index:I

    aget-char v2, v2, v4

    move v0, v2

    if-gt v2, v3, :cond_67

    .line 376
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->index:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/icu/text/Edits$Iterator;->index:I

    .line 377
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    add-int/lit8 v4, v0, 0x1

    add-int/2addr v2, v4

    iput v2, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    goto :goto_4b

    .line 379
    :cond_67
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    iput v2, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    .line 380
    if-eqz p1, :cond_81

    .line 381
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->updateNextIndexes()V

    .line 382
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->index:I

    iget v4, p0, Landroid/icu/text/Edits$Iterator;->length:I

    if-lt v2, v4, :cond_7b

    .line 383
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->noNext()Z

    move-result v1

    return v1

    .line 386
    :cond_7b
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->index:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/icu/text/Edits$Iterator;->index:I

    goto :goto_82

    .line 388
    :cond_81
    return v1

    .line 391
    :cond_82
    :goto_82
    iput-boolean v1, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    .line 392
    const/16 v2, 0x6fff

    if-gt v0, v2, :cond_a7

    .line 393
    shr-int/lit8 v4, v0, 0xc

    .line 394
    .local v4, "oldLen":I
    shr-int/lit8 v5, v0, 0x9

    and-int/lit8 v5, v5, 0x7

    .line 395
    .local v5, "newLen":I
    and-int/lit16 v6, v0, 0x1ff

    add-int/2addr v6, v1

    .line 396
    .local v6, "num":I
    iget-boolean v7, p0, Landroid/icu/text/Edits$Iterator;->coarse:Z

    if-eqz v7, :cond_9e

    .line 397
    mul-int v7, v6, v4

    iput v7, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 398
    mul-int v7, v6, v5

    iput v7, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    .line 408
    .end local v4    # "oldLen":I
    .end local v5    # "newLen":I
    .end local v6    # "num":I
    goto :goto_bf

    .line 401
    .restart local v4    # "oldLen":I
    .restart local v5    # "newLen":I
    .restart local v6    # "num":I
    :cond_9e
    iput v4, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 402
    iput v5, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    .line 403
    if-le v6, v1, :cond_a6

    .line 404
    iput v6, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    .line 406
    :cond_a6
    return v1

    .line 409
    .end local v4    # "oldLen":I
    .end local v5    # "newLen":I
    .end local v6    # "num":I
    :cond_a7
    nop

    .line 410
    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    invoke-direct {p0, v4}, Landroid/icu/text/Edits$Iterator;->readLength(I)I

    move-result v4

    iput v4, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 411
    and-int/lit8 v4, v0, 0x3f

    invoke-direct {p0, v4}, Landroid/icu/text/Edits$Iterator;->readLength(I)I

    move-result v4

    iput v4, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    .line 412
    iget-boolean v4, p0, Landroid/icu/text/Edits$Iterator;->coarse:Z

    if-nez v4, :cond_bf

    .line 413
    return v1

    .line 417
    :cond_bf
    :goto_bf
    iget v4, p0, Landroid/icu/text/Edits$Iterator;->index:I

    iget v5, p0, Landroid/icu/text/Edits$Iterator;->length:I

    if-ge v4, v5, :cond_105

    iget-object v4, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    iget v5, p0, Landroid/icu/text/Edits$Iterator;->index:I

    aget-char v4, v4, v5

    move v0, v4

    if-le v4, v3, :cond_105

    .line 418
    iget v4, p0, Landroid/icu/text/Edits$Iterator;->index:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/icu/text/Edits$Iterator;->index:I

    .line 419
    if-gt v0, v2, :cond_eb

    .line 420
    and-int/lit16 v4, v0, 0x1ff

    add-int/2addr v4, v1

    .line 421
    .local v4, "num":I
    iget v5, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    shr-int/lit8 v6, v0, 0xc

    mul-int/2addr v6, v4

    add-int/2addr v5, v6

    iput v5, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 422
    iget v5, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    shr-int/lit8 v6, v0, 0x9

    and-int/lit8 v6, v6, 0x7

    mul-int/2addr v6, v4

    add-int/2addr v5, v6

    iput v5, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    .line 423
    .end local v4    # "num":I
    goto :goto_bf

    .line 424
    :cond_eb
    nop

    .line 425
    iget v4, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    invoke-direct {p0, v5}, Landroid/icu/text/Edits$Iterator;->readLength(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 426
    iget v4, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    and-int/lit8 v5, v0, 0x3f

    invoke-direct {p0, v5}, Landroid/icu/text/Edits$Iterator;->readLength(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    goto :goto_bf

    .line 429
    :cond_105
    return v1
.end method

.method private greylist-max-o noNext()Z
    .registers 2

    .line 325
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->dir:I

    .line 326
    iput-boolean v0, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    .line 327
    iput v0, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 328
    return v0
.end method

.method private greylist-max-o previous()Z
    .registers 10

    .line 436
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->dir:I

    const/4 v1, 0x1

    if-ltz v0, :cond_1b

    .line 437
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->dir:I

    const/4 v2, -0x1

    if-lez v0, :cond_19

    .line 441
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    if-lez v0, :cond_16

    .line 444
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->index:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->index:I

    .line 445
    iput v2, p0, Landroid/icu/text/Edits$Iterator;->dir:I

    .line 446
    return v1

    .line 448
    :cond_16
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->updateNextIndexes()V

    .line 450
    :cond_19
    iput v2, p0, Landroid/icu/text/Edits$Iterator;->dir:I

    .line 452
    :cond_1b
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    const/4 v2, 0x0

    if-lez v0, :cond_38

    .line 454
    iget-object v0, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    iget v3, p0, Landroid/icu/text/Edits$Iterator;->index:I

    aget-char v0, v0, v3

    .line 455
    .local v0, "u":I
    nop

    .line 456
    iget v3, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    and-int/lit16 v4, v0, 0x1ff

    if-gt v3, v4, :cond_36

    .line 457
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    .line 458
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->updatePreviousIndexes()V

    .line 459
    return v1

    .line 461
    :cond_36
    iput v2, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    .line 463
    .end local v0    # "u":I
    :cond_38
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->index:I

    if-gtz v0, :cond_41

    .line 464
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->noNext()Z

    move-result v0

    return v0

    .line 466
    :cond_41
    iget-object v0, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    iget v3, p0, Landroid/icu/text/Edits$Iterator;->index:I

    sub-int/2addr v3, v1

    iput v3, p0, Landroid/icu/text/Edits$Iterator;->index:I

    aget-char v0, v0, v3

    .line 467
    .restart local v0    # "u":I
    const/16 v3, 0xfff

    if-gt v0, v3, :cond_77

    .line 469
    iput-boolean v2, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    .line 470
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 471
    :goto_54
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->index:I

    if-lez v2, :cond_6f

    iget-object v2, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    iget v4, p0, Landroid/icu/text/Edits$Iterator;->index:I

    sub-int/2addr v4, v1

    aget-char v2, v2, v4

    move v0, v2

    if-gt v2, v3, :cond_6f

    .line 472
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->index:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroid/icu/text/Edits$Iterator;->index:I

    .line 473
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    add-int/lit8 v4, v0, 0x1

    add-int/2addr v2, v4

    iput v2, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    goto :goto_54

    .line 475
    :cond_6f
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    iput v2, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    .line 477
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->updatePreviousIndexes()V

    .line 478
    return v1

    .line 480
    :cond_77
    iput-boolean v1, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    .line 481
    const/16 v2, 0x6fff

    const/16 v4, 0x7fff

    if-gt v0, v2, :cond_a1

    .line 482
    shr-int/lit8 v5, v0, 0xc

    .line 483
    .local v5, "oldLen":I
    shr-int/lit8 v6, v0, 0x9

    and-int/lit8 v6, v6, 0x7

    .line 484
    .local v6, "newLen":I
    and-int/lit16 v7, v0, 0x1ff

    add-int/2addr v7, v1

    .line 485
    .local v7, "num":I
    iget-boolean v8, p0, Landroid/icu/text/Edits$Iterator;->coarse:Z

    if-eqz v8, :cond_95

    .line 486
    mul-int v8, v7, v5

    iput v8, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 487
    mul-int v8, v7, v6

    iput v8, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    .line 498
    .end local v5    # "oldLen":I
    .end local v6    # "newLen":I
    .end local v7    # "num":I
    goto :goto_e7

    .line 490
    .restart local v5    # "oldLen":I
    .restart local v6    # "newLen":I
    .restart local v7    # "num":I
    :cond_95
    iput v5, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 491
    iput v6, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    .line 492
    if-le v7, v1, :cond_9d

    .line 493
    iput v1, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    .line 495
    :cond_9d
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->updatePreviousIndexes()V

    .line 496
    return v1

    .line 499
    .end local v5    # "oldLen":I
    .end local v6    # "newLen":I
    .end local v7    # "num":I
    :cond_a1
    if-gt v0, v4, :cond_b6

    .line 501
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    invoke-direct {p0, v5}, Landroid/icu/text/Edits$Iterator;->readLength(I)I

    move-result v5

    iput v5, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 502
    and-int/lit8 v5, v0, 0x3f

    invoke-direct {p0, v5}, Landroid/icu/text/Edits$Iterator;->readLength(I)I

    move-result v5

    iput v5, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    goto :goto_df

    .line 506
    :cond_b6
    nop

    .line 507
    :goto_b7
    iget-object v5, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    iget v6, p0, Landroid/icu/text/Edits$Iterator;->index:I

    sub-int/2addr v6, v1

    iput v6, p0, Landroid/icu/text/Edits$Iterator;->index:I

    aget-char v5, v5, v6

    move v0, v5

    if-le v5, v4, :cond_c4

    goto :goto_b7

    .line 508
    :cond_c4
    nop

    .line 509
    iget v5, p0, Landroid/icu/text/Edits$Iterator;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroid/icu/text/Edits$Iterator;->index:I

    .line 510
    .local v5, "headIndex":I
    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    invoke-direct {p0, v6}, Landroid/icu/text/Edits$Iterator;->readLength(I)I

    move-result v6

    iput v6, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 511
    and-int/lit8 v6, v0, 0x3f

    invoke-direct {p0, v6}, Landroid/icu/text/Edits$Iterator;->readLength(I)I

    move-result v6

    iput v6, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    .line 512
    iput v5, p0, Landroid/icu/text/Edits$Iterator;->index:I

    .line 514
    .end local v5    # "headIndex":I
    :goto_df
    iget-boolean v5, p0, Landroid/icu/text/Edits$Iterator;->coarse:Z

    if-nez v5, :cond_e7

    .line 515
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->updatePreviousIndexes()V

    .line 516
    return v1

    .line 520
    :cond_e7
    :goto_e7
    iget v5, p0, Landroid/icu/text/Edits$Iterator;->index:I

    if-lez v5, :cond_136

    iget-object v5, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    iget v6, p0, Landroid/icu/text/Edits$Iterator;->index:I

    sub-int/2addr v6, v1

    aget-char v5, v5, v6

    move v0, v5

    if-le v5, v3, :cond_136

    .line 521
    iget v5, p0, Landroid/icu/text/Edits$Iterator;->index:I

    sub-int/2addr v5, v1

    iput v5, p0, Landroid/icu/text/Edits$Iterator;->index:I

    .line 522
    if-gt v0, v2, :cond_112

    .line 523
    and-int/lit16 v5, v0, 0x1ff

    add-int/2addr v5, v1

    .line 524
    .local v5, "num":I
    iget v6, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    shr-int/lit8 v7, v0, 0xc

    mul-int/2addr v7, v5

    add-int/2addr v6, v7

    iput v6, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 525
    iget v6, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    shr-int/lit8 v7, v0, 0x9

    and-int/lit8 v7, v7, 0x7

    mul-int/2addr v7, v5

    add-int/2addr v6, v7

    iput v6, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    .end local v5    # "num":I
    goto :goto_135

    .line 526
    :cond_112
    if-gt v0, v4, :cond_135

    .line 528
    iget v5, p0, Landroid/icu/text/Edits$Iterator;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroid/icu/text/Edits$Iterator;->index:I

    .line 529
    .local v5, "headIndex":I
    iget v6, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    shr-int/lit8 v7, v0, 0x6

    and-int/lit8 v7, v7, 0x3f

    invoke-direct {p0, v7}, Landroid/icu/text/Edits$Iterator;->readLength(I)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 530
    iget v6, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    and-int/lit8 v7, v0, 0x3f

    invoke-direct {p0, v7}, Landroid/icu/text/Edits$Iterator;->readLength(I)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    .line 531
    iput v5, p0, Landroid/icu/text/Edits$Iterator;->index:I

    .line 532
    .end local v5    # "headIndex":I
    goto :goto_e7

    .line 526
    :cond_135
    :goto_135
    goto :goto_e7

    .line 534
    :cond_136
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->updatePreviousIndexes()V

    .line 535
    return v1
.end method

.method private greylist-max-o readLength(I)I
    .registers 5
    .param p1, "head"    # I

    .line 289
    const/16 v0, 0x3d

    if-ge p1, v0, :cond_5

    .line 290
    return p1

    .line 291
    :cond_5
    const/16 v0, 0x3e

    if-ge p1, v0, :cond_18

    .line 292
    nop

    .line 293
    nop

    .line 294
    iget-object v0, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    iget v1, p0, Landroid/icu/text/Edits$Iterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/Edits$Iterator;->index:I

    aget-char v0, v0, v1

    and-int/lit16 v0, v0, 0x7fff

    return v0

    .line 296
    :cond_18
    nop

    .line 297
    nop

    .line 298
    nop

    .line 299
    and-int/lit8 v0, p1, 0x1

    shl-int/lit8 v0, v0, 0x1e

    iget-object v1, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    iget v2, p0, Landroid/icu/text/Edits$Iterator;->index:I

    aget-char v1, v1, v2

    and-int/lit16 v1, v1, 0x7fff

    shl-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    iget v2, p0, Landroid/icu/text/Edits$Iterator;->index:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    and-int/lit16 v1, v1, 0x7fff

    or-int/2addr v0, v1

    .line 302
    .local v0, "len":I
    iget v1, p0, Landroid/icu/text/Edits$Iterator;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/icu/text/Edits$Iterator;->index:I

    .line 303
    return v0
.end method

.method private greylist-max-o updateNextIndexes()V
    .registers 3

    .line 308
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    iget v1, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    .line 309
    iget-boolean v0, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    if-eqz v0, :cond_12

    .line 310
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    iget v1, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    .line 312
    :cond_12
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    iget v1, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    .line 313
    return-void
.end method

.method private greylist-max-o updatePreviousIndexes()V
    .registers 3

    .line 316
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    iget v1, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    .line 317
    iget-boolean v0, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    if-eqz v0, :cond_12

    .line 318
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    iget v1, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    .line 320
    :cond_12
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    iget v1, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    .line 321
    return-void
.end method


# virtual methods
.method public whitelist test-api destinationIndex()I
    .registers 2

    .line 795
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    return v0
.end method

.method public whitelist test-api destinationIndexFromSourceIndex(I)I
    .registers 5
    .param p1, "i"    # I

    .line 682
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/icu/text/Edits$Iterator;->findIndex(IZ)I

    move-result v0

    .line 683
    .local v0, "where":I
    if-gez v0, :cond_9

    .line 685
    const/4 v1, 0x0

    return v1

    .line 687
    :cond_9
    if-gtz v0, :cond_22

    iget v1, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    if-ne p1, v1, :cond_10

    goto :goto_22

    .line 691
    :cond_10
    iget-boolean v1, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    if-eqz v1, :cond_1a

    .line 693
    iget v1, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    iget v2, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    add-int/2addr v1, v2

    return v1

    .line 696
    :cond_1a
    iget v1, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    iget v2, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    sub-int v2, p1, v2

    add-int/2addr v1, v2

    return v1

    .line 689
    :cond_22
    :goto_22
    iget v1, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    return v1
.end method

.method public whitelist test-api findDestinationIndex(I)Z
    .registers 4
    .param p1, "i"    # I

    .line 573
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/Edits$Iterator;->findIndex(IZ)I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public whitelist test-api findSourceIndex(I)Z
    .registers 4
    .param p1, "i"    # I

    .line 554
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/icu/text/Edits$Iterator;->findIndex(IZ)I

    move-result v1

    if-nez v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api hasChange()Z
    .registers 2

    .line 743
    iget-boolean v0, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    return v0
.end method

.method public whitelist test-api newLength()I
    .registers 2

    .line 760
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    return v0
.end method

.method public whitelist test-api next()Z
    .registers 2

    .line 336
    iget-boolean v0, p0, Landroid/icu/text/Edits$Iterator;->onlyChanges_:Z

    invoke-direct {p0, v0}, Landroid/icu/text/Edits$Iterator;->next(Z)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api oldLength()I
    .registers 2

    .line 750
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    return v0
.end method

.method public whitelist test-api replacementIndex()I
    .registers 2

    .line 786
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    return v0
.end method

.method public whitelist test-api sourceIndex()I
    .registers 2

    .line 768
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    return v0
.end method

.method public whitelist test-api sourceIndexFromDestinationIndex(I)I
    .registers 5
    .param p1, "i"    # I

    .line 719
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/Edits$Iterator;->findIndex(IZ)I

    move-result v1

    .line 720
    .local v1, "where":I
    if-gez v1, :cond_8

    .line 722
    return v0

    .line 724
    :cond_8
    if-gtz v1, :cond_21

    iget v0, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    if-ne p1, v0, :cond_f

    goto :goto_21

    .line 728
    :cond_f
    iget-boolean v0, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    if-eqz v0, :cond_19

    .line 730
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    iget v2, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    add-int/2addr v0, v2

    return v0

    .line 733
    :cond_19
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    iget v2, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    sub-int v2, p1, v2

    add-int/2addr v0, v2

    return v0

    .line 726
    :cond_21
    :goto_21
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 805
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    const-string v1, "{ src["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    iget v1, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 808
    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    iget v3, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 810
    iget-boolean v2, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    if-eqz v2, :cond_2d

    .line 811
    const-string v2, "] \u21dd dest["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 813
    :cond_2d
    const-string v2, "] \u2261 dest["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    :goto_32
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    iget v3, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 818
    iget-boolean v2, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    if-eqz v2, :cond_61

    .line 819
    const-string v2, "], repl["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 821
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    iget v1, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    iget v2, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 823
    const-string v1, "] }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    .line 825
    :cond_61
    const-string v1, "] (no-change) }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    :goto_66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
