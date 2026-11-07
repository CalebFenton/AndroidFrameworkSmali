.class public final Landroid/icu/impl/coll/FCDIterCollationIterator;
.super Landroid/icu/impl/coll/IterCollationIterator;
.source "FCDIterCollationIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/FCDIterCollationIterator$State;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist limit:I

.field private final blacklist nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field private blacklist normalized:Ljava/lang/StringBuilder;

.field private blacklist pos:I

.field private blacklist s:Ljava/lang/StringBuilder;

.field private blacklist start:I

.field private blacklist state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 24
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;I)V
    .registers 6
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "numeric"    # Z
    .param p3, "ui"    # Landroid/icu/text/UCharacterIterator;
    .param p4, "startIndex"    # I

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/coll/IterCollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;)V

    .line 28
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    .line 29
    iput p4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 30
    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    .line 31
    return-void
.end method

.method private blacklist nextSegment()Z
    .registers 9

    .line 259
    nop

    .line 261
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    .line 263
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 266
    :cond_16
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 268
    :goto_1b
    const/4 v0, 0x0

    .line 271
    .local v0, "prevCC":I
    :goto_1c
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v2

    .line 272
    .local v2, "c":I
    const/4 v3, 0x1

    if-gez v2, :cond_26

    goto :goto_8c

    .line 273
    :cond_26
    iget-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v4, v2}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v4

    .line 274
    .local v4, "fcd16":I
    shr-int/lit8 v5, v4, 0x8

    .line 275
    .local v5, "leadCC":I
    if-nez v5, :cond_3e

    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_3e

    .line 277
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    .line 278
    goto :goto_8c

    .line 280
    :cond_3e
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 281
    if-eqz v5, :cond_87

    if-gt v0, v5, :cond_4d

    invoke-static {v4}, Landroid/icu/impl/coll/CollationFCD;->isFCD16OfTibetanCompositeVowel(I)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 284
    :cond_4d
    :goto_4d
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v2

    .line 285
    if-gez v2, :cond_56

    goto :goto_66

    .line 286
    :cond_56
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v6, v2}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v6

    const/16 v7, 0xff

    if-gt v6, v7, :cond_81

    .line 287
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    .line 288
    nop

    .line 292
    :goto_66
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalize(Ljava/lang/CharSequence;)V

    .line 293
    iget v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iput v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 294
    iget v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v7, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    .line 295
    sget-object v6, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    .line 296
    iput v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    .line 297
    return v3

    .line 290
    :cond_81
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 299
    :cond_87
    and-int/lit16 v0, v4, 0xff

    .line 300
    if-nez v0, :cond_a9

    .line 302
    nop

    .line 305
    .end local v2    # "c":I
    .end local v4    # "fcd16":I
    .end local v5    # "leadCC":I
    :goto_8c
    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    .line 306
    nop

    .line 307
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Landroid/icu/text/UCharacterIterator;->moveIndex(I)I

    .line 308
    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    .line 309
    return v3

    .line 304
    :cond_a9
    goto/16 :goto_1c
.end method

.method private blacklist normalize(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 405
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    if-nez v0, :cond_b

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    .line 409
    :cond_b
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, v1}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/Appendable;

    .line 410
    return-void
.end method

.method private blacklist previousSegment()Z
    .registers 8

    .line 348
    nop

    .line 350
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    .line 352
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    if-nez v0, :cond_15

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 355
    :cond_15
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 357
    :goto_1b
    const/4 v0, 0x0

    .line 360
    .local v0, "nextCC":I
    :goto_1c
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v1

    .line 361
    .local v1, "c":I
    const/4 v2, 0x1

    if-gez v1, :cond_27

    goto/16 :goto_9c

    .line 362
    :cond_27
    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v3, v1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v3

    .line 363
    .local v3, "fcd16":I
    and-int/lit16 v4, v3, 0xff

    .line 364
    .local v4, "trailCC":I
    if-nez v4, :cond_3f

    iget-object v5, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_3f

    .line 366
    iget-object v5, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v5}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    .line 367
    goto :goto_9c

    .line 369
    :cond_3f
    iget-object v5, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 370
    if-eqz v4, :cond_97

    if-eqz v0, :cond_4a

    if-gt v4, v0, :cond_50

    .line 371
    :cond_4a
    invoke-static {v3}, Landroid/icu/impl/coll/CollationFCD;->isFCD16OfTibetanCompositeVowel(I)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 373
    :cond_50
    :goto_50
    const/16 v5, 0xff

    if-le v3, v5, :cond_71

    .line 374
    iget-object v5, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v5}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v1

    .line 375
    if-gez v1, :cond_5d

    goto :goto_71

    .line 376
    :cond_5d
    iget-object v5, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v5, v1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v3

    .line 377
    if-nez v3, :cond_6b

    .line 378
    iget-object v5, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v5}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    .line 379
    goto :goto_71

    .line 381
    :cond_6b
    iget-object v5, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_50

    .line 383
    :cond_71
    :goto_71
    iget-object v5, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 384
    iget-object v5, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalize(Ljava/lang/CharSequence;)V

    .line 385
    iget v5, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iput v5, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    .line 386
    iget v5, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 387
    sget-object v5, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_START:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v5, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    .line 388
    iget-object v5, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    iput v5, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    .line 389
    return v2

    .line 391
    :cond_97
    shr-int/lit8 v0, v3, 0x8

    .line 392
    if-nez v0, :cond_b8

    .line 394
    nop

    .line 397
    .end local v1    # "c":I
    .end local v3    # "fcd16":I
    .end local v4    # "trailCC":I
    :goto_9c
    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 398
    nop

    .line 399
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/icu/text/UCharacterIterator;->moveIndex(I)I

    .line 400
    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    .line 401
    return v2

    .line 396
    :cond_b8
    goto/16 :goto_1c
