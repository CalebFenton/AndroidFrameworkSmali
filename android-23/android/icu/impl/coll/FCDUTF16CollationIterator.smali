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
    .line 19
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
    .line 24
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    #@3
    .line 25
    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@5
    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@7
    .line 23
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
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    #@3
    .line 30
    iput-object p3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@5
    .line 31
    iput p4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@7
    .line 32
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    #@d
    .line 33
    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@f
    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@11
    .line 34
    const/4 v0, 0x1

    #@12
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@14
    .line 28
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
    .line 247
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
    .line 249
    :cond_1
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@23
    .line 250
    .local v3, "p":I
    const/4 v4, 0x0

    #@24
    .line 253
    .local v4, "prevCC":I
    :cond_2
    move v5, v3

    #@25
    .line 254
    .local v5, "q":I
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@27
    invoke-static {v6, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@2a
    move-result v0

    #@2b
    .line 255
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@2e
    move-result v6

    #@2f
    add-int/2addr v3, v6

    #@30
    .line 256
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@32
    invoke-virtual {v6, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@35
    move-result v1

    #@36
    .line 257
    .local v1, "fcd16":I
    shr-int/lit8 v2, v1, 0x8

    #@38
    .line 258
    .local v2, "leadCC":I
    if-nez v2, :cond_3

    #@3a
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@3c
    if-eq v5, v6, :cond_3

    #@3e
    .line 260
    iput v5, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    #@40
    iput v5, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@42
    .line 282
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
    .line 263
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
    .line 266
    :cond_4
    :goto_3
    move v5, v3

    #@5f
    .line 267
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    #@61
    if-ne v3, v6, :cond_6

    #@63
    .line 271
    :cond_5
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@65
    invoke-direct {p0, v6, v5}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalize(II)V

    #@68
    .line 272
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@6a
    iput v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@6c
    goto :goto_1

    #@6d
    .line 268
    :cond_6
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@6f
    invoke-static {v6, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@72
    move-result v0

    #@73
    .line 269
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@76
    move-result v6

    #@77
    add-int/2addr v3, v6

    #@78
    .line 270
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
    .line 275
    :cond_7
    and-int/lit16 v4, v1, 0xff

    #@85
    .line 276
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    #@87
    if-eq v3, v6, :cond_8

    #@89
    if-nez v4, :cond_2

    #@8b
    .line 278
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
    .line 282
    goto :goto_2

    #@92
    .line 283
    :cond_a
    iput v8, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@94
    .line 246
    return-void
.end method

.method private normalize(II)V
    .locals 6
    .param p1, "from"    # I
    .param p2, "to"    # I

    #@0
    .prologue
    .line 364
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    #@b
    .line 368
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
    .line 371
    iput p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@1a
    .line 372
    iput p2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    #@1c
    .line 373
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    #@1e
    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@20
    .line 374
    const/4 v0, 0x0

    #@21
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@23
    .line 375
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
    .line 363
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
    .line 323
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
    .line 325
    :cond_1
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@23
    .line 326
    .local v3, "p":I
    const/4 v2, 0x0

    #@24
    .line 329
    .local v2, "nextCC":I
    :cond_2
    move v4, v3

    #@25
    .line 330
    .local v4, "q":I
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@27
    invoke-static {v6, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@2a
    move-result v0

    #@2b
    .line 331
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@2e
    move-result v6

    #@2f
    sub-int/2addr v3, v6

    #@30
    .line 332
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@32
    invoke-virtual {v6, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    #@35
    move-result v1

    #@36
    .line 333
    .local v1, "fcd16":I
    and-int/lit16 v5, v1, 0xff

    #@38
    .line 334
    .local v5, "trailCC":I
    if-nez v5, :cond_3

    #@3a
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@3c
    if-eq v4, v6, :cond_3

    #@3e
    .line 336
    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@40
    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@42
    .line 359
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
    .line 339
    :cond_3
    if-eqz v5, :cond_7

    #@56
    if-eqz v2, :cond_6

    #@58
    if-le v5, v2, :cond_6

    #@5a
    .line 343
    :cond_4
    :goto_3
    move v4, v3

    #@5b
    .line 344
    const/16 v6, 0xff

    #@5d
    if-le v1, v6, :cond_5

    #@5f
    if-nez v3, :cond_9

    #@61
    .line 348
    :cond_5
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@63
    invoke-direct {p0, v4, v6}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalize(II)V

    #@66
    .line 349
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@68
    iput v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@6a
    goto :goto_1

    #@6b
    .line 340
    :cond_6
    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->isFCD16OfTibetanCompositeVowel(I)Z

    #@6e
    move-result v6

    #@6f
    .line 339
    if-nez v6, :cond_4

    #@71
    .line 352
    :cond_7
    shr-int/lit8 v2, v1, 0x8

    #@73
    .line 353
    if-eqz v3, :cond_8

    #@75
    if-nez v2, :cond_2

    #@77
    .line 355
    :cond_8
    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@79
    iput v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@7b
    goto :goto_1

    #@7c
    .line 345
    :cond_9
    iget-object v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@7e
    invoke-static {v6, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    #@81
    move-result v0

    #@82
    .line 346
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@85
    move-result v6

    #@86
    sub-int/2addr v3, v6

    #@87
    .line 347
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
    .line 359
    goto :goto_2

    #@92
    .line 360
    :cond_b
    iput v8, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@94
    .line 322
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
    .line 292
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
    .line 293
    :cond_3
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@27
    if-lez v0, :cond_5

    #@29
    .line 295
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@2b
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    #@2d
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@2f
    .line 296
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@31
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@33
    if-ne v0, v2, :cond_4

    #@35
    .line 297
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@37
    .line 298
    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@39
    .line 291
    :goto_1
    return-void

    #@3a
    .line 300
    :cond_4
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@3c
    goto :goto_1

    #@3d
    .line 304
    :cond_5
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@3f
    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@41
    if-ne v0, v2, :cond_6

    #@43
    .line 312
    :goto_2
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@45
    .line 313
    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@47
    goto :goto_1

    #@48
    .line 309
    :cond_6
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@4a
    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@4c
    .line 310
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
    .line 212
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
    .line 213
    :cond_3
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@27
    if-gez v0, :cond_5

    #@29
    .line 215
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@2b
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@2d
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@2f
    .line 216
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@31
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    #@33
    if-ne v0, v3, :cond_4

    #@35
    .line 217
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    #@37
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@39
    .line 218
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@3b
    .line 211
    :goto_1
    return-void

    #@3c
    .line 220
    :cond_4
    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@3e
    goto :goto_1

    #@3f
    .line 224
    :cond_5
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@41
    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@43
    if-ne v0, v2, :cond_6

    #@45
    .line 236
    :goto_2
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    #@47
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@49
    .line 237
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@4b
    goto :goto_1

    #@4c
    .line 229
    :cond_6
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@4e
    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@50
    .line 230
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
    .line 201
    :goto_0
    if-lez p1, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->previousCodePoint()I

    #@5
    move-result v0

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 202
    add-int/lit8 p1, p1, -0x1

    #@a
    goto :goto_0

    #@b
    .line 198
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
    .line 40
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
    .line 41
    check-cast v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    #@c
    .line 43
    .local v0, "o":Landroid/icu/impl/coll/FCDUTF16CollationIterator;
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@e
    iget v4, v0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@10
    if-eq v1, v4, :cond_1

    #@12
    return v3

    #@13
    .line 44
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
    .line 45
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
    .line 46
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
    .line 48
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
    .line 49
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
    .line 48
    :cond_8
    return v3
.end method

.method protected forwardNumCodePoints(I)V
    .locals 1
    .param p1, "num"    # I

    #@0
    .prologue
    .line 192
    :goto_0
    if-lez p1, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextCodePoint()I

    #@5
    move-result v0

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 193
    add-int/lit8 p1, p1, -0x1

    #@a
    goto :goto_0

    #@b
    .line 189
    :cond_0
    return-void
.end method

.method public getOffset()I
    .locals 2

    #@0
    .prologue
    .line 70
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
    .line 71
    :cond_0
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@c
    add-int/lit8 v0, v0, 0x0

    #@e
    return v0

    #@f
    .line 72
    :cond_1
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@11
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@13
    if-ne v0, v1, :cond_2

    #@15
    .line 73
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@17
    add-int/lit8 v0, v0, 0x0

    #@19
    return v0

    #@1a
    .line 75
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
    .line 162
    :goto_0
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@2
    if-lez v1, :cond_3

    #@4
    .line 163
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@6
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@8
    if-ne v1, v2, :cond_0

    #@a
    .line 164
    const-wide v2, -0xffffff40L

    #@f
    return-wide v2

    #@10
    .line 166
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
    .line 167
    .local v0, "c":C
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 168
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_1

    #@28
    .line 169
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
    .line 168
    if-eqz v1, :cond_2

    #@3c
    .line 170
    :cond_1
    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@3e
    add-int/lit8 v1, v1, -0x1

    #@40
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@42
    .line 171
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextSegment()V

    #@45
    .line 172
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
    .line 183
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
    .line 176
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
    .line 177
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
    .line 180
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
    .line 55
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
    .line 56
    :cond_0
    const/16 v0, 0x2a

    #@f
    return v0
.end method

.method public nextCodePoint()I
    .locals 5

    #@0
    .prologue
    .line 92
    :goto_0
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@2
    if-lez v2, :cond_3

    #@4
    .line 93
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@6
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@8
    if-ne v2, v3, :cond_0

    #@a
    .line 94
    const/4 v2, -0x1

    #@b
    return v2

    #@c
    .line 96
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
    .line 97
    .local v0, "c":C
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 98
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    #@21
    move-result v2

    #@22
    if-nez v2, :cond_1

    #@24
    .line 99
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
    .line 98
    if-eqz v2, :cond_2

    #@38
    .line 100
    :cond_1
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@3a
    add-int/lit8 v2, v2, -0x1

    #@3c
    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@3e
    .line 101
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextSegment()V

    #@41
    .line 102
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
    .line 114
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
    .line 115
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
    .line 114
    if-eqz v2, :cond_5

    #@67
    .line 116
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@69
    add-int/lit8 v2, v2, 0x1

    #@6b
    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@6d
    .line 117
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    #@70
    move-result v2

    #@71
    return v2

    #@72
    .line 106
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
    .line 107
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
    .line 110
    .end local v0    # "c":C
    :cond_4
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->switchToForward()V

    #@8c
    goto/16 :goto_0

    #@8e
    .line 119
    .restart local v0    # "c":C
    :cond_5
    return v0
.end method

.method public previousCodePoint()I
    .locals 4

    #@0
    .prologue
    .line 127
    :goto_0
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@2
    if-gez v2, :cond_3

    #@4
    .line 128
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@6
    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@8
    if-ne v2, v3, :cond_0

    #@a
    .line 129
    const/4 v2, -0x1

    #@b
    return v2

    #@c
    .line 131
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
    .line 132
    .local v0, "c":C
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 133
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    #@21
    move-result v2

    #@22
    if-nez v2, :cond_1

    #@24
    .line 134
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
    .line 133
    if-eqz v2, :cond_2

    #@3a
    .line 135
    :cond_1
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@3c
    add-int/lit8 v2, v2, 0x1

    #@3e
    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@40
    .line 136
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->previousSegment()V

    #@43
    .line 137
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
    .line 149
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
    .line 150
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
    .line 149
    if-eqz v2, :cond_5

    #@6b
    .line 151
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@6d
    add-int/lit8 v2, v2, -0x1

    #@6f
    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@71
    .line 152
    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    #@74
    move-result v2

    #@75
    return v2

    #@76
    .line 141
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
    .line 142
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
    .line 145
    .end local v0    # "c":C
    :cond_4
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->switchToBackward()V

    #@90
    goto/16 :goto_0

    #@92
    .line 154
    .restart local v0    # "c":C
    :cond_5
    return v0
.end method

.method public resetToOffset(I)V
    .locals 1
    .param p1, "newOffset"    # I

    #@0
    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->reset()V

    #@3
    .line 62
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@5
    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@7
    .line 63
    add-int/lit8 v0, p1, 0x0

    #@9
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    #@b
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@d
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    #@f
    .line 64
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    #@11
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@13
    .line 65
    const/4 v0, 0x1

    #@14
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@16
    .line 60
    return-void
.end method

.method public setText(ZLjava/lang/CharSequence;I)V
    .locals 1
    .param p1, "numeric"    # Z
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "p"    # I

    #@0
    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    #@3
    .line 82
    iput-object p2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    #@5
    .line 83
    iput p3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    #@7
    .line 84
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    #@d
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    #@f
    .line 85
    const/4 v0, 0x1

    #@10
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    #@12
    .line 80
    return-void
.end method
