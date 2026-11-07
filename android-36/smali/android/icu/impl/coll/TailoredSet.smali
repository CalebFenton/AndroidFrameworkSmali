.class public final Landroid/icu/impl/coll/TailoredSet;
.super Ljava/lang/Object;
.source "TailoredSet.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist baseData:Landroid/icu/impl/coll/CollationData;

.field private blacklist data:Landroid/icu/impl/coll/CollationData;

.field private blacklist suffix:Ljava/lang/String;

.field private blacklist tailored:Landroid/icu/text/UnicodeSet;

.field private blacklist unreversedPrefix:Ljava/lang/StringBuilder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/text/UnicodeSet;)V
    .registers 3
    .param p1, "t"    # Landroid/icu/text/UnicodeSet;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    .line 51
    iput-object p1, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    .line 52
    return-void
.end method

.method private blacklist add(I)V
    .registers 4
    .param p1, "c"    # I

    .line 377
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->suffix:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 378
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_2a

    .line 380
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 381
    .local v0, "s":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 382
    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->suffix:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 383
    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_25
    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 387
    .end local v0    # "s":Ljava/lang/StringBuilder;
    :goto_2a
    return-void
.end method

.method private blacklist addContractions(ILjava/lang/CharSequence;I)V
    .registers 7
    .param p1, "c"    # I
    .param p2, "p"    # Ljava/lang/CharSequence;
    .param p3, "pidx"    # I

    .line 365
    new-instance v0, Landroid/icu/util/CharsTrie;

    invoke-direct {v0, p2, p3}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v0

    .line 366
    .local v0, "suffixes":Landroid/icu/util/CharsTrie$Iterator;
    :goto_9
    invoke-virtual {v0}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 367
    invoke-virtual {v0}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v1

    .line 368
    .local v1, "e":Landroid/icu/util/CharsTrie$Entry;
    iget-object v2, v1, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v2}, Landroid/icu/impl/coll/TailoredSet;->addSuffix(ILjava/lang/CharSequence;)V

    .line 369
    .end local v1    # "e":Landroid/icu/util/CharsTrie$Entry;
    goto :goto_9

    .line 370
    :cond_19
    return-void
.end method

.method private blacklist addPrefix(Landroid/icu/impl/coll/CollationData;Ljava/lang/CharSequence;II)V
    .registers 8
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "pfx"    # Ljava/lang/CharSequence;
    .param p3, "c"    # I
    .param p4, "ce32"    # I

    .line 354
    invoke-direct {p0, p2}, Landroid/icu/impl/coll/TailoredSet;->setPrefix(Ljava/lang/CharSequence;)V

    .line 355
    invoke-virtual {p1, p4}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result p4

    .line 356
    invoke-static {p4}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 357
    invoke-static {p4}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    .line 358
    .local v0, "idx":I
    iget-object v1, p1, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    invoke-direct {p0, p3, v1, v2}, Landroid/icu/impl/coll/TailoredSet;->addContractions(ILjava/lang/CharSequence;I)V

    .line 360
    .end local v0    # "idx":I
    :cond_18
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 361
    invoke-direct {p0}, Landroid/icu/impl/coll/TailoredSet;->resetPrefix()V

    .line 362
    return-void
.end method

.method private blacklist addPrefixes(Landroid/icu/impl/coll/CollationData;ILjava/lang/CharSequence;I)V
    .registers 9
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "c"    # I
    .param p3, "p"    # Ljava/lang/CharSequence;
    .param p4, "pidx"    # I

    .line 346
    new-instance v0, Landroid/icu/util/CharsTrie;

    invoke-direct {v0, p3, p4}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v0

    .line 347
    .local v0, "prefixes":Landroid/icu/util/CharsTrie$Iterator;
    :goto_9
    invoke-virtual {v0}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 348
    invoke-virtual {v0}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v1

    .line 349
    .local v1, "e":Landroid/icu/util/CharsTrie$Entry;
    iget-object v2, v1, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    iget v3, v1, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, p1, v2, p2, v3}, Landroid/icu/impl/coll/TailoredSet;->addPrefix(Landroid/icu/impl/coll/CollationData;Ljava/lang/CharSequence;II)V

    .line 350
    .end local v1    # "e":Landroid/icu/util/CharsTrie$Entry;
    goto :goto_9

    .line 351
    :cond_1b
    return-void
.end method

