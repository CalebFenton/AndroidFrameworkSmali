.class public final Landroid/icu/impl/coll/FCDUTF16CollationIterator;
.super Landroid/icu/impl/coll/UTF16CollationIterator;
.source "FCDUTF16CollationIterator.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final blacklist rawStart:I


# instance fields
.field private blacklist checkDir:I

.field private final blacklist nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field private blacklist normalized:Ljava/lang/StringBuilder;

.field private blacklist rawLimit:I

.field private blacklist rawSeq:Ljava/lang/CharSequence;

.field private blacklist segmentLimit:I

.field private blacklist segmentStart:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 23
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/coll/CollationData;)V
    .registers 3
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;

    .line 28
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    .line 29
    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    .line 30
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V
    .registers 6
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "numeric"    # Z
    .param p3, "s"    # Ljava/lang/CharSequence;
    .param p4, "p"    # I

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    .line 34
    iput-object p3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    .line 35
    iput p4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    .line 36
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    .line 37
    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    .line 39
    return-void
.end method

.method private blacklist nextSegment()V
    .registers 9

    .line 261
    nop

    .line 263
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 264
    .local v0, "p":I
    const/4 v1, 0x0

    .line 267
    .local v1, "prevCC":I
    :goto_4
    move v2, v0

    .line 268
    .local v2, "q":I
    iget-object v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    invoke-static {v3, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 269
    .local v3, "c":I
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 270
    iget-object v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v4, v3}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v4

    .line 271
    .local v4, "fcd16":I
    shr-int/lit8 v5, v4, 0x8

    .line 272
    .local v5, "leadCC":I
    if-nez v5, :cond_23

    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    if-eq v2, v6, :cond_23

    .line 274
    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    .line 275
    goto :goto_61

    .line 277
    :cond_23
    if-eqz v5, :cond_52

    if-gt v1, v5, :cond_2d

    invoke-static {v4}, Landroid/icu/impl/coll/CollationFCD;->isFCD16OfTibetanCompositeVowel(I)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 280
    :cond_2d
    move v2, v0

    .line 281
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    if-ne v0, v6, :cond_33

    goto :goto_48

    .line 282
    :cond_33
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    invoke-static {v6, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 283
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v0, v6

    .line 284
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v6, v3}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v6

    const/16 v7, 0xff

    if-gt v6, v7, :cond_2d

    .line 285
    :goto_48
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-direct {p0, v6, v2}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalize(II)V

    .line 286
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    iput v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 287
    goto :goto_61

    .line 289
    :cond_52
    and-int/lit16 v1, v4, 0xff

    .line 290
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    if-eq v0, v6, :cond_5c

    if-nez v1, :cond_5b

    goto :goto_5c

    .line 295
    .end local v2    # "q":I
    .end local v3    # "c":I
    .end local v4    # "fcd16":I
    .end local v5    # "leadCC":I
    :cond_5b
    goto :goto_4

    .line 292
    .restart local v2    # "q":I
    .restart local v3    # "c":I
    .restart local v4    # "fcd16":I
    .restart local v5    # "leadCC":I
    :cond_5c
    :goto_5c
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    .line 293
    nop

    .line 296
    .end local v2    # "q":I
    .end local v3    # "c":I
    .end local v4    # "fcd16":I
    .end local v5    # "leadCC":I
    :goto_61
    nop

    .line 297
    const/4 v2, 0x0

    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    .line 298
    return-void
.end method

.method private blacklist normalize(II)V
    .registers 10
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 378
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    if-nez v0, :cond_b

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    .line 382
    :cond_b
    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    sub-int v6, p2, p1

    move v3, p1

    move v4, p2

    .end local p1    # "from":I
    .end local p2    # "to":I
    .local v3, "from":I
    .local v4, "to":I
    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)V

    .line 385
    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    .line 386
    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    .line 387
    iget-object p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    iput-object p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    .line 388
    const/4 p1, 0x0

    iput p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    .line 389
    iget p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    iget-object p2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    .line 390
    return-void
.end method

