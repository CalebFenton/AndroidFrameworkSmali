.class public final Landroid/icu/impl/coll/FCDUTF16CollationIterator;
.super Landroid/icu/impl/coll/UTF16CollationIterator;
.source "FCDUTF16CollationIterator.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final rawStart:I


# instance fields
.field private checkDir:I

.field private final nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field private normalized:Ljava/lang/StringBuilder;

.field private rawLimit:I

.field private rawSeq:Ljava/lang/CharSequence;

.field private segmentLimit:I

.field private segmentStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

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
    sput-boolean v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->-assertionsDisabled:Z

    #@b
    .line 21
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationData;)V
    .locals 1
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;

    #@0
    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    #@3
    .line 27
    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@5
    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@7
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V
    .locals 1
    .param p1, "data"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "numeric"    # Z
    .param p3, "s"    # Ljava/lang/CharSequence;
    .param p4, "p"    # I

    #@0
    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    #@3
    .line 32
    iput-object p3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@5
    .line 33
    iput p4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@7
    .line 34
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    #@d
    .line 35
    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@f
    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@11
    .line 36
    const/4 v0, 0x1

    #@12
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@14
    .line 30
    return-void
.end method

.method private nextSegment()V
    .locals 10

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 249
    sget-boolean v6, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->-assertionsDisabled:Z

    #@4
    if-nez v6, :cond_1

    #@6
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@8
    if-lez v6, :cond_0

    #@a
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@c
    iget-object v9, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@e
    if-ne v6, v9, :cond_0

    #@10
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@12
    iget v9, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@14
    if-eq v6, v9, :cond_0

    #@16
    move v6, v7

    #@17
    :goto_0
    if-nez v6, :cond_1

    #@19
    new-instance v6, Ljava/lang/AssertionError;

    #@1b
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@1e
    throw v6

    #@1f
    :cond_0
    move v6, v8

    #@20
    goto :goto_0

    #@21
    .line 251
    :cond_1
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@23
    .line 252
    .local v3, "p":I
    const/4 v4, 0x0

    #@24
    .line 255
    .local v4, "prevCC":I
    :cond_2
    move v5, v3

    #@25
    .line 256
    .local v5, "q":I
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@27
    invoke-static {v6, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@2a
    move-result v0

    #@2b
    .line 257
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@2e
    move-result v6

    #@2f
    add-int/2addr v3, v6

    #@30
    .line 258
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@32
    invoke-virtual {v6, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@35
    move-result v1

    #@36
    .line 259
    .local v1, "fcd16":I
    shr-int/lit8 v2, v1, 0x8

    #@38
    .line 260
    .local v2, "leadCC":I
    if-nez v2, :cond_3

    #@3a
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@3c
    if-eq v5, v6, :cond_3

    #@3e
    .line 262
    iput v5, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    #@40
    iput v5, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@42
    .line 284
    :goto_1
    sget-boolean v6, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->-assertionsDisabled:Z

    #@44
    if-nez v6, :cond_a

    #@46
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@48
    iget v9, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@4a
    if-eq v6, v9, :cond_9

    #@4c
    :goto_2
    if-nez v7, :cond_a

    #@4e
    new-instance v6, Ljava/lang/AssertionError;

    #@50
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@53
    throw v6

    #@54
    .line 265
    :cond_3
    if-eqz v2, :cond_7

    #@56
    if-gt v4, v2, :cond_4

    #@58
    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->isFCD16OfTibetanCompositeVowel(I)Z

    #@5b
    move-result v6

    #@5c
    if-eqz v6, :cond_7

    #@5e
    .line 268
    :cond_4
    :goto_3
    move v5, v3

    #@5f
    .line 269
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    #@61
    if-ne v3, v6, :cond_6

    #@63
    .line 273
    :cond_5
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@65
    invoke-direct {p0, v6, v5}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalize(II)V

    #@68
    .line 274
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@6a
    iput v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@6c
    goto :goto_1

    #@6d
    .line 270
    :cond_6
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@6f
    invoke-static {v6, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@72
    move-result v0

    #@73
    .line 271
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@76
    move-result v6

    #@77
    add-int/2addr v3, v6

    #@78
    .line 272
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@7a
    invoke-virtual {v6, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@7d
    move-result v6

    #@7e
    const/16 v9, 0xff

    #@80
    if-le v6, v9, :cond_5

    #@82
    goto :goto_3

    #@83
    .line 277
    :cond_7
    and-int/lit16 v4, v1, 0xff

    #@85
    .line 278
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    #@87
    if-eq v3, v6, :cond_8

    #@89
    if-nez v4, :cond_2

    #@8b
    .line 280
    :cond_8
    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    #@8d
    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@8f
    goto :goto_1

    #@90
    :cond_9
    move v7, v8

    #@91
    .line 284
    goto :goto_2

    #@92
    .line 285
    :cond_a
    iput v8, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@94
    .line 248
    return-void
.end method

.method private normalize(II)V
    .locals 6
    .param p1, "from"    # I
    .param p2, "to"    # I

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    #@b
    .line 370
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@d
    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@f
    iget-object v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    #@11
    sub-int v5, p2, p1

    #@13
    move v2, p1

    #@14
    move v3, p2

    #@15
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)V

    #@18
    .line 373
    iput p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@1a
    .line 374
    iput p2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    #@1c
    .line 375
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    #@1e
    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@20
    .line 376
    const/4 v0, 0x0

    #@21
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@23
    .line 377
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@25
    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@2a
    move-result v1

    #@2b
    add-int/2addr v0, v1

    #@2c
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@2e
    .line 365
    return-void
.end method

.method private previousSegment()V
    .locals 10

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 325
    sget-boolean v6, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->-assertionsDisabled:Z

    #@4
    if-nez v6, :cond_1

    #@6
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@8
    if-gez v6, :cond_0

    #@a
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@c
    iget-object v9, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@e
    if-ne v6, v9, :cond_0

    #@10
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@12
    iget v9, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@14
    if-eq v6, v9, :cond_0

    #@16
    move v6, v7

    #@17
    :goto_0
    if-nez v6, :cond_1

    #@19
    new-instance v6, Ljava/lang/AssertionError;

    #@1b
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@1e
    throw v6

    #@1f
    :cond_0
    move v6, v8

    #@20
    goto :goto_0

    #@21
    .line 327
    :cond_1
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@23
    .line 328
    .local v3, "p":I
    const/4 v2, 0x0

    #@24
    .line 331
    .local v2, "nextCC":I
    :cond_2
    move v4, v3

    #@25
    .line 332
    .local v4, "q":I
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@27
    invoke-static {v6, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@2a
    move-result v0

    #@2b
    .line 333
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@2e
    move-result v6

    #@2f
    sub-int/2addr v3, v6

    #@30
    .line 334
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@32
    invoke-virtual {v6, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@35
    move-result v1

    #@36
    .line 335
    .local v1, "fcd16":I
    and-int/lit16 v5, v1, 0xff

    #@38
    .line 336
    .local v5, "trailCC":I
    if-nez v5, :cond_3

    #@3a
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@3c
    if-eq v4, v6, :cond_3

    #@3e
    .line 338
    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@40
    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@42
    .line 361
    :goto_1
    sget-boolean v6, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->-assertionsDisabled:Z

    #@44
    if-nez v6, :cond_b

    #@46
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@48
    iget v9, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@4a
    if-eq v6, v9, :cond_a

    #@4c
    :goto_2
    if-nez v7, :cond_b

    #@4e
    new-instance v6, Ljava/lang/AssertionError;

    #@50
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@53
    throw v6

    #@54
    .line 341
    :cond_3
    if-eqz v5, :cond_7

    #@56
    if-eqz v2, :cond_6

    #@58
    if-le v5, v2, :cond_6

    #@5a
    .line 345
    :cond_4
    :goto_3
    move v4, v3

    #@5b
    .line 346
    const/16 v6, 0xff

    #@5d
    if-le v1, v6, :cond_5

    #@5f
    if-nez v3, :cond_9

    #@61
    .line 350
    :cond_5
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@63
    invoke-direct {p0, v4, v6}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalize(II)V

    #@66
    .line 351
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@68
    iput v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@6a
    goto :goto_1

    #@6b
    .line 342
    :cond_6
    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->isFCD16OfTibetanCompositeVowel(I)Z

    #@6e
    move-result v6

    #@6f
    .line 341
    if-nez v6, :cond_4

    #@71
    .line 354
    :cond_7
    shr-int/lit8 v2, v1, 0x8

    #@73
    .line 355
    if-eqz v3, :cond_8

    #@75
    if-nez v2, :cond_2

    #@77
    .line 357
    :cond_8
    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@79
    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@7b
    goto :goto_1

    #@7c
    .line 347
    :cond_9
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@7e
    invoke-static {v6, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@81
    move-result v0

    #@82
    .line 348
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@85
    move-result v6

    #@86
    sub-int/2addr v3, v6

    #@87
    .line 349
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@89
    invoke-virtual {v6, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@8c
    move-result v1

    #@8d
    if-eqz v1, :cond_5

    #@8f
    goto :goto_3

    #@90
    :cond_a
    move v7, v8

    #@91
    .line 361
    goto :goto_2

    #@92
    .line 362
    :cond_b
    iput v8, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@94
    .line 324
    return-void
.end method

.method private switchToBackward()V
    .locals 5

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 294
    sget-boolean v2, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->-assertionsDisabled:Z

    #@5
    if-nez v2, :cond_3

    #@7
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@9
    if-lez v2, :cond_1

    #@b
    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@d
    iget-object v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@f
    if-ne v2, v3, :cond_1

    #@11
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    #@13
    new-instance v0, Ljava/lang/AssertionError;

    #@15
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@18
    throw v0

    #@19
    :cond_1
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@1b
    if-nez v2, :cond_2

    #@1d
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@1f
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@21
    if-eq v2, v3, :cond_0

    #@23
    :cond_2
    move v0, v1

    #@24
    goto :goto_0

    #@25
    .line 295
    :cond_3
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@27
    if-lez v0, :cond_5

    #@29
    .line 297
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@2b
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    #@2d
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@2f
    .line 298
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@31
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@33
    if-ne v0, v2, :cond_4

    #@35
    .line 299
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@37
    .line 300
    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@39
    .line 293
    :goto_1
    return-void

    #@3a
    .line 302
    :cond_4
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@3c
    goto :goto_1

    #@3d
    .line 306
    :cond_5
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@3f
    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@41
    if-ne v0, v2, :cond_6

    #@43
    .line 314
    :goto_2
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@45
    .line 315
    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@47
    goto :goto_1

    #@48
    .line 311
    :cond_6
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@4a
    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@4c
    .line 312
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@4e
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    #@50
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@52
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@54
    goto :goto_2
.end method

.method private switchToForward()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 214
    sget-boolean v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->-assertionsDisabled:Z

    #@4
    if-nez v0, :cond_3

    #@6
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@8
    if-gez v0, :cond_1

    #@a
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@c
    iget-object v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@e
    if-ne v0, v3, :cond_1

    #@10
    :cond_0
    move v0, v1

    #@11
    :goto_0
    if-nez v0, :cond_3

    #@13
    new-instance v0, Ljava/lang/AssertionError;

    #@15
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@18
    throw v0

    #@19
    :cond_1
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@1b
    if-nez v0, :cond_2

    #@1d
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@1f
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@21
    if-eq v0, v3, :cond_0

    #@23
    :cond_2
    move v0, v2

    #@24
    goto :goto_0

    #@25
    .line 215
    :cond_3
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@27
    if-gez v0, :cond_5

    #@29
    .line 217
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@2b
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@2d
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@2f
    .line 218
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@31
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    #@33
    if-ne v0, v3, :cond_4

    #@35
    .line 219
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    #@37
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@39
    .line 220
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@3b
    .line 213
    :goto_1
    return-void

    #@3c
    .line 222
    :cond_4
    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@3e
    goto :goto_1

    #@3f
    .line 226
    :cond_5
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@41
    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@43
    if-ne v0, v2, :cond_6

    #@45
    .line 238
    :goto_2
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    #@47
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@49
    .line 239
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@4b
    goto :goto_1

    #@4c
    .line 231
    :cond_6
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@4e
    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@50
    .line 232
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    #@52
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@54
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@56
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@58
    goto :goto_2
.end method


# virtual methods
.method protected backwardNumCodePoints(I)V
    .locals 1
    .param p1, "num"    # I

    #@0
    .prologue
    .line 203
    :goto_0
    if-lez p1, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->previousCodePoint()I

    #@5
    move-result v0

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 204
    add-int/lit8 p1, p1, -0x1

    #@a
    goto :goto_0

    #@b
    .line 200
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 42
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationIterator;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    return v3

    #@9
    :cond_0
    move-object v0, p1

    #@a
    .line 43
    check-cast v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    #@c
    .line 45
    .local v0, "o":Landroid/icu/impl/coll/FCDUTF16CollationIterator;
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@e
    iget v4, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@10
    if-eq v1, v4, :cond_1

    #@12
    return v3

    #@13
    .line 46
    :cond_1
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@15
    if-nez v1, :cond_4

    #@17
    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@19
    iget-object v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@1b
    if-ne v1, v4, :cond_2

    #@1d
    move v1, v2

    #@1e
    :goto_0
    iget-object v4, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@20
    iget-object v5, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@22
    if-ne v4, v5, :cond_3

    #@24
    move v4, v2

    #@25
    :goto_1
    if-eq v1, v4, :cond_4

    #@27
    return v3

    #@28
    :cond_2
    move v1, v3

    #@29
    goto :goto_0

    #@2a
    :cond_3
    move v4, v3

    #@2b
    goto :goto_1

    #@2c
    .line 47
    :cond_4
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@2e
    if-nez v1, :cond_5

    #@30
    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@32
    iget-object v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@34
    if-ne v1, v4, :cond_7

    #@36
    .line 48
    :cond_5
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@38
    add-int/lit8 v1, v1, 0x0

    #@3a
    iget v4, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@3c
    add-int/lit8 v4, v4, 0x0

    #@3e
    if-ne v1, v4, :cond_6

    #@40
    :goto_2
    return v2

    #@41
    :cond_6
    move v2, v3

    #@42
    goto :goto_2

    #@43
    .line 50
    :cond_7
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@45
    add-int/lit8 v1, v1, 0x0

    #@47
    iget v4, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@49
    add-int/lit8 v4, v4, 0x0

    #@4b
    if-ne v1, v4, :cond_8

    #@4d
    .line 51
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@4f
    iget v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@51
    sub-int/2addr v1, v4

    #@52
    iget v4, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@54
    iget v5, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@56
    sub-int/2addr v4, v5

    #@57
    if-ne v1, v4, :cond_8

    #@59
    move v3, v2

    #@5a
    .line 50
    :cond_8
    return v3
.end method

.method protected forwardNumCodePoints(I)V
    .locals 1
    .param p1, "num"    # I

    #@0
    .prologue
    .line 194
    :goto_0
    if-lez p1, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextCodePoint()I

    #@5
    move-result v0

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 195
    add-int/lit8 p1, p1, -0x1

    #@a
    goto :goto_0

    #@b
    .line 191
    :cond_0
    return-void
.end method

.method public getOffset()I
    .locals 2

    #@0
    .prologue
    .line 72
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@6
    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@8
    if-ne v0, v1, :cond_1

    #@a
    .line 73
    :cond_0
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@c
    add-int/lit8 v0, v0, 0x0

    #@e
    return v0

    #@f
    .line 74
    :cond_1
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@11
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@13
    if-ne v0, v1, :cond_2

    #@15
    .line 75
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@17
    add-int/lit8 v0, v0, 0x0

    #@19
    return v0

    #@1a
    .line 77
    :cond_2
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    #@1c
    add-int/lit8 v0, v0, 0x0

    #@1e
    return v0
.end method

.method protected handleNextCE32()J
    .locals 4

    #@0
    .prologue
    .line 164
    :goto_0
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@2
    if-lez v1, :cond_3

    #@4
    .line 165
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@6
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@8
    if-ne v1, v2, :cond_0

    #@a
    .line 166
    const-wide v2, -0xffffff40L

    #@f
    return-wide v2

    #@10
    .line 168
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@12
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@14
    add-int/lit8 v3, v2, 0x1

    #@16
    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@18
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@1b
    move-result v0

    #@1c
    .line 169
    .local v0, "c":C
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 170
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_1

    #@28
    .line 171
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@2a
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@2c
    if-eq v1, v2, :cond_2

    #@2e
    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@30
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@32
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@35
    move-result v1

    #@36
    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    #@39
    move-result v1

    #@3a
    .line 170
    if-eqz v1, :cond_2

    #@3c
    .line 172
    :cond_1
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@3e
    add-int/lit8 v1, v1, -0x1

    #@40
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@42
    .line 173
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextSegment()V

    #@45
    .line 174
    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@47
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@49
    add-int/lit8 v3, v2, 0x1

    #@4b
    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@4d
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@50
    move-result v0

    #@51
    .line 185
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    #@53
    invoke-virtual {v1, v0}, Landroid/icu/impl/Trie2_32;->getFromU16SingleLead(C)I

    #@56
    move-result v1

    #@57
    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->makeCodePointAndCE32Pair(II)J

    #@5a
    move-result-wide v2

    #@5b
    return-wide v2

    #@5c
    .line 178
    .end local v0    # "c":C
    :cond_3
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@5e
    if-nez v1, :cond_4

    #@60
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@62
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@64
    if-eq v1, v2, :cond_4

    #@66
    .line 179
    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@68
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@6a
    add-int/lit8 v3, v2, 0x1

    #@6c
    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@6e
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@71
    move-result v0

    #@72
    .restart local v0    # "c":C
    goto :goto_1

    #@73
    .line 182
    .end local v0    # "c":C
    :cond_4
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->switchToForward()V

    #@76
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 57
    sget-boolean v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/AssertionError;

    #@6
    const-string/jumbo v1, "hashCode not designed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c
    throw v0

    #@d
    .line 58
    :cond_0
    const/16 v0, 0x2a

    #@f
    return v0
.end method

.method public nextCodePoint()I
    .locals 5

    #@0
    .prologue
    .line 94
    :goto_0
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@2
    if-lez v2, :cond_3

    #@4
    .line 95
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@6
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@8
    if-ne v2, v3, :cond_0

    #@a
    .line 96
    const/4 v2, -0x1

    #@b
    return v2

    #@c
    .line 98
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@e
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@10
    add-int/lit8 v4, v3, 0x1

    #@12
    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@14
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@17
    move-result v0

    #@18
    .line 99
    .local v0, "c":C
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 100
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    #@21
    move-result v2

    #@22
    if-nez v2, :cond_1

    #@24
    .line 101
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@26
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@28
    if-eq v2, v3, :cond_2

    #@2a
    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@2c
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@2e
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@31
    move-result v2

    #@32
    invoke-static {v2}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    #@35
    move-result v2

    #@36
    .line 100
    if-eqz v2, :cond_2

    #@38
    .line 102
    :cond_1
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@3a
    add-int/lit8 v2, v2, -0x1

    #@3c
    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@3e
    .line 103
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextSegment()V

    #@41
    .line 104
    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@43
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@45
    add-int/lit8 v4, v3, 0x1

    #@47
    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@49
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@4c
    move-result v0

    #@4d
    .line 116
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@50
    move-result v2

    #@51
    if-eqz v2, :cond_5

    #@53
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@55
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@57
    if-eq v2, v3, :cond_5

    #@59
    .line 117
    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@5b
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@5d
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@60
    move-result v1

    #@61
    .local v1, "trail":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@64
    move-result v2

    #@65
    .line 116
    if-eqz v2, :cond_5

    #@67
    .line 118
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@69
    add-int/lit8 v2, v2, 0x1

    #@6b
    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@6d
    .line 119
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    #@70
    move-result v2

    #@71
    return v2

    #@72
    .line 108
    .end local v0    # "c":C
    .end local v1    # "trail":C
    :cond_3
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@74
    if-nez v2, :cond_4

    #@76
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@78
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@7a
    if-eq v2, v3, :cond_4

    #@7c
    .line 109
    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@7e
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@80
    add-int/lit8 v4, v3, 0x1

    #@82
    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@84
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@87
    move-result v0

    #@88
    .restart local v0    # "c":C
    goto :goto_1

    #@89
    .line 112
    .end local v0    # "c":C
    :cond_4
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->switchToForward()V

    #@8c
    goto/16 :goto_0

    #@8e
    .line 121
    .restart local v0    # "c":C
    :cond_5
    return v0
.end method

.method public previousCodePoint()I
    .locals 4

    #@0
    .prologue
    .line 129
    :goto_0
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@2
    if-gez v2, :cond_3

    #@4
    .line 130
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@6
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@8
    if-ne v2, v3, :cond_0

    #@a
    .line 131
    const/4 v2, -0x1

    #@b
    return v2

    #@c
    .line 133
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@e
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@10
    add-int/lit8 v3, v3, -0x1

    #@12
    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@14
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@17
    move-result v0

    #@18
    .line 134
    .local v0, "c":C
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 135
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    #@21
    move-result v2

    #@22
    if-nez v2, :cond_1

    #@24
    .line 136
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@26
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@28
    if-eq v2, v3, :cond_2

    #@2a
    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@2c
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@2e
    add-int/lit8 v3, v3, -0x1

    #@30
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@33
    move-result v2

    #@34
    invoke-static {v2}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    #@37
    move-result v2

    #@38
    .line 135
    if-eqz v2, :cond_2

    #@3a
    .line 137
    :cond_1
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@3c
    add-int/lit8 v2, v2, 0x1

    #@3e
    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@40
    .line 138
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->previousSegment()V

    #@43
    .line 139
    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@45
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@47
    add-int/lit8 v3, v3, -0x1

    #@49
    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@4b
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@4e
    move-result v0

    #@4f
    .line 151
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@52
    move-result v2

    #@53
    if-eqz v2, :cond_5

    #@55
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@57
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@59
    if-eq v2, v3, :cond_5

    #@5b
    .line 152
    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@5d
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@5f
    add-int/lit8 v3, v3, -0x1

    #@61
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@64
    move-result v1

    #@65
    .local v1, "lead":C
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@68
    move-result v2

    #@69
    .line 151
    if-eqz v2, :cond_5

    #@6b
    .line 153
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@6d
    add-int/lit8 v2, v2, -0x1

    #@6f
    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@71
    .line 154
    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    #@74
    move-result v2

    #@75
    return v2

    #@76
    .line 143
    .end local v0    # "c":C
    .end local v1    # "lead":C
    :cond_3
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@78
    if-nez v2, :cond_4

    #@7a
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@7c
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@7e
    if-eq v2, v3, :cond_4

    #@80
    .line 144
    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@82
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@84
    add-int/lit8 v3, v3, -0x1

    #@86
    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@88
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@8b
    move-result v0

    #@8c
    .restart local v0    # "c":C
    goto :goto_1

    #@8d
    .line 147
    .end local v0    # "c":C
    :cond_4
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->switchToBackward()V

    #@90
    goto/16 :goto_0

    #@92
    .line 156
    .restart local v0    # "c":C
    :cond_5
    return v0
.end method

.method public resetToOffset(I)V
    .locals 1
    .param p1, "newOffset"    # I

    #@0
    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->reset()V

    #@3
    .line 64
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@5
    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@7
    .line 65
    add-int/lit8 v0, p1, 0x0

    #@9
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@b
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@d
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@f
    .line 66
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    #@11
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@13
    .line 67
    const/4 v0, 0x1

    #@14
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@16
    .line 62
    return-void
.end method

.method public setText(ZLjava/lang/CharSequence;I)V
    .locals 1
    .param p1, "numeric"    # Z
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "p"    # I

    #@0
    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    #@3
    .line 84
    iput-object p2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@5
    .line 85
    iput p3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@7
    .line 86
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@d
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    #@f
    .line 87
    const/4 v0, 0x1

    #@10
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@12
    .line 82
    return-void
.end method