.method private blacklist addSuffix(ILjava/lang/CharSequence;)V
    .registers 6
    .param p1, "c"    # I
    .param p2, "sfx"    # Ljava/lang/CharSequence;

    .line 373
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    .line 374
    return-void
.end method

.method private blacklist compare(III)V
    .registers 19
    .param p1, "c"    # I
    .param p2, "ce32"    # I
    .param p3, "baseCE32"    # I

    .line 101
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->isPrefixCE32(I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 102
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v6

    .line 103
    .local v6, "dataIndex":I
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v1, v6}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v7

    .line 104
    .end local p2    # "ce32":I
    .local v7, "ce32":I
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->isPrefixCE32(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 105
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v8

    .line 106
    .local v8, "baseIndex":I
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v1, v8}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v9

    .line 107
    .end local p3    # "baseCE32":I
    .local v9, "baseCE32":I
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v0, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v3, v6, 0x2

    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v4, v0, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v5, v8, 0x2

    move-object v0, p0

    move/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/TailoredSet;->comparePrefixes(ILjava/lang/CharSequence;ILjava/lang/CharSequence;I)V

    .line 108
    .end local v8    # "baseIndex":I
    goto :goto_4e

    .line 109
    .end local v9    # "baseCE32":I
    .restart local p3    # "baseCE32":I
    :cond_3f
    move/from16 v1, p1

    iget-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v3, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v4, v6, 0x2

    invoke-direct {p0, v2, v1, v3, v4}, Landroid/icu/impl/coll/TailoredSet;->addPrefixes(Landroid/icu/impl/coll/CollationData;ILjava/lang/CharSequence;I)V

    move/from16 v9, p3

    .line 111
    .end local v6    # "dataIndex":I
    .end local p3    # "baseCE32":I
    .restart local v9    # "baseCE32":I
    :goto_4e
    move v3, v9

    goto :goto_7a

    .end local v7    # "ce32":I
    .end local v9    # "baseCE32":I
    .restart local p2    # "ce32":I
    .restart local p3    # "baseCE32":I
    :cond_50
    move/from16 v1, p1

    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->isPrefixCE32(I)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 112
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v2

    .line 113
    .local v2, "baseIndex":I
    iget-object v3, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v4, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v4, v2}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v3

    .line 114
    .end local p3    # "baseCE32":I
    .local v3, "baseCE32":I
    iget-object v4, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v5, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v5, v5, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x2

    invoke-direct {p0, v4, v1, v5, v6}, Landroid/icu/impl/coll/TailoredSet;->addPrefixes(Landroid/icu/impl/coll/CollationData;ILjava/lang/CharSequence;I)V

    move/from16 v7, p2

    goto :goto_7a

    .line 111
    .end local v2    # "baseIndex":I
    .end local v3    # "baseCE32":I
    .restart local p3    # "baseCE32":I
    :cond_76
    move/from16 v7, p2

    move/from16 v3, p3

    .line 117
    .end local p2    # "ce32":I
    .end local p3    # "baseCE32":I
    .restart local v3    # "baseCE32":I
    .restart local v7    # "ce32":I
    :goto_7a
    invoke-static {v7}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 118
    invoke-static {v7}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v6

    .line 119
    .restart local v6    # "dataIndex":I
    and-int/lit16 v2, v7, 0x100

    if-eqz v2, :cond_8b

    .line 120
    const/4 v2, 0x1

    move v7, v2

    .end local v7    # "ce32":I
    .local v2, "ce32":I
    goto :goto_98

    .line 122
    .end local v2    # "ce32":I
    .restart local v7    # "ce32":I
    :cond_8b
    iget-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v4, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v4, v6}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v2

    move v7, v2

    .line 124
    :goto_98
    invoke-static {v3}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 125
    invoke-static {v3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v8

    .line 126
    .restart local v8    # "baseIndex":I
    and-int/lit16 v2, v3, 0x100

    if-eqz v2, :cond_a9

    .line 127
    const/4 v2, 0x1

    move v9, v2

    .end local v3    # "baseCE32":I
    .local v2, "baseCE32":I
    goto :goto_b6

    .line 129
    .end local v2    # "baseCE32":I
    .restart local v3    # "baseCE32":I
    :cond_a9
    iget-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v4, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v4, v8}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v2

    move v9, v2

    .line 131
    .end local v3    # "baseCE32":I
    .restart local v9    # "baseCE32":I
    :goto_b6
    iget-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v3, v6, 0x2

    iget-object v4, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v4, v4, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v5, v8, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/TailoredSet;->compareContractions(ILjava/lang/CharSequence;ILjava/lang/CharSequence;I)V

    .line 132
    .end local v8    # "baseIndex":I
    move v3, v9

    goto :goto_f2

    .line 133
    .end local v9    # "baseCE32":I
    .restart local v3    # "baseCE32":I
    :cond_c8
    iget-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v4, v6, 0x2

    invoke-direct {p0, v1, v2, v4}, Landroid/icu/impl/coll/TailoredSet;->addContractions(ILjava/lang/CharSequence;I)V

    goto :goto_f2

    .line 135
    .end local v6    # "dataIndex":I
    :cond_d2
    invoke-static {v3}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 136
    invoke-static {v3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v2

    .line 137
    .local v2, "baseIndex":I
    iget-object v4, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v5, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v5, v2}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v3

    .line 138
    iget-object v4, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v4, v4, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x2

    invoke-direct {p0, v1, v4, v5}, Landroid/icu/impl/coll/TailoredSet;->addContractions(ILjava/lang/CharSequence;I)V

    goto :goto_f3

    .line 135
    .end local v2    # "baseIndex":I
    :cond_f2
    :goto_f2
    nop

    .line 142
    :goto_f3
    invoke-static {v7}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v2

    if-eqz v2, :cond_100

    .line 143
    invoke-static {v7}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v2

    .line 144
    .local v2, "tag":I
    nop

    .line 145
    nop

    .line 150
    goto :goto_101

    .line 152
    .end local v2    # "tag":I
    :cond_100
    const/4 v2, -0x1

    .line 155
    .restart local v2    # "tag":I
    :goto_101
    invoke-static {v3}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v4

    if-eqz v4, :cond_10d

    .line 156
    invoke-static {v3}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v4

    .line 157
    .local v4, "baseTag":I
    nop

    .line 158
    goto :goto_10e

    .line 160
    .end local v4    # "baseTag":I
    :cond_10d
    const/4 v4, -0x1

    .line 164
    .restart local v4    # "baseTag":I
    :goto_10e
    const/16 v5, 0xe

    if-ne v4, v5, :cond_136

    .line 170
    invoke-static {v7}, Landroid/icu/impl/coll/Collation;->isLongPrimaryCE32(I)Z

    move-result v5

    if-nez v5, :cond_11c

    .line 171
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    .line 172
    return-void

    .line 174
    :cond_11c
    iget-object v5, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v5, v5, Landroid/icu/impl/coll/CollationData;->ces:[J

    invoke-static {v3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v6

    aget-wide v5, v5, v6

    .line 175
    .local v5, "dataCE":J
    invoke-static {v1, v5, v6}, Landroid/icu/impl/coll/Collation;->getThreeBytePrimaryForOffsetData(IJ)J

    move-result-wide v8

    .line 176
    .local v8, "p":J
    invoke-static {v7}, Landroid/icu/impl/coll/Collation;->primaryFromLongPrimaryCE32(I)J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-eqz v10, :cond_136

    .line 177
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    .line 178
    return-void

    .line 182
    .end local v5    # "dataCE":J
    .end local v8    # "p":J
    :cond_136
    if-eq v2, v4, :cond_13c

    .line 183
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    .line 184
    return-void

    .line 187
    :cond_13c
    const/4 v5, 0x5

    if-ne v2, v5, :cond_173

    .line 188
    invoke-static {v7}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v5

    .line 189
    .local v5, "length":I
    invoke-static {v3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v6

    .line 191
    .local v6, "baseLength":I
    if-eq v5, v6, :cond_14d

    .line 192
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    .line 193
    return-void

    .line 196
    :cond_14d
    invoke-static {v7}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v8

    .line 197
    .local v8, "idx0":I
    invoke-static {v3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v9

    .line 199
    .local v9, "idx1":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_156
    if-ge v10, v5, :cond_171

    .line 200
    iget-object v11, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v11, v11, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    add-int v12, v8, v10

    aget v11, v11, v12

    iget-object v12, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v12, v12, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    add-int v13, v9, v10

    aget v12, v12, v13

    if-eq v11, v12, :cond_16e

    .line 201
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    .line 202
    goto :goto_171

    .line 199
    :cond_16e
    add-int/lit8 v10, v10, 0x1

    goto :goto_156

    .line 205
    .end local v5    # "length":I
    .end local v6    # "baseLength":I
    .end local v8    # "idx0":I
    .end local v9    # "idx1":I
    .end local v10    # "i":I
    :cond_171
    :goto_171
    goto/16 :goto_1ed

    :cond_173
    const/4 v5, 0x6

    if-ne v2, v5, :cond_1ab

    .line 206
    invoke-static {v7}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v5

    .line 207
    .restart local v5    # "length":I
    invoke-static {v3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v6

    .line 209
    .restart local v6    # "baseLength":I
    if-eq v5, v6, :cond_184

    .line 210
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    .line 211
    return-void

    .line 214
    :cond_184
    invoke-static {v7}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v8

    .line 215
    .restart local v8    # "idx0":I
    invoke-static {v3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v9

    .line 217
    .restart local v9    # "idx1":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_18d
    if-ge v10, v5, :cond_1aa

    .line 218
    iget-object v11, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v11, v11, Landroid/icu/impl/coll/CollationData;->ces:[J

    add-int v12, v8, v10

    aget-wide v11, v11, v12

    iget-object v13, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v13, v13, Landroid/icu/impl/coll/CollationData;->ces:[J

    add-int v14, v9, v10

    aget-wide v13, v13, v14

    cmp-long v11, v11, v13

    if-eqz v11, :cond_1a7

    .line 219
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    .line 220
    goto :goto_1aa

    .line 217
    :cond_1a7
    add-int/lit8 v10, v10, 0x1

    goto :goto_18d

    .line 223
    .end local v5    # "length":I
    .end local v6    # "baseLength":I
    .end local v8    # "idx0":I
    .end local v9    # "idx1":I
    .end local v10    # "i":I
    :cond_1aa
    :goto_1aa
    goto :goto_1ed

    :cond_1ab
    const/16 v5, 0xc

    if-ne v2, v5, :cond_1e6

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v5, "jamos":Ljava/lang/StringBuilder;
    invoke-static {v1, v5}, Landroid/icu/impl/Normalizer2Impl$Hangul;->decompose(ILjava/lang/Appendable;)I

    move-result v6

    .line 226
    .local v6, "length":I
    iget-object v8, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v8

    if-nez v8, :cond_1e2

    iget-object v8, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v8

    if-nez v8, :cond_1e2

    const/4 v8, 0x3

    if-ne v6, v8, :cond_1ec

    iget-object v8, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    .line 227
    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v8

    if-eqz v8, :cond_1ec

    .line 228
    :cond_1e2
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    goto :goto_1ec

    .line 230
    .end local v5    # "jamos":Ljava/lang/StringBuilder;
    .end local v6    # "length":I
    :cond_1e6
    if-eq v7, v3, :cond_1ec

    .line 231
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    goto :goto_1ed

    .line 230
    :cond_1ec
    :goto_1ec
    nop

    .line 233
    :goto_1ed
    return-void
.end method

.method private blacklist compareContractions(ILjava/lang/CharSequence;ILjava/lang/CharSequence;I)V
    .registers 16
    .param p1, "c"    # I
    .param p2, "p"    # Ljava/lang/CharSequence;
    .param p3, "pidx"    # I
    .param p4, "q"    # Ljava/lang/CharSequence;
    .param p5, "qidx"    # I

    .line 293
    new-instance v0, Landroid/icu/util/CharsTrie;

    invoke-direct {v0, p2, p3}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v0

    .line 294
    .local v0, "suffixes":Landroid/icu/util/CharsTrie$Iterator;
    new-instance v1, Landroid/icu/util/CharsTrie;

    invoke-direct {v1, p4, p5}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v1}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v1

    .line 295
    .local v1, "baseSuffixes":Landroid/icu/util/CharsTrie$Iterator;
    const/4 v2, 0x0

    .line 296
    .local v2, "ts":Ljava/lang/String;
    const/4 v3, 0x0

    .line 300
    .local v3, "bs":Ljava/lang/String;
    const-string v4, "\uffff\uffff"

    .line 301
    .local v4, "none":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "te":Landroid/icu/util/CharsTrie$Entry;
    const/4 v6, 0x0

    .line 303
    .local v6, "be":Landroid/icu/util/CharsTrie$Entry;
    :goto_18
    if-nez v2, :cond_2d

    .line 304
    invoke-virtual {v0}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 305
    invoke-virtual {v0}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v5

    .line 306
    iget-object v7, v5, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2d

    .line 308
    :cond_2b
    const/4 v5, 0x0

    .line 309
    move-object v2, v4

    .line 312
    :cond_2d
    :goto_2d
    if-nez v3, :cond_42

    .line 313
    invoke-virtual {v1}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_40

    .line 314
    invoke-virtual {v1}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v6

    .line 315
    iget-object v7, v6, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_42

    .line 317
    :cond_40
    const/4 v6, 0x0

    .line 318
    move-object v3, v4

    .line 321
    :cond_42
    :goto_42
    invoke-static {v2, v4}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 322
    nop

    .line 343
    return-void

    .line 324
    :cond_50
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    .line 325
    .local v7, "cmp":I
    if-gez v7, :cond_5c

    .line 327
    invoke-direct {p0, p1, v2}, Landroid/icu/impl/coll/TailoredSet;->addSuffix(ILjava/lang/CharSequence;)V

    .line 328
    const/4 v5, 0x0

    .line 329
    const/4 v2, 0x0

    goto :goto_74

    .line 330
    :cond_5c
    if-lez v7, :cond_64

    .line 332
    invoke-direct {p0, p1, v3}, Landroid/icu/impl/coll/TailoredSet;->addSuffix(ILjava/lang/CharSequence;)V

    .line 333
    const/4 v6, 0x0

    .line 334
    const/4 v3, 0x0

    goto :goto_74

    .line 336
    :cond_64
    iput-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->suffix:Ljava/lang/String;

    .line 337
    iget v8, v5, Landroid/icu/util/CharsTrie$Entry;->value:I

    iget v9, v6, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, p1, v8, v9}, Landroid/icu/impl/coll/TailoredSet;->compare(III)V

    .line 338
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/icu/impl/coll/TailoredSet;->suffix:Ljava/lang/String;

    .line 339
    move-object v6, v8

    move-object v5, v8

    .line 340
    move-object v3, v8

    move-object v2, v8

    .line 342
    .end local v7    # "cmp":I
    :goto_74
    goto :goto_18
.end method

.method private blacklist comparePrefixes(ILjava/lang/CharSequence;ILjava/lang/CharSequence;I)V
    .registers 16
    .param p1, "c"    # I
    .param p2, "p"    # Ljava/lang/CharSequence;
    .param p3, "pidx"    # I
    .param p4, "q"    # Ljava/lang/CharSequence;
    .param p5, "qidx"    # I

    .line 237
    new-instance v0, Landroid/icu/util/CharsTrie;

    invoke-direct {v0, p2, p3}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v0

    .line 238
    .local v0, "prefixes":Landroid/icu/util/CharsTrie$Iterator;
    new-instance v1, Landroid/icu/util/CharsTrie;

    invoke-direct {v1, p4, p5}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v1}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v1

    .line 239
    .local v1, "basePrefixes":Landroid/icu/util/CharsTrie$Iterator;
    const/4 v2, 0x0

    .line 240
    .local v2, "tp":Ljava/lang/String;
    const/4 v3, 0x0

    .line 243
    .local v3, "bp":Ljava/lang/String;
    const-string v4, "\uffff"

    .line 244
    .local v4, "none":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "te":Landroid/icu/util/CharsTrie$Entry;
    const/4 v6, 0x0

    .line 246
    .local v6, "be":Landroid/icu/util/CharsTrie$Entry;
    :goto_18
    if-nez v2, :cond_2d

    .line 247
    invoke-virtual {v0}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 248
    invoke-virtual {v0}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v5

    .line 249
    iget-object v7, v5, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2d

    .line 251
    :cond_2b
    const/4 v5, 0x0

    .line 252
    move-object v2, v4

    .line 255
    :cond_2d
    :goto_2d
    if-nez v3, :cond_42

    .line 256
    invoke-virtual {v1}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_40

    .line 257
    invoke-virtual {v1}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v6

    .line 258
    iget-object v7, v6, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_42

    .line 260
    :cond_40
    const/4 v6, 0x0

    .line 261
    move-object v3, v4

    .line 264
    :cond_42
    :goto_42
    invoke-static {v2, v4}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 265
    nop

    .line 289
    return-void

    .line 267
    :cond_50
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    .line 268
    .local v7, "cmp":I
    if-gez v7, :cond_61

    .line 270
    nop

    .line 271
    iget-object v8, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget v9, v5, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, v8, v2, p1, v9}, Landroid/icu/impl/coll/TailoredSet;->addPrefix(Landroid/icu/impl/coll/CollationData;Ljava/lang/CharSequence;II)V

    .line 272
    const/4 v5, 0x0

    .line 273
    const/4 v2, 0x0

    goto :goto_81

    .line 274
    :cond_61
    if-lez v7, :cond_6e

    .line 276
    nop

    .line 277
    iget-object v8, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget v9, v6, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, v8, v3, p1, v9}, Landroid/icu/impl/coll/TailoredSet;->addPrefix(Landroid/icu/impl/coll/CollationData;Ljava/lang/CharSequence;II)V

    .line 278
    const/4 v6, 0x0

    .line 279
    const/4 v3, 0x0

    goto :goto_81

    .line 281
    :cond_6e
    invoke-direct {p0, v2}, Landroid/icu/impl/coll/TailoredSet;->setPrefix(Ljava/lang/CharSequence;)V

    .line 282
    nop

    .line 283
    iget v8, v5, Landroid/icu/util/CharsTrie$Entry;->value:I

    iget v9, v6, Landroid/icu/util/CharsTrie$Entry;->value:I

    invoke-direct {p0, p1, v8, v9}, Landroid/icu/impl/coll/TailoredSet;->compare(III)V

    .line 284
    invoke-direct {p0}, Landroid/icu/impl/coll/TailoredSet;->resetPrefix()V

    .line 285
    const/4 v8, 0x0

    move-object v6, v8

    move-object v5, v8

    .line 286
    move-object v3, v8

    move-object v2, v8

    .line 288
    .end local v7    # "cmp":I
    :goto_81
    goto :goto_18
.end method

.method private blacklist enumTailoredRange(IIILandroid/icu/impl/coll/TailoredSet;)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "ce32"    # I
    .param p4, "ts"    # Landroid/icu/impl/coll/TailoredSet;

    .line 67
    const/16 v0, 0xc0

    if-ne p3, v0, :cond_5

    .line 68
    return-void

    .line 70
    :cond_5
    invoke-direct {p4, p1, p2, p3}, Landroid/icu/impl/coll/TailoredSet;->handleCE32(III)V

    .line 71
    return-void
.end method

.method private blacklist handleCE32(III)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "ce32"    # I

    .line 77
    nop

    .line 78
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 79
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, p3}, Landroid/icu/impl/coll/CollationData;->getIndirectCE32(I)I

    move-result p3

    .line 80
    const/16 v0, 0xc0

    if-ne p3, v0, :cond_12

    .line 81
    return-void

    .line 85
    :cond_12
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v1, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result v0

    .line 89
    .local v0, "baseCE32":I
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->isSelfContainedCE32(I)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->isSelfContainedCE32(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 91
    if-eq p3, v0, :cond_35

    .line 92
    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_35

    .line 95
    :cond_32
    invoke-direct {p0, p1, p3, v0}, Landroid/icu/impl/coll/TailoredSet;->compare(III)V

    .line 97
    .end local v0    # "baseCE32":I
    :cond_35
    :goto_35
    add-int/lit8 p1, p1, 0x1

    if-le p1, p2, :cond_12

    .line 98
    return-void
.end method

.method private blacklist resetPrefix()V
    .registers 3

    .line 396
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 397
    return-void
.end method

.method private blacklist setPrefix(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "pfx"    # Ljava/lang/CharSequence;

    .line 391
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 392
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 393
    return-void
.end method


# virtual methods
.method public blacklist forData(Landroid/icu/impl/coll/CollationData;)V
    .registers 7
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;

    .line 55
    iput-object p1, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    .line 56
    iget-object v0, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    iput-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    .line 57
    nop

    .line 59
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {v0}, Landroid/icu/impl/Trie2_32;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 61
    .local v0, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/Trie2$Range;>;"
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Trie2$Range;

    move-object v2, v1

    .local v2, "range":Landroid/icu/impl/Trie2$Range;
    iget-boolean v1, v1, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v1, :cond_2a

    .line 62
    iget v1, v2, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iget v3, v2, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    iget v4, v2, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-direct {p0, v1, v3, v4, p0}, Landroid/icu/impl/coll/TailoredSet;->enumTailoredRange(IIILandroid/icu/impl/coll/TailoredSet;)V

    goto :goto_f

    .line 64
    .end local v2    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_2a
    return-void
.end method