.end method

.method private blacklist switchToBackward()V
    .registers 4

    .line 316
    nop

    .line 319
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_21

    .line 321
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    .line 322
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    if-ne v0, v1, :cond_1c

    .line 323
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    goto :goto_40

    .line 325
    :cond_1c
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    goto :goto_40

    .line 329
    :cond_21
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_28

    goto :goto_3c

    .line 334
    :cond_28
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_38

    .line 335
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/icu/text/UCharacterIterator;->moveIndex(I)I

    .line 337
    :cond_38
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    .line 339
    :goto_3c
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    .line 341
    :goto_40
    return-void
.end method

.method private blacklist switchToForward()V
    .registers 4

    .line 227
    nop

    .line 230
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_21

    .line 232
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 233
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    if-ne v0, v1, :cond_1c

    .line 234
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    goto :goto_40

    .line 236
    :cond_1c
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    goto :goto_40

    .line 240
    :cond_21
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_28

    goto :goto_3c

    .line 245
    :cond_28
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_START:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_38

    .line 246
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/icu/text/UCharacterIterator;->moveIndex(I)I

    .line 248
    :cond_38
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 250
    :goto_3c
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    .line 252
    :goto_40
    return-void
.end method


# virtual methods
.method protected blacklist backwardNumCodePoints(I)V
    .registers 3
    .param p1, "num"    # I

    .line 218
    nop

    :goto_1
    if-lez p1, :cond_c

    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->previousCodePoint()I

    move-result v0

    if-ltz v0, :cond_c

    .line 219
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 221
    :cond_c
    return-void
.end method

.method protected blacklist forwardNumCodePoints(I)V
    .registers 3
    .param p1, "num"    # I

    .line 209
    nop

    :goto_1
    if-lez p1, :cond_c

    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->nextCodePoint()I

    move-result v0

    if-ltz v0, :cond_c

    .line 210
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 212
    :cond_c
    return-void
.end method

.method public blacklist getOffset()I
    .registers 3

    .line 42
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_11

    .line 43
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    return v0

    .line 44
    :cond_11
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_1a

    .line 45
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    return v0

    .line 46
    :cond_1a
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    if-nez v0, :cond_21

    .line 47
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    return v0

    .line 49
    :cond_21
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    return v0
.end method

