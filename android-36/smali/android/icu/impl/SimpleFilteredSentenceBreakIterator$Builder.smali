.class public Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;
.super Landroid/icu/text/FilteredBreakIteratorBuilder;
.source "SimpleFilteredSentenceBreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final blacklist AddToForward:I = 0x2

.field static final blacklist MATCH:I = 0x2

.field static final blacklist PARTIAL:I = 0x1

.field static final blacklist SuppressInReverse:I = 0x1


# instance fields
.field private blacklist filterSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 331
    invoke-direct {p0}, Landroid/icu/text/FilteredBreakIteratorBuilder;-><init>()V

    .line 299
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    .line 332
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/util/ULocale;)V
    .registers 9
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    .line 313
    invoke-direct {p0}, Landroid/icu/text/FilteredBreakIteratorBuilder;-><init>()V

    .line 299
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    .line 314
    const-string v0, "android/icu/impl/data/icudata/brkitr"

    sget-object v1, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v0, p1, v1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 317
    .local v0, "rb":Landroid/icu/impl/ICUResourceBundle;
    const-string v1, "exceptions/SentenceBreak"

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 319
    .local v1, "breaks":Landroid/icu/impl/ICUResourceBundle;
    if-eqz v1, :cond_33

    .line 320
    const/4 v2, 0x0

    .local v2, "index":I
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v3

    .local v3, "size":I
    :goto_1f
    if-ge v2, v3, :cond_33

    .line 321
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    .line 322
    .local v4, "b":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, "br":Ljava/lang/String;
    iget-object v6, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 320
    .end local v4    # "b":Landroid/icu/impl/ICUResourceBundle;
    .end local v5    # "br":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 326
    .end local v2    # "index":I
    .end local v3    # "size":I
    :cond_33
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "loc"    # Ljava/util/Locale;

    .line 307
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;-><init>(Landroid/icu/util/ULocale;)V

    .line 308
    return-void
.end method


