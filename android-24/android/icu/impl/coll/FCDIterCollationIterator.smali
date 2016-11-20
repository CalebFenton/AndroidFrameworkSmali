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
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private limit:I

.field private final nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field private normalized:Ljava/lang/StringBuilder;

.field private pos:I

.field private s:Ljava/lang/StringBuilder;

.field private start:I

.field private state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/FCDIterCollationIterator;

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
    sput-boolean v0, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    #@b
    .line 22
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;I)V
    .locals 1
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "numeric"    # Z
    .param p3, "ui"    # Landroid/icu/text/UCharacterIterator;
    .param p4, "startIndex"    # I

    #@0
    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/coll/IterCollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;)V

    #@3
    .line 26
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@5
    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@7
    .line 27
    iput p4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    #@9
    .line 28
    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@b
    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@d
    .line 24
    return-void
.end method

.method private nextSegment()Z
    .locals 8

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 257
    sget-boolean v6, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    #@4
    if-nez v6, :cond_1

    #@6
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@8
    sget-object v7, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@a
    if-ne v6, v7, :cond_0

    #@c
    move v6, v5

    #@d
    :goto_0
    if-nez v6, :cond_1

    #@f
    new-instance v4, Ljava/lang/AssertionError;

    #@11
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@14
    throw v4

    #@15
    :cond_0
    move v6, v4

    #@16
    goto :goto_0

    #@17
    .line 259
    :cond_1
    iget-object v6, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@19
    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    #@1c
    move-result v6

    #@1d
    iput v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@1f
    .line 261
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    #@21
    if-nez v6, :cond_4

    #@23
    .line 262
    new-instance v6, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    iput-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    #@2a
    .line 266
    :goto_1
    const/4 v3, 0x0

    #@2b
    .line 269
    .local v3, "prevCC":I
    :cond_2
    iget-object v6, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@2d
    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    #@30
    move-result v0

    #@31
    .line 270
    .local v0, "c":I
    if-gez v0, :cond_5

    #@33
    .line 303
    :goto_2
    iget v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@35
    iget-object v7, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    #@37
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    #@3a
    move-result v7

    #@3b
    add-int/2addr v6, v7

    #@3c
    iput v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    #@3e
    .line 304
    sget-boolean v6, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    #@40
    if-nez v6, :cond_b

    #@42
    iget v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@44
    iget v7, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    #@46
    if-eq v6, v7, :cond_3

    #@48
    move v4, v5

    #@49
    :cond_3
    if-nez v4, :cond_b

    #@4b
    new-instance v4, Ljava/lang/AssertionError;

    #@4d
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@50
    throw v4

    #@51
    .line 264
    .end local v0    # "c":I
    .end local v3    # "prevCC":I
    :cond_4
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    #@53
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    #@56
    goto :goto_1

    #@57
    .line 271
    .restart local v0    # "c":I
    .restart local v3    # "prevCC":I
    :cond_5
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@59
    invoke-virtual {v6, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@5c
    move-result v1

    #@5d
    .line 272
    .local v1, "fcd16":I
    shr-int/lit8 v2, v1, 0x8

    #@5f
    .line 273
    .local v2, "leadCC":I
    if-nez v2, :cond_6

    #@61
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    #@63
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@66
    move-result v6

    #@67
    if-eqz v6, :cond_6

    #@69
    .line 275
    iget-object v6, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@6b
    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    #@6e
    goto :goto_2

    #@6f
    .line 278
    :cond_6
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    #@71
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@74
    .line 279
    if-eqz v2, :cond_a

    #@76
    if-gt v3, v2, :cond_7

    #@78
    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->isFCD16OfTibetanCompositeVowel(I)Z

    #@7b
    move-result v6

    #@7c
    if-eqz v6, :cond_a

    #@7e
    .line 282
    :cond_7
    :goto_3
    iget-object v6, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@80
    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    #@83
    move-result v0

    #@84
    .line 283
    if-gez v0, :cond_8

    #@86
    .line 290
    :goto_4
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    #@88
    invoke-direct {p0, v6}, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalize(Ljava/lang/CharSequence;)V

    #@8b
    .line 291
    iget v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@8d
    iput v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    #@8f
    .line 292
    iget v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@91
    iget-object v7, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    #@93
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    #@96
    move-result v7

    #@97
    add-int/2addr v6, v7

    #@98
    iput v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    #@9a
    .line 293
    sget-object v6, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@9c
    iput-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@9e
    .line 294
    iput v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@a0
    .line 295
    return v5

    #@a1
    .line 284
    :cond_8
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@a3
    invoke-virtual {v6, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@a6
    move-result v6

    #@a7
    const/16 v7, 0xff

    #@a9
    if-gt v6, v7, :cond_9

    #@ab
    .line 285
    iget-object v6, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@ad
    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    #@b0
    goto :goto_4

    #@b1
    .line 288
    :cond_9
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    #@b3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@b6
    goto :goto_3

    #@b7
    .line 297
    :cond_a
    and-int/lit16 v3, v1, 0xff

    #@b9
    .line 298
    if-nez v3, :cond_2

    #@bb
    goto/16 :goto_2

    #@bd
    .line 305
    .end local v1    # "fcd16":I
    .end local v2    # "leadCC":I
    :cond_b
    iget-object v4, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@bf
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    #@c1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@c4
    move-result v6

    #@c5
    neg-int v6, v6

    #@c6
    invoke-virtual {v4, v6}, Landroid/icu/text/UCharacterIterator;->moveIndex(I)I

    #@c9
    .line 306
    sget-object v4, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@cb
    iput-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@cd
    .line 307
    return v5
.end method

.method private normalize(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 403
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    #@b
    .line 407
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@d
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    #@f
    invoke-virtual {v0, p1, v1}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/Appendable;

    #@12
    .line 402
    return-void
.end method

.method private previousSegment()Z
    .locals 8

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 346
    sget-boolean v6, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    #@4
    if-nez v6, :cond_1

    #@6
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@8
    sget-object v7, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@a
    if-ne v6, v7, :cond_0

    #@c
    move v6, v5

    #@d
    :goto_0
    if-nez v6, :cond_1

    #@f
    new-instance v4, Ljava/lang/AssertionError;

    #@11
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@14
    throw v4

    #@15
    :cond_0
    move v6, v4

    #@16
    goto :goto_0

    #@17
    .line 348
    :cond_1
    iget-object v6, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@19
    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    #@1c
    move-result v6

    #@1d
    iput v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@1f
    .line 350
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    #@21
    if-nez v6, :cond_4

    #@23
    .line 351
    new-instance v6, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    iput-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    #@2a
    .line 355
    :goto_1
    const/4 v2, 0x0

    #@2b
    .line 358
    .local v2, "nextCC":I
    :cond_2
    iget-object v6, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@2d
    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    #@30
    move-result v0

    #@31
    .line 359
    .local v0, "c":I
    if-gez v0, :cond_5

    #@33
    .line 395
    :goto_2
    iget v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@35
    iget-object v7, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    #@37
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    #@3a
    move-result v7

    #@3b
    sub-int/2addr v6, v7

    #@3c
    iput v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    #@3e
    .line 396
    sget-boolean v6, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    #@40
    if-nez v6, :cond_d

    #@42
    iget v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@44
    iget v7, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    #@46
    if-eq v6, v7, :cond_3

    #@48
    move v4, v5

    #@49
    :cond_3
    if-nez v4, :cond_d

    #@4b
    new-instance v4, Ljava/lang/AssertionError;

    #@4d
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@50
    throw v4

    #@51
    .line 353
    .end local v0    # "c":I
    .end local v2    # "nextCC":I
    :cond_4
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    #@53
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    #@56
    goto :goto_1

    #@57
    .line 360
    .restart local v0    # "c":I
    .restart local v2    # "nextCC":I
    :cond_5
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@59
    invoke-virtual {v6, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@5c
    move-result v1

    #@5d
    .line 361
    .local v1, "fcd16":I
    and-int/lit16 v3, v1, 0xff

    #@5f
    .line 362
    .local v3, "trailCC":I
    if-nez v3, :cond_6

    #@61
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    #@63
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@66
    move-result v6

    #@67
    if-eqz v6, :cond_6

    #@69
    .line 364
    iget-object v6, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@6b
    invoke-virtual {v6}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    #@6e
    goto :goto_2

    #@6f
    .line 367
    :cond_6
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    #@71
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@74
    .line 368
    if-eqz v3, :cond_a

    #@76
    if-eqz v2, :cond_9

    #@78
    if-le v3, v2, :cond_9

    #@7a
    .line 371
    :cond_7
    :goto_3
    const/16 v4, 0xff

    #@7c
    if-le v1, v4, :cond_8

    #@7e
    .line 372
    iget-object v4, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@80
    invoke-virtual {v4}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    #@83
    move-result v0

    #@84
    .line 373
    if-gez v0, :cond_b

    #@86
    .line 381
    :cond_8
    :goto_4
    iget-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    #@88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    #@8b
    .line 382
    iget-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {p0, v4}, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalize(Ljava/lang/CharSequence;)V

    #@90
    .line 383
    iget v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@92
    iput v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    #@94
    .line 384
    iget v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@96
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    #@98
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@9b
    move-result v6

    #@9c
    sub-int/2addr v4, v6

    #@9d
    iput v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    #@9f
    .line 385
    sget-object v4, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_START:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@a1
    iput-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@a3
    .line 386
    iget-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    #@a5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@a8
    move-result v4

    #@a9
    iput v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@ab
    .line 387
    return v5

    #@ac
    .line 369
    :cond_9
    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->isFCD16OfTibetanCompositeVowel(I)Z

    #@af
    move-result v6

    #@b0
    .line 368
    if-nez v6, :cond_7

    #@b2
    .line 389
    :cond_a
    shr-int/lit8 v2, v1, 0x8

    #@b4
    .line 390
    if-nez v2, :cond_2

    #@b6
    goto/16 :goto_2

    #@b8
    .line 374
    :cond_b
    iget-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@ba
    invoke-virtual {v4, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@bd
    move-result v1

    #@be
    .line 375
    if-nez v1, :cond_c

    #@c0
    .line 376
    iget-object v4, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@c2
    invoke-virtual {v4}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    #@c5
    goto :goto_4

    #@c6
    .line 379
    :cond_c
    iget-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    #@c8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@cb
    goto :goto_3

    #@cc
    .line 397
    .end local v1    # "fcd16":I
    .end local v3    # "trailCC":I
    :cond_d
    iget-object v4, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@ce
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    #@d0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@d3
    move-result v6

    #@d4
    invoke-virtual {v4, v6}, Landroid/icu/text/UCharacterIterator;->moveIndex(I)I

    #@d7
    .line 398
    sget-object v4, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@d9
    iput-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@db
    .line 399
    return v5
.end method

.method private switchToBackward()V
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 314
    sget-boolean v2, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    #@4
    if-nez v2, :cond_3

    #@6
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@8
    sget-object v3, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@a
    if-eq v2, v3, :cond_0

    #@c
    .line 315
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@e
    sget-object v3, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@10
    if-ne v2, v3, :cond_1

    #@12
    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@14
    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    #@16
    if-ne v2, v3, :cond_1

    #@18
    .line 314
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    #@1a
    new-instance v0, Ljava/lang/AssertionError;

    #@1c
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@1f
    throw v0

    #@20
    .line 316
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@22
    sget-object v3, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    #@27
    move-result v2

    #@28
    if-ltz v2, :cond_2

    #@2a
    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@2c
    if-eqz v2, :cond_0

    #@2e
    :cond_2
    move v0, v1

    #@2f
    goto :goto_0

    #@30
    .line 317
    :cond_3
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@32
    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@34
    if-ne v0, v1, :cond_5

    #@36
    .line 319
    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@38
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    #@3b
    move-result v0

    #@3c
    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@3e
    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    #@40
    .line 320
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@42
    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    #@44
    if-ne v0, v1, :cond_4

    #@46
    .line 321
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@48
    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@4a
    .line 313
    :goto_1
    return-void

    #@4b
    .line 323
    :cond_4
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@4d
    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@4f
    goto :goto_1

    #@50
    .line 327
    :cond_5
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@52
    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@54
    if-ne v0, v1, :cond_6

    #@56
    .line 337
    :goto_2
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@58
    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@5a
    goto :goto_1

    #@5b
    .line 332
    :cond_6
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@5d
    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@5f
    if-ne v0, v1, :cond_7

    #@61
    .line 333
    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@63
    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    #@65
    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    #@67
    sub-int/2addr v1, v2

    #@68
    invoke-virtual {v0, v1}, Landroid/icu/text/UCharacterIterator;->moveIndex(I)I

    #@6b
    .line 335
    :cond_7
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    #@6d
    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    #@6f
    goto :goto_2
.end method

.method private switchToForward()V
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 225
    sget-boolean v2, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    #@4
    if-nez v2, :cond_3

    #@6
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@8
    sget-object v3, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@a
    if-eq v2, v3, :cond_0

    #@c
    .line 226
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@e
    sget-object v3, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@10
    if-ne v2, v3, :cond_1

    #@12
    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@14
    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    #@16
    if-ne v2, v3, :cond_1

    #@18
    .line 225
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    #@1a
    new-instance v0, Ljava/lang/AssertionError;

    #@1c
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@1f
    throw v0

    #@20
    .line 227
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@22
    sget-object v3, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    #@27
    move-result v2

    #@28
    if-ltz v2, :cond_2

    #@2a
    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@2c
    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@31
    move-result v3

    #@32
    if-eq v2, v3, :cond_0

    #@34
    :cond_2
    move v0, v1

    #@35
    goto :goto_0

    #@36
    .line 228
    :cond_3
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@38
    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@3a
    if-ne v0, v1, :cond_5

    #@3c
    .line 230
    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@3e
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    #@41
    move-result v0

    #@42
    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@44
    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    #@46
    .line 231
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@48
    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    #@4a
    if-ne v0, v1, :cond_4

    #@4c
    .line 232
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@4e
    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@50
    .line 224
    :goto_1
    return-void

    #@51
    .line 234
    :cond_4
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@53
    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@55
    goto :goto_1

    #@56
    .line 238
    :cond_5
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@58
    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@5a
    if-ne v0, v1, :cond_6

    #@5c
    .line 248
    :goto_2
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@5e
    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@60
    goto :goto_1

    #@61
    .line 243
    :cond_6
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@63
    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_START:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@65
    if-ne v0, v1, :cond_7

    #@67
    .line 244
    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@69
    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    #@6b
    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    #@6d
    sub-int/2addr v1, v2

    #@6e
    invoke-virtual {v0, v1}, Landroid/icu/text/UCharacterIterator;->moveIndex(I)I

    #@71
    .line 246
    :cond_7
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    #@73
    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    #@75
    goto :goto_2
.end method


# virtual methods
.method protected backwardNumCodePoints(I)V
    .locals 1
    .param p1, "num"    # I

    #@0
    .prologue
    .line 216
    :goto_0
    if-lez p1, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->previousCodePoint()I

    #@5
    move-result v0

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 217
    add-int/lit8 p1, p1, -0x1

    #@a
    goto :goto_0

    #@b
    .line 213
    :cond_0
    return-void
.end method

.method protected forwardNumCodePoints(I)V
    .locals 1
    .param p1, "num"    # I

    #@0
    .prologue
    .line 207
    :goto_0
    if-lez p1, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->nextCodePoint()I

    #@5
    move-result v0

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 208
    add-int/lit8 p1, p1, -0x1

    #@a
    goto :goto_0

    #@b
    .line 204
    :cond_0
    return-void
.end method

.method public getOffset()I
    .locals 2

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@2
    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    #@7
    move-result v0

    #@8
    if-gtz v0, :cond_0

    #@a
    .line 41
    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@c
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 42
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@13
    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@15
    if-ne v0, v1, :cond_1

    #@17
    .line 43
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@19
    return v0

    #@1a
    .line 44
    :cond_1
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 45
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    #@20
    return v0

    #@21
    .line 47
    :cond_2
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    #@23
    return v0
.end method

.method protected handleGetTrailSurrogate()C
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 187
    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@3
    sget-object v4, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@5
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    #@8
    move-result v3

    #@9
    if-gtz v3, :cond_2

    #@b
    .line 188
    iget-object v2, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@d
    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->next()I

    #@10
    move-result v1

    #@11
    .line 189
    .local v1, "trail":I
    invoke-static {v1}, Landroid/icu/impl/coll/FCDIterCollationIterator;->isTrailSurrogate(I)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 190
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@19
    sget-object v3, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@1b
    if-ne v2, v3, :cond_0

    #@1d
    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@1f
    add-int/lit8 v2, v2, 0x1

    #@21
    iput v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@23
    .line 194
    :cond_0
    :goto_0
    int-to-char v2, v1

    #@24
    return v2

    #@25
    .line 191
    :cond_1
    if-ltz v1, :cond_0

    #@27
    .line 192
    iget-object v2, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@29
    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->previous()I

    #@2c
    goto :goto_0

    #@2d
    .line 196
    .end local v1    # "trail":I
    :cond_2
    sget-boolean v3, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    #@2f
    if-nez v3, :cond_4

    #@31
    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@33
    iget-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@38
    move-result v4

    #@39
    if-ge v3, v4, :cond_3

    #@3b
    const/4 v2, 0x1

    #@3c
    :cond_3
    if-nez v2, :cond_4

    #@3e
    new-instance v2, Ljava/lang/AssertionError;

    #@40
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@43
    throw v2

    #@44
    .line 198
    :cond_4
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    #@46
    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    #@4b
    move-result v0

    #@4c
    .local v0, "trail":C
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@4f
    move-result v2

    #@50
    if-eqz v2, :cond_5

    #@52
    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@54
    add-int/lit8 v2, v2, 0x1

    #@56
    iput v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@58
    .line 199
    :cond_5
    return v0
.end method

.method protected handleNextCE32()J
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 152
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@3
    sget-object v3, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@5
    if-ne v2, v3, :cond_3

    #@7
    .line 153
    iget-object v2, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@9
    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->next()I

    #@c
    move-result v0

    #@d
    .line 154
    .local v0, "c":I
    if-gez v0, :cond_1

    #@f
    .line 155
    const-wide v2, -0xffffff40L

    #@14
    return-wide v2

    #@15
    .line 157
    :cond_1
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_6

    #@1b
    .line 158
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_2

    #@21
    .line 159
    iget-object v2, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@23
    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->current()I

    #@26
    move-result v2

    #@27
    invoke-static {v2}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    #@2a
    move-result v2

    #@2b
    .line 158
    if-eqz v2, :cond_6

    #@2d
    .line 160
    :cond_2
    iget-object v2, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@2f
    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->previous()I

    #@32
    .line 161
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->nextSegment()Z

    #@35
    move-result v2

    #@36
    if-nez v2, :cond_0

    #@38
    .line 162
    const/4 v0, -0x1

    #@39
    .line 163
    const-wide/16 v2, 0xc0

    #@3b
    return-wide v2

    #@3c
    .line 169
    .end local v0    # "c":I
    :cond_3
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@3e
    sget-object v3, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@40
    if-ne v2, v3, :cond_5

    #@42
    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@44
    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    #@46
    if-eq v2, v3, :cond_5

    #@48
    .line 170
    iget-object v2, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@4a
    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->next()I

    #@4d
    move-result v0

    #@4e
    .line 171
    .restart local v0    # "c":I
    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@50
    add-int/lit8 v2, v2, 0x1

    #@52
    iput v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@54
    .line 172
    sget-boolean v2, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    #@56
    if-nez v2, :cond_6

    #@58
    if-ltz v0, :cond_4

    #@5a
    const/4 v1, 0x1

    #@5b
    :cond_4
    if-nez v1, :cond_6

    #@5d
    new-instance v1, Ljava/lang/AssertionError;

    #@5f
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@62
    throw v1

    #@63
    .line 174
    .end local v0    # "c":I
    :cond_5
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@65
    sget-object v3, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@67
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    #@6a
    move-result v2

    #@6b
    if-ltz v2, :cond_7

    #@6d
    .line 175
    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@6f
    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    #@71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@74
    move-result v3

    #@75
    if-eq v2, v3, :cond_7

    #@77
    .line 176
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    #@79
    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@7b
    add-int/lit8 v3, v2, 0x1

    #@7d
    iput v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    #@82
    move-result v0

    #@83
    .line 182
    .restart local v0    # "c":I
    :cond_6
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    #@85
    int-to-char v2, v0

    #@86
    invoke-virtual {v1, v2}, Landroid/icu/impl/Trie2_32;->getFromU16SingleLead(C)I

    #@89
    move-result v1

    #@8a
    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/CollationIterator;->makeCodePointAndCE32Pair(II)J

    #@8d
    move-result-wide v2

    #@8e
    return-wide v2

    #@8f
    .line 179
    .end local v0    # "c":I
    :cond_7
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->switchToForward()V

    #@92
    goto/16 :goto_0
.end method

.method public nextCodePoint()I
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 55
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@3
    sget-object v4, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@5
    if-ne v3, v4, :cond_6

    #@7
    .line 56
    iget-object v3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@9
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->next()I

    #@c
    move-result v0

    #@d
    .line 57
    .local v0, "c":I
    if-gez v0, :cond_1

    #@f
    .line 58
    return v0

    #@10
    .line 60
    :cond_1
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_3

    #@16
    .line 61
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    #@19
    move-result v3

    #@1a
    if-nez v3, :cond_2

    #@1c
    .line 62
    iget-object v3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@1e
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->current()I

    #@21
    move-result v3

    #@22
    invoke-static {v3}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    #@25
    move-result v3

    #@26
    .line 61
    if-eqz v3, :cond_3

    #@28
    .line 63
    :cond_2
    iget-object v3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@2a
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->previous()I

    #@2d
    .line 64
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->nextSegment()Z

    #@30
    move-result v3

    #@31
    if-nez v3, :cond_0

    #@33
    .line 65
    const/4 v2, -0x1

    #@34
    return v2

    #@35
    .line 70
    :cond_3
    invoke-static {v0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->isLeadSurrogate(I)Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_5

    #@3b
    .line 71
    iget-object v2, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@3d
    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->next()I

    #@40
    move-result v1

    #@41
    .line 72
    .local v1, "trail":I
    invoke-static {v1}, Landroid/icu/impl/coll/FCDIterCollationIterator;->isTrailSurrogate(I)Z

    #@44
    move-result v2

    #@45
    if-eqz v2, :cond_4

    #@47
    .line 73
    int-to-char v2, v0

    #@48
    int-to-char v3, v1

    #@49
    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    #@4c
    move-result v2

    #@4d
    return v2

    #@4e
    .line 74
    :cond_4
    if-ltz v1, :cond_5

    #@50
    .line 75
    iget-object v2, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@52
    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->previous()I

    #@55
    .line 78
    .end local v1    # "trail":I
    :cond_5
    return v0

    #@56
    .line 79
    .end local v0    # "c":I
    :cond_6
    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@58
    sget-object v4, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@5a
    if-ne v3, v4, :cond_9

    #@5c
    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@5e
    iget v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    #@60
    if-eq v3, v4, :cond_9

    #@62
    .line 80
    iget-object v3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@64
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    #@67
    move-result v0

    #@68
    .line 81
    .restart local v0    # "c":I
    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@6a
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@6d
    move-result v4

    #@6e
    add-int/2addr v3, v4

    #@6f
    iput v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@71
    .line 82
    sget-boolean v3, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    #@73
    if-nez v3, :cond_8

    #@75
    if-ltz v0, :cond_7

    #@77
    const/4 v2, 0x1

    #@78
    :cond_7
    if-nez v2, :cond_8

    #@7a
    new-instance v2, Ljava/lang/AssertionError;

    #@7c
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@7f
    throw v2

    #@80
    .line 83
    :cond_8
    return v0

    #@81
    .line 84
    .end local v0    # "c":I
    :cond_9
    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@83
    sget-object v4, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@85
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    #@88
    move-result v3

    #@89
    if-ltz v3, :cond_a

    #@8b
    .line 85
    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@8d
    iget-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    #@8f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@92
    move-result v4

    #@93
    if-eq v3, v4, :cond_a

    #@95
    .line 86
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    #@97
    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->codePointAt(I)I

    #@9c
    move-result v0

    #@9d
    .line 87
    .restart local v0    # "c":I
    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@9f
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@a2
    move-result v3

    #@a3
    add-int/2addr v2, v3

    #@a4
    iput v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@a6
    .line 88
    return v0

    #@a7
    .line 90
    .end local v0    # "c":I
    :cond_a
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->switchToForward()V

    #@aa
    goto/16 :goto_0
.end method

.method public previousCodePoint()I
    .locals 6

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 99
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@4
    sget-object v4, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@6
    if-ne v3, v4, :cond_8

    #@8
    .line 100
    iget-object v3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@a
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->previous()I

    #@d
    move-result v0

    #@e
    .line 101
    .local v0, "c":I
    if-gez v0, :cond_1

    #@10
    .line 102
    iput v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@12
    iput v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    #@14
    .line 103
    sget-object v2, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@16
    iput-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@18
    .line 104
    return v5

    #@19
    .line 106
    :cond_1
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_7

    #@1f
    .line 107
    const/4 v1, -0x1

    #@20
    .line 108
    .local v1, "prev":I
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    #@23
    move-result v3

    #@24
    if-nez v3, :cond_2

    #@26
    .line 109
    iget-object v3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@28
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->previous()I

    #@2b
    move-result v1

    #@2c
    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    #@2f
    move-result v3

    #@30
    .line 108
    if-eqz v3, :cond_4

    #@32
    .line 110
    :cond_2
    iget-object v3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@34
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->next()I

    #@37
    .line 111
    if-ltz v1, :cond_3

    #@39
    .line 112
    iget-object v3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@3b
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->next()I

    #@3e
    .line 114
    :cond_3
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->previousSegment()Z

    #@41
    move-result v3

    #@42
    if-nez v3, :cond_0

    #@44
    .line 115
    return v5

    #@45
    .line 120
    :cond_4
    invoke-static {v0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->isTrailSurrogate(I)Z

    #@48
    move-result v2

    #@49
    if-eqz v2, :cond_6

    #@4b
    .line 121
    if-gez v1, :cond_5

    #@4d
    .line 122
    iget-object v2, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@4f
    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->previous()I

    #@52
    move-result v1

    #@53
    .line 124
    :cond_5
    invoke-static {v1}, Landroid/icu/impl/coll/FCDIterCollationIterator;->isLeadSurrogate(I)Z

    #@56
    move-result v2

    #@57
    if-eqz v2, :cond_6

    #@59
    .line 125
    int-to-char v2, v1

    #@5a
    int-to-char v3, v0

    #@5b
    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    #@5e
    move-result v2

    #@5f
    return v2

    #@60
    .line 128
    :cond_6
    if-ltz v1, :cond_7

    #@62
    .line 129
    iget-object v2, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@64
    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->next()I

    #@67
    .line 132
    .end local v1    # "prev":I
    :cond_7
    return v0

    #@68
    .line 133
    .end local v0    # "c":I
    :cond_8
    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@6a
    sget-object v4, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@6c
    if-ne v3, v4, :cond_b

    #@6e
    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@70
    iget v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    #@72
    if-eq v3, v4, :cond_b

    #@74
    .line 134
    iget-object v3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@76
    invoke-virtual {v3}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    #@79
    move-result v0

    #@7a
    .line 135
    .restart local v0    # "c":I
    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@7c
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@7f
    move-result v4

    #@80
    sub-int/2addr v3, v4

    #@81
    iput v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@83
    .line 136
    sget-boolean v3, Landroid/icu/impl/coll/FCDIterCollationIterator;->-assertionsDisabled:Z

    #@85
    if-nez v3, :cond_a

    #@87
    if-ltz v0, :cond_9

    #@89
    const/4 v2, 0x1

    #@8a
    :cond_9
    if-nez v2, :cond_a

    #@8c
    new-instance v2, Ljava/lang/AssertionError;

    #@8e
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@91
    throw v2

    #@92
    .line 137
    :cond_a
    return v0

    #@93
    .line 138
    .end local v0    # "c":I
    :cond_b
    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@95
    sget-object v4, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@97
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    #@9a
    move-result v3

    #@9b
    if-ltz v3, :cond_c

    #@9d
    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@9f
    if-eqz v3, :cond_c

    #@a1
    .line 139
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    #@a3
    iget v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@a5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->codePointBefore(I)I

    #@a8
    move-result v0

    #@a9
    .line 140
    .restart local v0    # "c":I
    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@ab
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@ae
    move-result v3

    #@af
    sub-int/2addr v2, v3

    #@b0
    iput v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    #@b2
    .line 141
    return v0

    #@b3
    .line 143
    .end local v0    # "c":I
    :cond_c
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->switchToBackward()V

    #@b6
    goto/16 :goto_0
.end method

.method public resetToOffset(I)V
    .locals 1
    .param p1, "newOffset"    # I

    #@0
    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/icu/impl/coll/IterCollationIterator;->resetToOffset(I)V

    #@3
    .line 34
    iput p1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    #@5
    .line 35
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@7
    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    #@9
    .line 32
    return-void
.end method