.method private blacklist previousSegment()V
    .registers 8

    .line 337
    nop

    .line 339
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 340
    .local v0, "p":I
    const/4 v1, 0x0

    .line 343
    .local v1, "nextCC":I
    :goto_4
    move v2, v0

    .line 344
    .local v2, "q":I
    iget-object v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    invoke-static {v3, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 345
    .local v3, "c":I
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    sub-int/2addr v0, v4

    .line 346
    iget-object v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v4, v3}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v4

    .line 347
    .local v4, "fcd16":I
    and-int/lit16 v5, v4, 0xff

    .line 348
    .local v5, "trailCC":I
    if-nez v5, :cond_23

    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    if-eq v2, v6, :cond_23

    .line 350
    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    .line 351
    goto :goto_62

    .line 353
    :cond_23
    if-eqz v5, :cond_55

    if-eqz v1, :cond_29

    if-gt v5, v1, :cond_2f

    .line 354
    :cond_29
    invoke-static {v4}, Landroid/icu/impl/coll/CollationFCD;->isFCD16OfTibetanCompositeVowel(I)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 357
    :cond_2f
    move v2, v0

    .line 358
    const/16 v6, 0xff

    if-le v4, v6, :cond_4b

    if-nez v0, :cond_37

    goto :goto_4b

    .line 359
    :cond_37
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    invoke-static {v6, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 360
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    sub-int/2addr v0, v6

    .line 361
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v6, v3}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v6

    move v4, v6

    if-nez v6, :cond_2f

    .line 362
    :cond_4b
    :goto_4b
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-direct {p0, v2, v6}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalize(II)V

    .line 363
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    iput v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 364
    goto :goto_62

    .line 366
    :cond_55
    shr-int/lit8 v1, v4, 0x8

    .line 367
    if-eqz v0, :cond_5d

    if-nez v1, :cond_5c

    goto :goto_5d

    .line 372
    .end local v2    # "q":I
    .end local v3    # "c":I
    .end local v4    # "fcd16":I
    .end local v5    # "trailCC":I
    :cond_5c
    goto :goto_4

    .line 369
    .restart local v2    # "q":I
    .restart local v3    # "c":I
    .restart local v4    # "fcd16":I
    .restart local v5    # "trailCC":I
    :cond_5d
    :goto_5d
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    .line 370
    nop

    .line 373
    .end local v2    # "q":I
    .end local v3    # "c":I
    .end local v4    # "fcd16":I
    .end local v5    # "trailCC":I
    :goto_62
    nop

    .line 374
    const/4 v2, 0x0

    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    .line 375
    return-void
.end method

.method private blacklist switchToBackward()V
    .registers 5

    .line 306
    nop

    .line 307
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1b

    .line 309
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    .line 310
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    if-ne v0, v3, :cond_18

    .line 311
    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    .line 312
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    goto :goto_32

    .line 314
    :cond_18
    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    goto :goto_32

    .line 318
    :cond_1b
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v0, v3, :cond_22

    goto :goto_2e

    .line 323
    :cond_22
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    .line 324
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 326
    :goto_2e
    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    .line 327
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    .line 329
    :goto_32
    return-void
.end method

.method private blacklist switchToForward()V
    .registers 4

    .line 226
    nop

    .line 227
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    const/4 v1, 0x1

    if-gez v0, :cond_1d

    .line 229
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    .line 230
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    if-ne v0, v2, :cond_19

    .line 231
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    .line 232
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    goto :goto_36

    .line 234
    :cond_19
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    goto :goto_36

    .line 238
    :cond_1d
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v0, v2, :cond_24

    goto :goto_30

    .line 243
    :cond_24
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    .line 244
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 250
    :goto_30
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    .line 251
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    .line 253
    :goto_36
    return-void
.end method


# virtual methods
.method protected blacklist backwardNumCodePoints(I)V
    .registers 3
    .param p1, "num"    # I

    .line 215
    nop

    :goto_1
    if-lez p1, :cond_c

    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->previousCodePoint()I

    move-result v0

    if-ltz v0, :cond_c

    .line 216
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 218
    :cond_c
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 44
    instance-of v0, p1, Landroid/icu/impl/coll/CollationIterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_5f

    .line 45
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationIterator;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    instance-of v0, p1, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    if-nez v0, :cond_10

    goto :goto_5f

    .line 50
    :cond_10
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    .line 52
    .local v0, "o":Landroid/icu/impl/coll/FCDUTF16CollationIterator;
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    iget v3, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-eq v2, v3, :cond_1a

    .line 53
    return v1

    .line 55
    :cond_1a
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    const/4 v3, 0x1

    if-nez v2, :cond_34

    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v2, v4, :cond_27

    move v2, v3

    goto :goto_28

    :cond_27
    move v2, v1

    :goto_28
    iget-object v4, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v5, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v4, v5, :cond_30

    move v4, v3

    goto :goto_31

    :cond_30
    move v4, v1

    :goto_31
    if-eq v2, v4, :cond_34

    .line 56
    return v1

    .line 58
    :cond_34
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-nez v2, :cond_55

    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v2, v4, :cond_3f

    goto :goto_55

    .line 62
    :cond_3f
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    sub-int/2addr v2, v1

    iget v4, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    sub-int/2addr v4, v1

    if-ne v2, v4, :cond_54

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    sub-int/2addr v2, v4

    iget v4, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v5, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    sub-int/2addr v4, v5

    if-ne v2, v4, :cond_54

    move v1, v3

    :cond_54
    return v1

    .line 59
    :cond_55
    :goto_55
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    sub-int/2addr v2, v1

    iget v4, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    sub-int/2addr v4, v1

    if-ne v2, v4, :cond_5e

    move v1, v3

    :cond_5e
    return v1

    .line 48
    .end local v0    # "o":Landroid/icu/impl/coll/FCDUTF16CollationIterator;
    :cond_5f
    :goto_5f
    return v1
.end method