.method protected blacklist handleGetTrailSurrogate()C
    .registers 4

    .line 189
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_2c

    .line 190
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v0

    .line 191
    .local v0, "trail":I
    invoke-static {v0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->isTrailSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 192
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v2, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v1, v2, :cond_2a

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    goto :goto_2a

    .line 193
    :cond_23
    if-ltz v0, :cond_2a

    .line 194
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->previous()I

    .line 196
    :cond_2a
    :goto_2a
    int-to-char v1, v0

    return v1

    .line 198
    .end local v0    # "trail":I
    :cond_2c
    nop

    .line 200
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    move v1, v0

    .local v1, "trail":C
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_42

    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    .line 201
    :cond_42
    return v1
.end method

.method protected blacklist handleNextCE32()J
    .registers 4

    .line 154
    nop

    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_3c

    .line 155
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v0

    .line 156
    .local v0, "c":I
    if-gez v0, :cond_15

    .line 157
    const-wide v1, -0xffffff40L

    return-wide v1

    .line 159
    :cond_15
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 160
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    .line 161
    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 162
    :cond_2d
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->previous()I

    .line 163
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->nextSegment()Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    const/4 v0, -0x1

    .line 165
    const-wide/16 v1, 0xc0

    return-wide v1

    .line 171
    .end local v0    # "c":I
    :cond_3c
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_55

    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    if-eq v0, v1, :cond_55

    .line 172
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v0

    .line 173
    .restart local v0    # "c":I
    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    .line 174
    goto :goto_76

    .line 176
    .end local v0    # "c":I
    :cond_55
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_82

    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eq v0, v1, :cond_82

    .line 178
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 179
    .restart local v0    # "c":I
    nop

    .line 184
    :cond_76
    :goto_76
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Landroid/icu/impl/Trie2_32;->getFromU16SingleLead(C)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/FCDIterCollationIterator;->makeCodePointAndCE32Pair(II)J

    move-result-wide v1

    return-wide v1

    .line 181
    .end local v0    # "c":I
    :cond_82
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->switchToForward()V

    goto/16 :goto_1
.end method

.method public blacklist nextCodePoint()I
    .registers 5

    .line 57
    nop

    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_56

    .line 58
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v0

    .line 59
    .local v0, "c":I
    if-gez v0, :cond_10

    .line 60
    return v0

    .line 62
    :cond_10
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 63
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    .line 64
    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 65
    :cond_28
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->previous()I

    .line 66
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->nextSegment()Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    const/4 v1, -0x1

    return v1

    .line 72
    :cond_35
    invoke-static {v0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 73
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v1

    .line 74
    .local v1, "trail":I
    invoke-static {v1}, Landroid/icu/impl/coll/FCDIterCollationIterator;->isTrailSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 75
    int-to-char v2, v0

    int-to-char v3, v1

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 76
    :cond_4e
    if-ltz v1, :cond_55

    .line 77
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->previous()I

    .line 80
    .end local v1    # "trail":I
    :cond_55
    return v0

    .line 81
    .end local v0    # "c":I
    :cond_56
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_73

    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    if-eq v0, v1, :cond_73

    .line 82
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    .line 83
    .restart local v0    # "c":I
    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    .line 84
    nop

    .line 85
    return v0

    .line 86
    .end local v0    # "c":I
    :cond_73
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_99

    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eq v0, v1, :cond_99

    .line 88
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v0

    .line 89
    .restart local v0    # "c":I
    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    .line 90
    return v0

    .line 92
    .end local v0    # "c":I
    :cond_99
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->switchToForward()V

    goto/16 :goto_1
.end method

.method public blacklist previousCodePoint()I
    .registers 5

    .line 101
    nop

    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_6c

    .line 102
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->previous()I

    move-result v0

    .line 103
    .local v0, "c":I
    const/4 v1, -0x1

    if-gez v0, :cond_1a

    .line 104
    const/4 v2, 0x0

    iput v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iput v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 105
    sget-object v2, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    .line 106
    return v1

    .line 108
    :cond_1a
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 109
    const/4 v2, -0x1

    .line 110
    .local v2, "prev":I
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    move-result v3

    if-nez v3, :cond_58

    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    .line 111
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->previous()I

    move-result v3

    move v2, v3

    invoke-static {v3}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_58

    .line 122
    :cond_35
    invoke-static {v0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->isTrailSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 123
    if-gez v2, :cond_43

    .line 124
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->previous()I

    move-result v2

    .line 126
    :cond_43
    invoke-static {v2}, Landroid/icu/impl/coll/FCDIterCollationIterator;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 127
    int-to-char v1, v2

    int-to-char v3, v0

    invoke-static {v1, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    return v1

    .line 130
    :cond_50
    if-ltz v2, :cond_6b

    .line 131
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->next()I

    goto :goto_6b

    .line 112
    :cond_58
    :goto_58
    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->next()I

    .line 113
    if-ltz v2, :cond_64

    .line 114
    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->next()I

    .line 116
    :cond_64
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->previousSegment()Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    return v1

    .line 134
    .end local v2    # "prev":I
    :cond_6b
    :goto_6b
    return v0

    .line 135
    .end local v0    # "c":I
    :cond_6c
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_89

    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    if-eq v0, v1, :cond_89

    .line 136
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v0

    .line 137
    .restart local v0    # "c":I
    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    .line 138
    nop

    .line 139
    return v0

    .line 140
    .end local v0    # "c":I
    :cond_89
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_a9

    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    if-eqz v0, :cond_a9

    .line 141
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->codePointBefore(I)I

    move-result v0

    .line 142
    .restart local v0    # "c":I
    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    .line 143
    return v0

    .line 145
    .end local v0    # "c":I
    :cond_a9
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->switchToBackward()V

    goto/16 :goto_1
.end method

.method public blacklist resetToOffset(I)V
    .registers 3
    .param p1, "newOffset"    # I

    .line 35
    invoke-super {p0, p1}, Landroid/icu/impl/coll/IterCollationIterator;->resetToOffset(I)V

    .line 36
    iput p1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 37
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    .line 38
    return-void
.end method
