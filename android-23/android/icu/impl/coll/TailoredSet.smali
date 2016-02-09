.class public final Landroid/icu/impl/coll/TailoredSet;
.super Ljava/lang/Object;
.source "TailoredSet.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private baseData:Landroid/icu/impl/coll/CollationData;

.field private data:Landroid/icu/impl/coll/CollationData;

.field private suffix:Ljava/lang/String;

.field private tailored:Landroid/icu/text/UnicodeSet;

.field private unreversedPrefix:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/TailoredSet;

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
    sput-boolean v0, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    #@b
    .line 37
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/text/UnicodeSet;)V
    .locals 1
    .param p1, "t"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    #@a
    .line 46
    iput-object p1, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    #@c
    .line 45
    return-void
.end method

.method private add(I)V
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    .line 372
    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->suffix:Ljava/lang/String;

    #@a
    if-nez v1, :cond_0

    #@c
    .line 373
    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    #@e
    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@11
    .line 371
    :goto_0
    return-void

    #@12
    .line 375
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@14
    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@19
    .line 376
    .local v0, "s":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@1c
    .line 377
    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->suffix:Ljava/lang/String;

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 378
    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->suffix:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 380
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    #@27
    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@2a
    goto :goto_0
.end method

.method private addContractions(ILjava/lang/CharSequence;I)V
    .locals 3
    .param p1, "c"    # I
    .param p2, "p"    # Ljava/lang/CharSequence;
    .param p3, "pidx"    # I

    #@0
    .prologue
    .line 360
    new-instance v2, Landroid/icu/util/CharsTrie;

    #@2
    invoke-direct {v2, p2, p3}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    #@5
    invoke-virtual {v2}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    #@8
    move-result-object v1

    #@9
    .line 361
    .local v1, "suffixes":Landroid/icu/util/CharsTrie$Iterator;
    :goto_0
    invoke-virtual {v1}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 362
    invoke-virtual {v1}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    #@12
    move-result-object v0

    #@13
    .line 363
    .local v0, "e":Landroid/icu/util/CharsTrie$Entry;
    iget-object v2, v0, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    #@15
    invoke-direct {p0, p1, v2}, Landroid/icu/impl/coll/TailoredSet;->addSuffix(ILjava/lang/CharSequence;)V

    #@18
    goto :goto_0

    #@19
    .line 359
    .end local v0    # "e":Landroid/icu/util/CharsTrie$Entry;
    :cond_0
    return-void
.end method

.method private addPrefix(Landroid/icu/impl/coll/CollationData;Ljava/lang/CharSequence;II)V
    .locals 4
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "pfx"    # Ljava/lang/CharSequence;
    .param p3, "c"    # I
    .param p4, "ce32"    # I

    #@0
    .prologue
    .line 349
    invoke-direct {p0, p2}, Landroid/icu/impl/coll/TailoredSet;->setPrefix(Ljava/lang/CharSequence;)V

    #@3
    .line 350
    invoke-virtual {p1, p4}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    #@6
    move-result p4

    #@7
    .line 351
    invoke-static {p4}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 352
    invoke-static {p4}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@10
    move-result v0

    #@11
    .line 353
    .local v0, "idx":I
    iget-object v1, p1, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@13
    add-int/lit8 v2, v0, 0x2

    #@15
    invoke-direct {p0, p3, v1, v2}, Landroid/icu/impl/coll/TailoredSet;->addContractions(ILjava/lang/CharSequence;I)V

    #@18
    .line 355
    .end local v0    # "idx":I
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    iget-object v3, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    #@1e
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@25
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@28
    .line 356
    invoke-direct {p0}, Landroid/icu/impl/coll/TailoredSet;->resetPrefix()V

    #@2b
    .line 348
    return-void
.end method

.method private addPrefixes(Landroid/icu/impl/coll/CollationData;ILjava/lang/CharSequence;I)V
    .locals 4
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "c"    # I
    .param p3, "p"    # Ljava/lang/CharSequence;
    .param p4, "pidx"    # I

    #@0
    .prologue
    .line 341
    new-instance v2, Landroid/icu/util/CharsTrie;

    #@2
    invoke-direct {v2, p3, p4}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    #@5
    invoke-virtual {v2}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    #@8
    move-result-object v1

    #@9
    .line 342
    .local v1, "prefixes":Landroid/icu/util/CharsTrie$Iterator;
    :goto_0
    invoke-virtual {v1}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 343
    invoke-virtual {v1}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    #@12
    move-result-object v0

    #@13
    .line 344
    .local v0, "e":Landroid/icu/util/CharsTrie$Entry;
    iget-object v2, v0, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    #@15
    iget v3, v0, Landroid/icu/util/CharsTrie$Entry;->value:I

    #@17
    invoke-direct {p0, p1, v2, p2, v3}, Landroid/icu/impl/coll/TailoredSet;->addPrefix(Landroid/icu/impl/coll/CollationData;Ljava/lang/CharSequence;II)V

    #@1a
    goto :goto_0

    #@1b
    .line 340
    .end local v0    # "e":Landroid/icu/util/CharsTrie$Entry;
    :cond_0
    return-void
.end method