# virtual methods
.method public blacklist suppressBreakAfter(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "str"    # Ljava/lang/CharSequence;

    .line 336
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist unsuppressBreakAfter(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "str"    # Ljava/lang/CharSequence;

    .line 341
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist wrapIteratorWithFilter(Landroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;
    .registers 22
    .param p1, "adoptBreakIterator"    # Landroid/icu/text/BreakIterator;

    .line 346
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 348
    return-object v1

    .line 351
    :cond_d
    new-instance v2, Landroid/icu/util/CharsTrieBuilder;

    invoke-direct {v2}, Landroid/icu/util/CharsTrieBuilder;-><init>()V

    .line 352
    .local v2, "builder":Landroid/icu/util/CharsTrieBuilder;
    new-instance v3, Landroid/icu/util/CharsTrieBuilder;

    invoke-direct {v3}, Landroid/icu/util/CharsTrieBuilder;-><init>()V

    .line 354
    .local v3, "builder2":Landroid/icu/util/CharsTrieBuilder;
    const/4 v4, 0x0

    .line 355
    .local v4, "revCount":I
    const/4 v5, 0x0

    .line 357
    .local v5, "fwdCount":I
    iget-object v6, v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    .line 358
    .local v6, "subCount":I
    new-array v7, v6, [Ljava/lang/CharSequence;

    .line 359
    .local v7, "ustrs":[Ljava/lang/CharSequence;
    new-array v8, v6, [I

    .line 361
    .local v8, "partials":[I
    const/4 v9, 0x0

    .line 362
    .local v9, "backwardsTrie":Landroid/icu/util/CharsTrie;
    const/4 v10, 0x0

    .line 364
    .local v10, "forwardsPartialTrie":Landroid/icu/util/CharsTrie;
    const/4 v11, 0x0

    .line 365
    .local v11, "i":I
    iget-object v12, v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_41

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    .line 366
    .local v13, "s":Ljava/lang/CharSequence;
    aput-object v13, v7, v11

    .line 367
    aput v14, v8, v11

    .line 368
    nop

    .end local v13    # "s":Ljava/lang/CharSequence;
    add-int/lit8 v11, v11, 0x1

    .line 369
    goto :goto_2c

    .line 371
    :cond_41
    const/4 v11, 0x0

    :goto_42
    if-ge v11, v6, :cond_d3

    .line 372
    aget-object v12, v7, v11

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 373
    .local v12, "thisStr":Ljava/lang/String;
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 374
    .local v13, "nn":I
    const/4 v15, -0x1

    if-le v13, v15, :cond_c3

    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-eq v15, v14, :cond_bd

    .line 377
    const/4 v14, -0x1

    .line 378
    .local v14, "sameAs":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_5d
    const/16 v16, 0x3

    if-ge v15, v6, :cond_95

    .line 379
    if-ne v15, v11, :cond_68

    .line 380
    move/from16 v17, v4

    move/from16 v19, v5

    goto :goto_8c

    .line 381
    :cond_68
    aget-object v17, v7, v15

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move/from16 v17, v4

    .end local v4    # "revCount":I
    .local v17, "revCount":I
    add-int/lit8 v4, v13, 0x1

    move/from16 v19, v5

    const/4 v5, 0x0

    .end local v5    # "fwdCount":I
    .local v19, "fwdCount":I
    invoke-virtual {v12, v5, v0, v5, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 382
    aget v0, v8, v15

    if-nez v0, :cond_84

    .line 383
    aput v16, v8, v15

    goto :goto_8c

    .line 384
    :cond_84
    aget v0, v8, v15

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8c

    .line 385
    move v0, v15

    move v14, v0

    .line 378
    :cond_8c
    :goto_8c
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v17

    move/from16 v5, v19

    goto :goto_5d

    .end local v17    # "revCount":I
    .end local v19    # "fwdCount":I
    .restart local v4    # "revCount":I
    .restart local v5    # "fwdCount":I
    :cond_95
    move/from16 v17, v4

    move/from16 v19, v5

    const/16 v18, 0x1

    .line 390
    .end local v4    # "revCount":I
    .end local v5    # "fwdCount":I
    .end local v15    # "j":I
    .restart local v17    # "revCount":I
    .restart local v19    # "fwdCount":I
    const/4 v0, -0x1

    if-ne v14, v0, :cond_bb

    aget v0, v8, v11

    if-nez v0, :cond_bb

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v13, 0x1

    const/4 v5, 0x0

    invoke-virtual {v12, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, "prefix":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 394
    move/from16 v4, v18

    invoke-virtual {v2, v0, v4}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 395
    add-int/lit8 v4, v17, 0x1

    .line 396
    .end local v17    # "revCount":I
    .restart local v4    # "revCount":I
    aput v16, v8, v11

    goto :goto_ca

    .line 390
    .end local v0    # "prefix":Ljava/lang/StringBuilder;
    .end local v4    # "revCount":I
    .restart local v17    # "revCount":I
    :cond_bb
    const/4 v5, 0x0

    goto :goto_c8

    .line 374
    .end local v14    # "sameAs":I
    .end local v17    # "revCount":I
    .end local v19    # "fwdCount":I
    .restart local v4    # "revCount":I
    .restart local v5    # "fwdCount":I
    :cond_bd
    move/from16 v17, v4

    move/from16 v19, v5

    const/4 v5, 0x0

    goto :goto_c8

    :cond_c3
    move/from16 v17, v4

    move/from16 v19, v5

    move v5, v14

    .line 371
    .end local v4    # "revCount":I
    .end local v5    # "fwdCount":I
    .end local v12    # "thisStr":Ljava/lang/String;
    .end local v13    # "nn":I
    .restart local v17    # "revCount":I
    .restart local v19    # "fwdCount":I
    :goto_c8
    move/from16 v4, v17

    .end local v17    # "revCount":I
    .restart local v4    # "revCount":I
    :goto_ca
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move v14, v5

    move/from16 v5, v19

    goto/16 :goto_42

    .line 401
    .end local v19    # "fwdCount":I
    .restart local v5    # "fwdCount":I
    :cond_d3
    move/from16 v17, v4

    move/from16 v19, v5

    .end local v4    # "revCount":I
    .end local v5    # "fwdCount":I
    .restart local v17    # "revCount":I
    .restart local v19    # "fwdCount":I
    const/4 v0, 0x0

    .end local v11    # "i":I
    .end local v17    # "revCount":I
    .end local v19    # "fwdCount":I
    .local v0, "i":I
    .restart local v4    # "revCount":I
    .restart local v5    # "fwdCount":I
    :goto_d8
    if-ge v0, v6, :cond_fd

    .line 402
    aget-object v11, v7, v0

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 403
    .local v11, "thisStr":Ljava/lang/String;
    aget v12, v8, v0

    const/4 v13, 0x2

    if-nez v12, :cond_f5

    .line 404
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v12

    .line 405
    .local v12, "reversed":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v12, v13}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 406
    nop

    .end local v12    # "reversed":Ljava/lang/StringBuilder;
    add-int/lit8 v4, v4, 0x1

    .line 407
    goto :goto_fa

    .line 413
    :cond_f5
    invoke-virtual {v3, v11, v13}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    .line 414
    add-int/lit8 v5, v5, 0x1

    .line 401
    .end local v11    # "thisStr":Ljava/lang/String;
    :goto_fa
    add-int/lit8 v0, v0, 0x1

    goto :goto_d8

    .line 418
    :cond_fd
    if-lez v4, :cond_105

    .line 419
    sget-object v11, Landroid/icu/util/StringTrieBuilder$Option;->FAST:Landroid/icu/util/StringTrieBuilder$Option;

    invoke-virtual {v2, v11}, Landroid/icu/util/CharsTrieBuilder;->build(Landroid/icu/util/StringTrieBuilder$Option;)Landroid/icu/util/CharsTrie;

    move-result-object v9

    .line 422
    :cond_105
    if-lez v5, :cond_10d

    .line 423
    sget-object v11, Landroid/icu/util/StringTrieBuilder$Option;->FAST:Landroid/icu/util/StringTrieBuilder$Option;

    invoke-virtual {v3, v11}, Landroid/icu/util/CharsTrieBuilder;->build(Landroid/icu/util/StringTrieBuilder$Option;)Landroid/icu/util/CharsTrie;

    move-result-object v10

    .line 425
    :cond_10d
    new-instance v11, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;

    invoke-direct {v11, v1, v10, v9}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;-><init>(Landroid/icu/text/BreakIterator;Landroid/icu/util/CharsTrie;Landroid/icu/util/CharsTrie;)V

    return-object v11
.end method