.method protected blacklist forwardNumCodePoints(I)V
    .registers 3
    .param p1, "num"    # I

    .line 206
    nop

    :goto_1
    if-lez p1, :cond_c

    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextCodePoint()I

    move-result v0

    if-ltz v0, :cond_c

    .line 207
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 209
    :cond_c
    return-void
.end method

.method public blacklist getOffset()I
    .registers 3

    .line 84
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_b

    goto :goto_1b

    .line 86
    :cond_b
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    if-ne v0, v1, :cond_16

    .line 87
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    add-int/lit8 v0, v0, 0x0

    return v0

    .line 89
    :cond_16
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    add-int/lit8 v0, v0, 0x0

    return v0

    .line 85
    :cond_1b
    :goto_1b
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v0, v0, 0x0

    return v0
.end method

.method protected blacklist handleNextCE32()J
    .registers 5

    .line 176
    nop

    :goto_1
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-lez v0, :cond_53

    .line 177
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-ne v0, v1, :cond_11

    .line 178
    const-wide v0, -0xffffff40L

    return-wide v0

    .line 180
    :cond_11
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 181
    .local v0, "c":C
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 182
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    move-result v1

    if-nez v1, :cond_3d

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-eq v1, v2, :cond_6a

    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 183
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 184
    :cond_3d
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 185
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextSegment()V

    .line 186
    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_6a

    .line 190
    .end local v0    # "c":C
    :cond_53
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-nez v0, :cond_75

    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-eq v0, v1, :cond_75

    .line 191
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 192
    .restart local v0    # "c":C
    nop

    .line 197
    :cond_6a
    :goto_6a
    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Trie2_32;->getFromU16SingleLead(C)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->makeCodePointAndCE32Pair(II)J

    move-result-wide v1

    return-wide v1

    .line 194
    .end local v0    # "c":C
    :cond_75
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->switchToForward()V

    goto :goto_1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 69
    nop

    .line 70
    const/16 v0, 0x2a

    return v0
.end method

.method public blacklist nextCodePoint()I
    .registers 5

    .line 106
    nop

    :goto_1
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-lez v0, :cond_4f

    .line 107
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-ne v0, v1, :cond_d

    .line 108
    const/4 v0, -0x1

    return v0

    .line 110
    :cond_d
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 111
    .local v0, "c":C
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 112
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    move-result v1

    if-nez v1, :cond_39

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-eq v1, v2, :cond_66

    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 113
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 114
    :cond_39
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 115
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextSegment()V

    .line 116
    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_66

    .line 120
    .end local v0    # "c":C
    :cond_4f
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-nez v0, :cond_8d

    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-eq v0, v1, :cond_8d

    .line 121
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 122
    .restart local v0    # "c":C
    nop

    .line 128
    :cond_66
    :goto_66
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_8c

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-eq v1, v2, :cond_8c

    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 129
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move v2, v1

    .local v2, "trail":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 130
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 131
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    return v1

    .line 133
    .end local v2    # "trail":C
    :cond_8c
    return v0

    .line 124
    .end local v0    # "c":C
    :cond_8d
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->switchToForward()V

    goto/16 :goto_1
.end method

.method public blacklist previousCodePoint()I
    .registers 4

    .line 141
    nop

    :goto_1
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-gez v0, :cond_51

    .line 142
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    if-ne v0, v1, :cond_d

    .line 143
    const/4 v0, -0x1

    return v0

    .line 145
    :cond_d
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 146
    .local v0, "c":C
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 147
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    move-result v1

    if-nez v1, :cond_3b

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    if-eq v1, v2, :cond_68

    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v2, v2, -0x1

    .line 148
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 149
    :cond_3b
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 150
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->previousSegment()V

    .line 151
    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_68

    .line 155
    .end local v0    # "c":C
    :cond_51
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-nez v0, :cond_91

    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    if-eq v0, v1, :cond_91

    .line 156
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 157
    .restart local v0    # "c":C
    nop

    .line 163
    :cond_68
    :goto_68
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_90

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    if-eq v1, v2, :cond_90

    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v2, v2, -0x1

    .line 164
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move v2, v1

    .local v2, "lead":C
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 165
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 166
    invoke-static {v2, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    return v1

    .line 168
    .end local v2    # "lead":C
    :cond_90
    return v0

    .line 159
    .end local v0    # "c":C
    :cond_91
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->switchToBackward()V

    goto/16 :goto_1
.end method

.method public blacklist resetToOffset(I)V
    .registers 3
    .param p1, "newOffset"    # I

    .line 75
    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->reset()V

    .line 76
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    .line 77
    add-int/lit8 v0, p1, 0x0

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    .line 78
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    .line 80
    return-void
.end method

.method public blacklist setText(ZLjava/lang/CharSequence;I)V
    .registers 5
    .param p1, "numeric"    # Z
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "p"    # I

    .line 95
    invoke-super {p0, p1, p2, p3}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 96
    iput-object p2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    .line 97
    iput p3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    .line 98
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    .line 100
    return-void
.end method