.method private addSuffix(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "c"    # I
    .param p2, "sfx"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 368
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    iget-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@9
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@14
    .line 367
    return-void
.end method

.method private compare(III)V
    .locals 22
    .param p1, "c"    # I
    .param p2, "ce32"    # I
    .param p3, "baseCE32"    # I

    #@0
    .prologue
    .line 96
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->isPrefixCE32(I)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_3

    #@6
    .line 97
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@9
    move-result v11

    #@a
    .line 98
    .local v11, "dataIndex":I
    move-object/from16 v0, p0

    #@c
    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    #@e
    move-object/from16 v0, p0

    #@10
    iget-object v3, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    #@12
    invoke-virtual {v3, v11}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    #@15
    move-result v3

    #@16
    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    #@19
    move-result p2

    #@1a
    .line 99
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->isPrefixCE32(I)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_2

    #@20
    .line 100
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@23
    move-result v8

    #@24
    .line 101
    .local v8, "baseIndex":I
    move-object/from16 v0, p0

    #@26
    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    #@28
    move-object/from16 v0, p0

    #@2a
    iget-object v3, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    #@2c
    invoke-virtual {v3, v8}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    #@2f
    move-result v3

    #@30
    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    #@33
    move-result p3

    #@34
    .line 102
    move-object/from16 v0, p0

    #@36
    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    #@38
    iget-object v4, v2, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@3a
    add-int/lit8 v5, v11, 0x2

    #@3c
    move-object/from16 v0, p0

    #@3e
    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    #@40
    iget-object v6, v2, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@42
    add-int/lit8 v7, v8, 0x2

    #@44
    move-object/from16 v2, p0

    #@46
    move/from16 v3, p1

    #@48
    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/coll/TailoredSet;->comparePrefixes(ILjava/lang/CharSequence;ILjava/lang/CharSequence;I)V

    #@4b
    .line 112
    .end local v8    # "baseIndex":I
    .end local v11    # "dataIndex":I
    :cond_0
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    #@4e
    move-result v2

    #@4f
    if-eqz v2, :cond_7

    #@51
    .line 113
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@54
    move-result v11

    #@55
    .line 114
    .restart local v11    # "dataIndex":I
    move/from16 v0, p2

    #@57
    and-int/lit16 v2, v0, 0x100

    #@59
    if-eqz v2, :cond_4

    #@5b
    .line 115
    const/16 p2, 0x1

    #@5d
    .line 119
    :goto_1
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    #@60
    move-result v2

    #@61
    if-eqz v2, :cond_6

    #@63
    .line 120
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@66
    move-result v8

    #@67
    .line 121
    .restart local v8    # "baseIndex":I
    move/from16 v0, p3

    #@69
    and-int/lit16 v2, v0, 0x100

    #@6b
    if-eqz v2, :cond_5

    #@6d
    .line 122
    const/16 p3, 0x1

    #@6f
    .line 126
    :goto_2
    move-object/from16 v0, p0

    #@71
    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    #@73
    iget-object v4, v2, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@75
    add-int/lit8 v5, v11, 0x2

    #@77
    move-object/from16 v0, p0

    #@79
    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    #@7b
    iget-object v6, v2, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@7d
    add-int/lit8 v7, v8, 0x2

    #@7f
    move-object/from16 v2, p0

    #@81
    move/from16 v3, p1

    #@83
    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/coll/TailoredSet;->compareContractions(ILjava/lang/CharSequence;ILjava/lang/CharSequence;I)V

    #@86
    .line 137
    .end local v8    # "baseIndex":I
    .end local v11    # "dataIndex":I
    :cond_1
    :goto_3
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    #@89
    move-result v2

    #@8a
    if-eqz v2, :cond_d

    #@8c
    .line 138
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    #@8f
    move-result v19

    #@90
    .line 139
    .local v19, "tag":I
    sget-boolean v2, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    #@92
    if-nez v2, :cond_9

    #@94
    const/16 v2, 0x8

    #@96
    move/from16 v0, v19

    #@98
    if-eq v0, v2, :cond_8

    #@9a
    const/4 v2, 0x1

    #@9b
    :goto_4
    if-nez v2, :cond_9

    #@9d
    new-instance v2, Ljava/lang/AssertionError;

    #@9f
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@a2
    throw v2

    #@a3
    .line 104
    .end local v19    # "tag":I
    .restart local v11    # "dataIndex":I
    :cond_2
    move-object/from16 v0, p0

    #@a5
    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    #@a7
    move-object/from16 v0, p0

    #@a9
    iget-object v3, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    #@ab
    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@ad
    add-int/lit8 v4, v11, 0x2

    #@af
    move-object/from16 v0, p0

    #@b1
    move/from16 v1, p1

    #@b3
    invoke-direct {v0, v2, v1, v3, v4}, Landroid/icu/impl/coll/TailoredSet;->addPrefixes(Landroid/icu/impl/coll/CollationData;ILjava/lang/CharSequence;I)V

    #@b6
    goto :goto_0

    #@b7
    .line 106
    .end local v11    # "dataIndex":I
    :cond_3
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->isPrefixCE32(I)Z

    #@ba
    move-result v2

    #@bb
    if-eqz v2, :cond_0

    #@bd
    .line 107
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@c0
    move-result v8

    #@c1
    .line 108
    .restart local v8    # "baseIndex":I
    move-object/from16 v0, p0

    #@c3
    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    #@c5
    move-object/from16 v0, p0

    #@c7
    iget-object v3, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    #@c9
    invoke-virtual {v3, v8}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    #@cc
    move-result v3

    #@cd
    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    #@d0
    move-result p3

    #@d1
    .line 109
    move-object/from16 v0, p0

    #@d3
    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    #@d5
    move-object/from16 v0, p0

    #@d7
    iget-object v3, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    #@d9
    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@db
    add-int/lit8 v4, v8, 0x2

    #@dd
    move-object/from16 v0, p0

    #@df
    move/from16 v1, p1

    #@e1
    invoke-direct {v0, v2, v1, v3, v4}, Landroid/icu/impl/coll/TailoredSet;->addPrefixes(Landroid/icu/impl/coll/CollationData;ILjava/lang/CharSequence;I)V

    #@e4
    goto/16 :goto_0

    #@e6
    .line 117
    .end local v8    # "baseIndex":I
    .restart local v11    # "dataIndex":I
    :cond_4
    move-object/from16 v0, p0

    #@e8
    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    #@ea
    move-object/from16 v0, p0

    #@ec
    iget-object v3, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    #@ee
    invoke-virtual {v3, v11}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    #@f1
    move-result v3

    #@f2
    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    #@f5
    move-result p2

    #@f6
    goto/16 :goto_1

    #@f8
    .line 124
    .restart local v8    # "baseIndex":I
    :cond_5
    move-object/from16 v0, p0

    #@fa
    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    #@fc
    move-object/from16 v0, p0

    #@fe
    iget-object v3, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    #@100
    invoke-virtual {v3, v8}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    #@103
    move-result v3

    #@104
    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    #@107
    move-result p3

    #@108
    goto/16 :goto_2

    #@10a
    .line 128
    .end local v8    # "baseIndex":I
    :cond_6
    move-object/from16 v0, p0

    #@10c
    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    #@10e
    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@110
    add-int/lit8 v3, v11, 0x2

    #@112
    move-object/from16 v0, p0

    #@114
    move/from16 v1, p1

    #@116
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/impl/coll/TailoredSet;->addContractions(ILjava/lang/CharSequence;I)V

    #@119
    goto/16 :goto_3

    #@11b
    .line 130
    .end local v11    # "dataIndex":I
    :cond_7
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->isContractionCE32(I)Z

    #@11e
    move-result v2

    #@11f
    if-eqz v2, :cond_1

    #@121
    .line 131
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@124
    move-result v8

    #@125
    .line 132
    .restart local v8    # "baseIndex":I
    move-object/from16 v0, p0

    #@127
    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    #@129
    move-object/from16 v0, p0

    #@12b
    iget-object v3, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    #@12d
    invoke-virtual {v3, v8}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    #@130
    move-result v3

    #@131
    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    #@134
    move-result p3

    #@135
    .line 133
    move-object/from16 v0, p0

    #@137
    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    #@139
    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    #@13b
    add-int/lit8 v3, v8, 0x2

    #@13d
    move-object/from16 v0, p0

    #@13f
    move/from16 v1, p1

    #@141
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/impl/coll/TailoredSet;->addContractions(ILjava/lang/CharSequence;I)V

    #@144
    goto/16 :goto_3

    #@146
    .line 139
    .end local v8    # "baseIndex":I
    .restart local v19    # "tag":I
    :cond_8
    const/4 v2, 0x0

    #@147
    goto/16 :goto_4

    #@149
    .line 140
    :cond_9
    sget-boolean v2, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    #@14b
    if-nez v2, :cond_b

    #@14d
    const/16 v2, 0x9

    #@14f
    move/from16 v0, v19

    #@151
    if-eq v0, v2, :cond_a

    #@153
    const/4 v2, 0x1

    #@154
    :goto_5
    if-nez v2, :cond_b

    #@156
    new-instance v2, Ljava/lang/AssertionError;

    #@158
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@15b
    throw v2

    #@15c
    :cond_a
    const/4 v2, 0x0

    #@15d
    goto :goto_5

    #@15e
    .line 145
    :cond_b
    sget-boolean v2, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    #@160
    if-nez v2, :cond_e

    #@162
    const/16 v2, 0xe

    #@164
    move/from16 v0, v19

    #@166
    if-eq v0, v2, :cond_c

    #@168
    const/4 v2, 0x1

    #@169
    :goto_6
    if-nez v2, :cond_e

    #@16b
    new-instance v2, Ljava/lang/AssertionError;

    #@16d
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@170
    throw v2

    #@171
    :cond_c
    const/4 v2, 0x0

    #@172
    goto :goto_6

    #@173
    .line 147
    .end local v19    # "tag":I
    :cond_d
    const/16 v19, -0x1

    #@175
    .line 150
    .restart local v19    # "tag":I
    :cond_e
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    #@178
    move-result v2

    #@179
    if-eqz v2, :cond_12

    #@17b
    .line 151
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    #@17e
    move-result v10

    #@17f
    .line 152
    .local v10, "baseTag":I
    sget-boolean v2, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    #@181
    if-nez v2, :cond_10

    #@183
    const/16 v2, 0x8

    #@185
    if-eq v10, v2, :cond_f

    #@187
    const/4 v2, 0x1

    #@188
    :goto_7
    if-nez v2, :cond_10

    #@18a
    new-instance v2, Ljava/lang/AssertionError;

    #@18c
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@18f
    throw v2

    #@190
    :cond_f
    const/4 v2, 0x0

    #@191
    goto :goto_7

    #@192
    .line 153
    :cond_10
    sget-boolean v2, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    #@194
    if-nez v2, :cond_13

    #@196
    const/16 v2, 0x9

    #@198
    if-eq v10, v2, :cond_11

    #@19a
    const/4 v2, 0x1

    #@19b
    :goto_8
    if-nez v2, :cond_13

    #@19d
    new-instance v2, Ljava/lang/AssertionError;

    #@19f
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@1a2
    throw v2

    #@1a3
    :cond_11
    const/4 v2, 0x0

    #@1a4
    goto :goto_8

    #@1a5
    .line 155
    .end local v10    # "baseTag":I
    :cond_12
    const/4 v10, -0x1

    #@1a6
    .line 159
    .restart local v10    # "baseTag":I
    :cond_13
    const/16 v2, 0xe

    #@1a8
    if-ne v10, v2, :cond_15

    #@1aa
    .line 165
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->isLongPrimaryCE32(I)Z

    #@1ad
    move-result v2

    #@1ae
    if-nez v2, :cond_14

    #@1b0
    .line 166
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    #@1b3
    .line 167
    return-void

    #@1b4
    .line 169
    :cond_14
    move-object/from16 v0, p0

    #@1b6
    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    #@1b8
    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->ces:[J

    #@1ba
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@1bd
    move-result v3

    #@1be
    aget-wide v12, v2, v3

    #@1c0
    .line 170
    .local v12, "dataCE":J
    move/from16 v0, p1

    #@1c2
    invoke-static {v0, v12, v13}, Landroid/icu/impl/coll/Collation;->getThreeBytePrimaryForOffsetData(IJ)J

    #@1c5
    move-result-wide v20

    #@1c6
    .line 171
    .local v20, "p":J
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->primaryFromLongPrimaryCE32(I)J

    #@1c9
    move-result-wide v2

    #@1ca
    cmp-long v2, v2, v20

    #@1cc
    if-eqz v2, :cond_15

    #@1ce
    .line 172
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    #@1d1
    .line 173
    return-void

    #@1d2
    .line 177
    .end local v12    # "dataCE":J
    .end local v20    # "p":J
    :cond_15
    move/from16 v0, v19

    #@1d4
    if-eq v0, v10, :cond_16

    #@1d6
    .line 178
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    #@1d9
    .line 179
    return-void

    #@1da
    .line 182
    :cond_16
    const/4 v2, 0x5

    #@1db
    move/from16 v0, v19

    #@1dd
    if-ne v0, v2, :cond_1a

    #@1df
    .line 183
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    #@1e2
    move-result v18

    #@1e3
    .line 184
    .local v18, "length":I
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    #@1e6
    move-result v9

    #@1e7
    .line 186
    .local v9, "baseLength":I
    move/from16 v0, v18

    #@1e9
    if-eq v0, v9, :cond_17

    #@1eb
    .line 187
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    #@1ee
    .line 188
    return-void

    #@1ef
    .line 191
    :cond_17
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@1f2
    move-result v15

    #@1f3
    .line 192
    .local v15, "idx0":I
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@1f6
    move-result v16

    #@1f7
    .line 194
    .local v16, "idx1":I
    const/4 v14, 0x0

    #@1f8
    .local v14, "i":I
    :goto_9
    move/from16 v0, v18

    #@1fa
    if-ge v14, v0, :cond_18

    #@1fc
    .line 195
    move-object/from16 v0, p0

    #@1fe
    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    #@200
    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@202
    add-int v3, v15, v14

    #@204
    aget v2, v2, v3

    #@206
    move-object/from16 v0, p0

    #@208
    iget-object v3, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    #@20a
    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    #@20c
    add-int v4, v16, v14

    #@20e
    aget v3, v3, v4

    #@210
    if-eq v2, v3, :cond_19

    #@212
    .line 196
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    #@215
    .line 95
    .end local v9    # "baseLength":I
    .end local v14    # "i":I
    .end local v15    # "idx0":I
    .end local v16    # "idx1":I
    .end local v18    # "length":I
    :cond_18
    :goto_a
    return-void

    #@216
    .line 194
    .restart local v9    # "baseLength":I
    .restart local v14    # "i":I
    .restart local v15    # "idx0":I
    .restart local v16    # "idx1":I
    .restart local v18    # "length":I
    :cond_19
    add-int/lit8 v14, v14, 0x1

    #@218
    goto :goto_9

    #@219
    .line 200
    .end local v9    # "baseLength":I
    .end local v14    # "i":I
    .end local v15    # "idx0":I
    .end local v16    # "idx1":I
    .end local v18    # "length":I
    :cond_1a
    const/4 v2, 0x6

    #@21a
    move/from16 v0, v19

    #@21c
    if-ne v0, v2, :cond_1d

    #@21e
    .line 201
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    #@221
    move-result v18

    #@222
    .line 202
    .restart local v18    # "length":I
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    #@225
    move-result v9

    #@226
    .line 204
    .restart local v9    # "baseLength":I
    move/from16 v0, v18

    #@228
    if-eq v0, v9, :cond_1b

    #@22a
    .line 205
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    #@22d
    .line 206
    return-void

    #@22e
    .line 209
    :cond_1b
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@231
    move-result v15

    #@232
    .line 210
    .restart local v15    # "idx0":I
    invoke-static/range {p3 .. p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    #@235
    move-result v16

    #@236
    .line 212
    .restart local v16    # "idx1":I
    const/4 v14, 0x0

    #@237
    .restart local v14    # "i":I
    :goto_b
    move/from16 v0, v18

    #@239
    if-ge v14, v0, :cond_18

    #@23b
    .line 213
    move-object/from16 v0, p0

    #@23d
    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    #@23f
    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->ces:[J

    #@241
    add-int v3, v15, v14

    #@243
    aget-wide v2, v2, v3

    #@245
    move-object/from16 v0, p0

    #@247
    iget-object v4, v0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    #@249
    iget-object v4, v4, Landroid/icu/impl/coll/CollationData;->ces:[J

    #@24b
    add-int v5, v16, v14

    #@24d
    aget-wide v4, v4, v5

    #@24f
    cmp-long v2, v2, v4

    #@251
    if-eqz v2, :cond_1c

    #@253
    .line 214
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    #@256
    goto :goto_a

    #@257
    .line 212
    :cond_1c
    add-int/lit8 v14, v14, 0x1

    #@259
    goto :goto_b

    #@25a
    .line 218
    .end local v9    # "baseLength":I
    .end local v14    # "i":I
    .end local v15    # "idx0":I
    .end local v16    # "idx1":I
    .end local v18    # "length":I
    :cond_1d
    const/16 v2, 0xc

    #@25c
    move/from16 v0, v19

    #@25e
    if-ne v0, v2, :cond_1f

    #@260
    .line 219
    new-instance v17, Ljava/lang/StringBuilder;

    #@262
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@265
    .line 220
    .local v17, "jamos":Ljava/lang/StringBuilder;
    move/from16 v0, p1

    #@267
    move-object/from16 v1, v17

    #@269
    invoke-static {v0, v1}, Landroid/icu/impl/Normalizer2Impl$Hangul;->decompose(ILjava/lang/Appendable;)I

    #@26c
    move-result v18

    #@26d
    .line 221
    .restart local v18    # "length":I
    move-object/from16 v0, p0

    #@26f
    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    #@271
    const/4 v3, 0x0

    #@272
    move-object/from16 v0, v17

    #@274
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    #@277
    move-result v3

    #@278
    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@27b
    move-result v2

    #@27c
    if-nez v2, :cond_1e

    #@27e
    move-object/from16 v0, p0

    #@280
    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    #@282
    const/4 v3, 0x1

    #@283
    move-object/from16 v0, v17

    #@285
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    #@288
    move-result v3

    #@289
    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@28c
    move-result v2

    #@28d
    if-nez v2, :cond_1e

    #@28f
    .line 222
    const/4 v2, 0x3

    #@290
    move/from16 v0, v18

    #@292
    if-ne v0, v2, :cond_18

    #@294
    move-object/from16 v0, p0

    #@296
    iget-object v2, v0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    #@298
    const/4 v3, 0x2

    #@299
    move-object/from16 v0, v17

    #@29b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    #@29e
    move-result v3

    #@29f
    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@2a2
    move-result v2

    #@2a3
    .line 221
    if-eqz v2, :cond_18

    #@2a5
    .line 223
    :cond_1e
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    #@2a8
    goto/16 :goto_a

    #@2aa
    .line 225
    .end local v17    # "jamos":Ljava/lang/StringBuilder;
    .end local v18    # "length":I
    :cond_1f
    move/from16 v0, p2

    #@2ac
    move/from16 v1, p3

    #@2ae
    if-eq v0, v1, :cond_18

    #@2b0
    .line 226
    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/coll/TailoredSet;->add(I)V

    #@2b3
    goto/16 :goto_a
.end method

.method private compareContractions(ILjava/lang/CharSequence;ILjava/lang/CharSequence;I)V
    .locals 10
    .param p1, "c"    # I
    .param p2, "p"    # Ljava/lang/CharSequence;
    .param p3, "pidx"    # I
    .param p4, "q"    # Ljava/lang/CharSequence;
    .param p5, "qidx"    # I

    #@0
    .prologue
    .line 288
    new-instance v8, Landroid/icu/util/CharsTrie;

    #@2
    invoke-direct {v8, p2, p3}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    #@5
    invoke-virtual {v8}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    #@8
    move-result-object v5

    #@9
    .line 289
    .local v5, "suffixes":Landroid/icu/util/CharsTrie$Iterator;
    new-instance v8, Landroid/icu/util/CharsTrie;

    #@b
    invoke-direct {v8, p4, p5}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    #@e
    invoke-virtual {v8}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    #@11
    move-result-object v0

    #@12
    .line 290
    .local v0, "baseSuffixes":Landroid/icu/util/CharsTrie$Iterator;
    const/4 v7, 0x0

    #@13
    .line 291
    .local v7, "ts":Ljava/lang/String;
    const/4 v2, 0x0

    #@14
    .line 295
    .local v2, "bs":Ljava/lang/String;
    const-string/jumbo v4, "\uffff\uffff"

    #@17
    .line 296
    .local v4, "none":Ljava/lang/String;
    const/4 v6, 0x0

    #@18
    .local v6, "te":Landroid/icu/util/CharsTrie$Entry;
    const/4 v1, 0x0

    #@19
    .line 298
    .end local v2    # "bs":Ljava/lang/String;
    .end local v6    # "te":Landroid/icu/util/CharsTrie$Entry;
    .end local v7    # "ts":Ljava/lang/String;
    :goto_0
    if-nez v7, :cond_0

    #@1b
    .line 299
    invoke-virtual {v5}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    #@1e
    move-result v8

    #@1f
    if-eqz v8, :cond_2

    #@21
    .line 300
    invoke-virtual {v5}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    #@24
    move-result-object v6

    #@25
    .line 301
    .local v6, "te":Landroid/icu/util/CharsTrie$Entry;
    iget-object v8, v6, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    #@27
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@2a
    move-result-object v7

    #@2b
    .line 307
    .end local v6    # "te":Landroid/icu/util/CharsTrie$Entry;
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    #@2d
    .line 308
    invoke-virtual {v0}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    #@30
    move-result v8

    #@31
    if-eqz v8, :cond_3

    #@33
    .line 309
    invoke-virtual {v0}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    #@36
    move-result-object v1

    #@37
    .line 310
    .local v1, "be":Landroid/icu/util/CharsTrie$Entry;
    iget-object v8, v1, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    #@39
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .line 316
    .end local v1    # "be":Landroid/icu/util/CharsTrie$Entry;
    :cond_1
    :goto_2
    if-ne v7, v4, :cond_4

    #@3f
    if-ne v2, v4, :cond_4

    #@41
    .line 286
    return-void

    #@42
    .line 303
    :cond_2
    const/4 v6, 0x0

    #@43
    .line 304
    .local v6, "te":Landroid/icu/util/CharsTrie$Entry;
    move-object v7, v4

    #@44
    .local v7, "ts":Ljava/lang/String;
    goto :goto_1

    #@45
    .line 312
    .end local v6    # "te":Landroid/icu/util/CharsTrie$Entry;
    .end local v7    # "ts":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    #@46
    .line 313
    .local v1, "be":Landroid/icu/util/CharsTrie$Entry;
    move-object v2, v4

    #@47
    .local v2, "bs":Ljava/lang/String;
    goto :goto_2

    #@48
    .line 319
    .end local v1    # "be":Landroid/icu/util/CharsTrie$Entry;
    .end local v2    # "bs":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@4b
    move-result v3

    #@4c
    .line 320
    .local v3, "cmp":I
    if-gez v3, :cond_5

    #@4e
    .line 322
    invoke-direct {p0, p1, v7}, Landroid/icu/impl/coll/TailoredSet;->addSuffix(ILjava/lang/CharSequence;)V

    #@51
    .line 323
    const/4 v6, 0x0

    #@52
    .line 324
    .restart local v6    # "te":Landroid/icu/util/CharsTrie$Entry;
    const/4 v7, 0x0

    #@53
    .local v7, "ts":Ljava/lang/String;
    goto :goto_0

    #@54
    .line 325
    .end local v6    # "te":Landroid/icu/util/CharsTrie$Entry;
    .end local v7    # "ts":Ljava/lang/String;
    :cond_5
    if-lez v3, :cond_6

    #@56
    .line 327
    invoke-direct {p0, p1, v2}, Landroid/icu/impl/coll/TailoredSet;->addSuffix(ILjava/lang/CharSequence;)V

    #@59
    .line 328
    const/4 v1, 0x0

    #@5a
    .line 329
    .restart local v1    # "be":Landroid/icu/util/CharsTrie$Entry;
    const/4 v2, 0x0

    #@5b
    .local v2, "bs":Ljava/lang/String;
    goto :goto_0

    #@5c
    .line 331
    .end local v1    # "be":Landroid/icu/util/CharsTrie$Entry;
    .end local v2    # "bs":Ljava/lang/String;
    :cond_6
    iput-object v7, p0, Landroid/icu/impl/coll/TailoredSet;->suffix:Ljava/lang/String;

    #@5e
    .line 332
    iget v8, v6, Landroid/icu/util/CharsTrie$Entry;->value:I

    #@60
    iget v9, v1, Landroid/icu/util/CharsTrie$Entry;->value:I

    #@62
    invoke-direct {p0, p1, v8, v9}, Landroid/icu/impl/coll/TailoredSet;->compare(III)V

    #@65
    .line 333
    const/4 v8, 0x0

    #@66
    iput-object v8, p0, Landroid/icu/impl/coll/TailoredSet;->suffix:Ljava/lang/String;

    #@68
    .line 334
    const/4 v1, 0x0

    #@69
    .restart local v1    # "be":Landroid/icu/util/CharsTrie$Entry;
    const/4 v6, 0x0

    #@6a
    .line 335
    .restart local v6    # "te":Landroid/icu/util/CharsTrie$Entry;
    const/4 v2, 0x0

    #@6b
    .restart local v2    # "bs":Ljava/lang/String;
    const/4 v7, 0x0

    #@6c
    .restart local v7    # "ts":Ljava/lang/String;
    goto :goto_0
.end method

.method private comparePrefixes(ILjava/lang/CharSequence;ILjava/lang/CharSequence;I)V
    .locals 10
    .param p1, "c"    # I
    .param p2, "p"    # Ljava/lang/CharSequence;
    .param p3, "pidx"    # I
    .param p4, "q"    # Ljava/lang/CharSequence;
    .param p5, "qidx"    # I

    #@0
    .prologue
    .line 232
    new-instance v8, Landroid/icu/util/CharsTrie;

    #@2
    invoke-direct {v8, p2, p3}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    #@5
    invoke-virtual {v8}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    #@8
    move-result-object v5

    #@9
    .line 233
    .local v5, "prefixes":Landroid/icu/util/CharsTrie$Iterator;
    new-instance v8, Landroid/icu/util/CharsTrie;

    #@b
    invoke-direct {v8, p4, p5}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    #@e
    invoke-virtual {v8}, Landroid/icu/util/CharsTrie;->iterator()Landroid/icu/util/CharsTrie$Iterator;

    #@11
    move-result-object v0

    #@12
    .line 234
    .local v0, "basePrefixes":Landroid/icu/util/CharsTrie$Iterator;
    const/4 v7, 0x0

    #@13
    .line 235
    .local v7, "tp":Ljava/lang/String;
    const/4 v2, 0x0

    #@14
    .line 238
    .local v2, "bp":Ljava/lang/String;
    const-string/jumbo v4, "\uffff"

    #@17
    .line 239
    .local v4, "none":Ljava/lang/String;
    const/4 v6, 0x0

    #@18
    .local v6, "te":Landroid/icu/util/CharsTrie$Entry;
    const/4 v1, 0x0

    #@19
    .line 241
    .end local v2    # "bp":Ljava/lang/String;
    .end local v6    # "te":Landroid/icu/util/CharsTrie$Entry;
    .end local v7    # "tp":Ljava/lang/String;
    :goto_0
    if-nez v7, :cond_0

    #@1b
    .line 242
    invoke-virtual {v5}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    #@1e
    move-result v8

    #@1f
    if-eqz v8, :cond_2

    #@21
    .line 243
    invoke-virtual {v5}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    #@24
    move-result-object v6

    #@25
    .line 244
    .local v6, "te":Landroid/icu/util/CharsTrie$Entry;
    iget-object v8, v6, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    #@27
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@2a
    move-result-object v7

    #@2b
    .line 250
    .end local v6    # "te":Landroid/icu/util/CharsTrie$Entry;
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    #@2d
    .line 251
    invoke-virtual {v0}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    #@30
    move-result v8

    #@31
    if-eqz v8, :cond_3

    #@33
    .line 252
    invoke-virtual {v0}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    #@36
    move-result-object v1

    #@37
    .line 253
    .local v1, "be":Landroid/icu/util/CharsTrie$Entry;
    iget-object v8, v1, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    #@39
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .line 259
    .end local v1    # "be":Landroid/icu/util/CharsTrie$Entry;
    :cond_1
    :goto_2
    if-ne v7, v4, :cond_4

    #@3f
    if-ne v2, v4, :cond_4

    #@41
    .line 230
    return-void

    #@42
    .line 246
    :cond_2
    const/4 v6, 0x0

    #@43
    .line 247
    .local v6, "te":Landroid/icu/util/CharsTrie$Entry;
    move-object v7, v4

    #@44
    .local v7, "tp":Ljava/lang/String;
    goto :goto_1

    #@45
    .line 255
    .end local v6    # "te":Landroid/icu/util/CharsTrie$Entry;
    .end local v7    # "tp":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    #@46
    .line 256
    .local v1, "be":Landroid/icu/util/CharsTrie$Entry;
    move-object v2, v4

    #@47
    .local v2, "bp":Ljava/lang/String;
    goto :goto_2

    #@48
    .line 262
    .end local v1    # "be":Landroid/icu/util/CharsTrie$Entry;
    .end local v2    # "bp":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@4b
    move-result v3

    #@4c
    .line 263
    .local v3, "cmp":I
    if-gez v3, :cond_7

    #@4e
    .line 265
    sget-boolean v8, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    #@50
    if-nez v8, :cond_6

    #@52
    if-eqz v6, :cond_5

    #@54
    const/4 v8, 0x1

    #@55
    :goto_3
    if-nez v8, :cond_6

    #@57
    new-instance v8, Ljava/lang/AssertionError;

    #@59
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@5c
    throw v8

    #@5d
    :cond_5
    const/4 v8, 0x0

    #@5e
    goto :goto_3

    #@5f
    .line 266
    :cond_6
    iget-object v8, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    #@61
    iget v9, v6, Landroid/icu/util/CharsTrie$Entry;->value:I

    #@63
    invoke-direct {p0, v8, v7, p1, v9}, Landroid/icu/impl/coll/TailoredSet;->addPrefix(Landroid/icu/impl/coll/CollationData;Ljava/lang/CharSequence;II)V

    #@66
    .line 267
    const/4 v6, 0x0

    #@67
    .line 268
    .restart local v6    # "te":Landroid/icu/util/CharsTrie$Entry;
    const/4 v7, 0x0

    #@68
    .local v7, "tp":Ljava/lang/String;
    goto :goto_0

    #@69
    .line 269
    .end local v6    # "te":Landroid/icu/util/CharsTrie$Entry;
    .end local v7    # "tp":Ljava/lang/String;
    :cond_7
    if-lez v3, :cond_a

    #@6b
    .line 271
    sget-boolean v8, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    #@6d
    if-nez v8, :cond_9

    #@6f
    if-eqz v1, :cond_8

    #@71
    const/4 v8, 0x1

    #@72
    :goto_4
    if-nez v8, :cond_9

    #@74
    new-instance v8, Ljava/lang/AssertionError;

    #@76
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@79
    throw v8

    #@7a
    :cond_8
    const/4 v8, 0x0

    #@7b
    goto :goto_4

    #@7c
    .line 272
    :cond_9
    iget-object v8, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    #@7e
    iget v9, v1, Landroid/icu/util/CharsTrie$Entry;->value:I

    #@80
    invoke-direct {p0, v8, v2, p1, v9}, Landroid/icu/impl/coll/TailoredSet;->addPrefix(Landroid/icu/impl/coll/CollationData;Ljava/lang/CharSequence;II)V

    #@83
    .line 273
    const/4 v1, 0x0

    #@84
    .line 274
    .restart local v1    # "be":Landroid/icu/util/CharsTrie$Entry;
    const/4 v2, 0x0

    #@85
    .local v2, "bp":Ljava/lang/String;
    goto :goto_0

    #@86
    .line 276
    .end local v1    # "be":Landroid/icu/util/CharsTrie$Entry;
    .end local v2    # "bp":Ljava/lang/String;
    :cond_a
    invoke-direct {p0, v7}, Landroid/icu/impl/coll/TailoredSet;->setPrefix(Ljava/lang/CharSequence;)V

    #@89
    .line 277
    sget-boolean v8, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    #@8b
    if-nez v8, :cond_c

    #@8d
    if-eqz v6, :cond_b

    #@8f
    if-eqz v1, :cond_b

    #@91
    const/4 v8, 0x1

    #@92
    :goto_5
    if-nez v8, :cond_c

    #@94
    new-instance v8, Ljava/lang/AssertionError;

    #@96
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@99
    throw v8

    #@9a
    :cond_b
    const/4 v8, 0x0

    #@9b
    goto :goto_5

    #@9c
    .line 278
    :cond_c
    iget v8, v6, Landroid/icu/util/CharsTrie$Entry;->value:I

    #@9e
    iget v9, v1, Landroid/icu/util/CharsTrie$Entry;->value:I

    #@a0
    invoke-direct {p0, p1, v8, v9}, Landroid/icu/impl/coll/TailoredSet;->compare(III)V

    #@a3
    .line 279
    invoke-direct {p0}, Landroid/icu/impl/coll/TailoredSet;->resetPrefix()V

    #@a6
    .line 280
    const/4 v1, 0x0

    #@a7
    .restart local v1    # "be":Landroid/icu/util/CharsTrie$Entry;
    const/4 v6, 0x0

    #@a8
    .line 281
    .restart local v6    # "te":Landroid/icu/util/CharsTrie$Entry;
    const/4 v2, 0x0

    #@a9
    .restart local v2    # "bp":Ljava/lang/String;
    const/4 v7, 0x0

    #@aa
    .restart local v7    # "tp":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private enumTailoredRange(IIILandroid/icu/impl/coll/TailoredSet;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "ce32"    # I
    .param p4, "ts"    # Landroid/icu/impl/coll/TailoredSet;

    #@0
    .prologue
    .line 62
    const/16 v0, 0xc0

    #@2
    if-ne p3, v0, :cond_0

    #@4
    .line 63
    return-void

    #@5
    .line 65
    :cond_0
    invoke-direct {p4, p1, p2, p3}, Landroid/icu/impl/coll/TailoredSet;->handleCE32(III)V

    #@8
    .line 61
    return-void
.end method

.method private handleCE32(III)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "ce32"    # I

    #@0
    .prologue
    const/16 v2, 0xc0

    #@2
    .line 72
    sget-boolean v1, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    #@4
    if-nez v1, :cond_1

    #@6
    if-eq p3, v2, :cond_0

    #@8
    const/4 v1, 0x1

    #@9
    :goto_0
    if-nez v1, :cond_1

    #@b
    new-instance v1, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@10
    throw v1

    #@11
    :cond_0
    const/4 v1, 0x0

    #@12
    goto :goto_0

    #@13
    .line 73
    :cond_1
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 74
    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    #@1b
    invoke-virtual {v1, p3}, Landroid/icu/impl/coll/CollationData;->getIndirectCE32(I)I

    #@1e
    move-result p3

    #@1f
    .line 75
    if-ne p3, v2, :cond_2

    #@21
    .line 76
    return-void

    #@22
    .line 80
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    #@24
    iget-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    #@26
    invoke-virtual {v2, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@29
    move-result v2

    #@2a
    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    #@2d
    move-result v0

    #@2e
    .line 84
    .local v0, "baseCE32":I
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->isSelfContainedCE32(I)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_4

    #@34
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->isSelfContainedCE32(I)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_4

    #@3a
    .line 86
    if-eq p3, v0, :cond_3

    #@3c
    .line 87
    iget-object v1, p0, Landroid/icu/impl/coll/TailoredSet;->tailored:Landroid/icu/text/UnicodeSet;

    #@3e
    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@41
    .line 92
    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    #@43
    if-le p1, p2, :cond_2

    #@45
    .line 71
    return-void

    #@46
    .line 90
    :cond_4
    invoke-direct {p0, p1, p3, v0}, Landroid/icu/impl/coll/TailoredSet;->compare(III)V

    #@49
    goto :goto_1
.end method

.method private resetPrefix()V
    .locals 2

    #@0
    .prologue
    .line 391
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6
    .line 390
    return-void
.end method

.method private setPrefix(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "pfx"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 386
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6
    .line 387
    iget-object v0, p0, Landroid/icu/impl/coll/TailoredSet;->unreversedPrefix:Ljava/lang/StringBuilder;

    #@8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    #@f
    .line 385
    return-void
.end method


# virtual methods
.method public forData(Landroid/icu/impl/coll/CollationData;)V
    .locals 5
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;

    #@0
    .prologue
    .line 50
    iput-object p1, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    #@2
    .line 51
    iget-object v2, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@4
    iput-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    #@6
    .line 52
    sget-boolean v2, Landroid/icu/impl/coll/TailoredSet;->-assertionsDisabled:Z

    #@8
    if-nez v2, :cond_1

    #@a
    iget-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->baseData:Landroid/icu/impl/coll/CollationData;

    #@c
    if-eqz v2, :cond_0

    #@e
    const/4 v2, 0x1

    #@f
    :goto_0
    if-nez v2, :cond_1

    #@11
    new-instance v2, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@16
    throw v2

    #@17
    :cond_0
    const/4 v2, 0x0

    #@18
    goto :goto_0

    #@19
    .line 54
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/TailoredSet;->data:Landroid/icu/impl/coll/CollationData;

    #@1b
    iget-object v2, v2, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    #@1d
    invoke-virtual {v2}, Landroid/icu/impl/Trie2_32;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v1

    #@21
    .line 56
    .local v1, "trieIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/impl/Trie2$Range;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_2

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/icu/impl/Trie2$Range;

    #@2d
    .local v0, "range":Landroid/icu/impl/Trie2$Range;
    iget-boolean v2, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    #@2f
    if-eqz v2, :cond_3

    #@31
    .line 49
    .end local v0    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_2
    return-void

    #@32
    .line 57
    .restart local v0    # "range":Landroid/icu/impl/Trie2$Range;
    :cond_3
    iget v2, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    #@34
    iget v3, v0, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    #@36
    iget v4, v0, Landroid/icu/impl/Trie2$Range;->value:I

    #@38
    invoke-direct {p0, v2, v3, v4, p0}, Landroid/icu/impl/coll/TailoredSet;->enumTailoredRange(IIILandroid/icu/impl/coll/TailoredSet;)V

    #@3b
    goto :goto_1
.end method
