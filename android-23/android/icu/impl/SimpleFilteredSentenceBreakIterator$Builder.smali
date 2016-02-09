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
.field static final AddToForward:I = 0x2

.field static final MATCH:I = 0x2

.field static final PARTIAL:I = 0x1

.field static final SuppressInReverse:I = 0x1


# instance fields
.field private filterSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 233
    invoke-direct {p0}, Landroid/icu/text/FilteredBreakIteratorBuilder;-><init>()V

    #@3
    .line 234
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    #@a
    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 8
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 214
    invoke-direct {p0}, Landroid/icu/text/FilteredBreakIteratorBuilder;-><init>()V

    #@3
    .line 216
    const-string/jumbo v7, "android/icu/impl/data/icudt55b/brkitr"

    #@6
    .line 215
    invoke-static {v7, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@9
    move-result-object v5

    #@a
    check-cast v5, Landroid/icu/impl/ICUResourceBundle;

    #@c
    .line 217
    .local v5, "rb":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v7, "exceptions"

    #@f
    invoke-virtual {v5, v7}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@12
    move-result-object v3

    #@13
    .line 218
    .local v3, "exceptions":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v7, "SentenceBreak"

    #@16
    invoke-virtual {v3, v7}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@19
    move-result-object v2

    #@1a
    .line 220
    .local v2, "breaks":Landroid/icu/impl/ICUResourceBundle;
    new-instance v7, Ljava/util/HashSet;

    #@1c
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    #@1f
    iput-object v7, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    #@21
    .line 221
    if-eqz v2, :cond_0

    #@23
    .line 222
    const/4 v4, 0x0

    #@24
    .local v4, "index":I
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    #@27
    move-result v6

    #@28
    .local v6, "size":I
    :goto_0
    if-ge v4, v6, :cond_0

    #@2a
    .line 223
    invoke-virtual {v2, v4}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@30
    .line 224
    .local v0, "b":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 225
    .local v1, "br":Ljava/lang/String;
    iget-object v7, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    #@36
    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@39
    .line 222
    add-int/lit8 v4, v4, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 214
    .end local v0    # "b":Landroid/icu/impl/ICUResourceBundle;
    .end local v1    # "br":Ljava/lang/String;
    .end local v4    # "index":I
    .end local v6    # "size":I
    :cond_0
    return-void
.end method


# virtual methods
.method public build(Landroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;
    .locals 27
    .param p1, "adoptBreakIterator"    # Landroid/icu/text/BreakIterator;

    #@0
    .prologue
    .line 256
    new-instance v6, Landroid/icu/util/CharsTrieBuilder;

    #@2
    invoke-direct {v6}, Landroid/icu/util/CharsTrieBuilder;-><init>()V

    #@5
    .line 257
    .local v6, "builder":Landroid/icu/util/CharsTrieBuilder;
    new-instance v7, Landroid/icu/util/CharsTrieBuilder;

    #@7
    invoke-direct {v7}, Landroid/icu/util/CharsTrieBuilder;-><init>()V

    #@a
    .line 259
    .local v7, "builder2":Landroid/icu/util/CharsTrieBuilder;
    const/4 v15, 0x0

    #@b
    .line 260
    .local v15, "revCount":I
    const/4 v9, 0x0

    #@c
    .line 262
    .local v9, "fwdCount":I
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    #@10
    move-object/from16 v22, v0

    #@12
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->size()I

    #@15
    move-result v20

    #@16
    .line 263
    .local v20, "subCount":I
    move/from16 v0, v20

    #@18
    new-array v0, v0, [Ljava/lang/String;

    #@1a
    move-object/from16 v21, v0

    #@1c
    .line 264
    .local v21, "ustrs":[Ljava/lang/String;
    move/from16 v0, v20

    #@1e
    new-array v13, v0, [I

    #@20
    .line 266
    .local v13, "partials":[I
    const/4 v5, 0x0

    #@21
    .line 267
    .local v5, "backwardsTrie":Landroid/icu/util/CharsTrie;
    const/4 v8, 0x0

    #@22
    .line 269
    .local v8, "forwardsPartialTrie":Landroid/icu/util/CharsTrie;
    const/4 v10, 0x0

    #@23
    .line 270
    .local v10, "i":I
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    #@27
    move-object/from16 v22, v0

    #@29
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v18

    #@2d
    .local v18, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v22

    #@31
    if-eqz v22, :cond_0

    #@33
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v17

    #@37
    check-cast v17, Ljava/lang/String;

    #@39
    .line 271
    .local v17, "s":Ljava/lang/String;
    aput-object v17, v21, v10

    #@3b
    .line 272
    const/16 v22, 0x0

    #@3d
    aput v22, v13, v10

    #@3f
    .line 273
    add-int/lit8 v10, v10, 0x1

    #@41
    goto :goto_0

    #@42
    .line 276
    .end local v17    # "s":Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    #@43
    :goto_1
    move/from16 v0, v20

    #@45
    if-ge v10, v0, :cond_6

    #@47
    .line 277
    aget-object v22, v21, v10

    #@49
    const/16 v23, 0x2e

    #@4b
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(I)I

    #@4e
    move-result v12

    #@4f
    .line 278
    .local v12, "nn":I
    const/16 v22, -0x1

    #@51
    move/from16 v0, v22

    #@53
    if-le v12, v0, :cond_5

    #@55
    add-int/lit8 v22, v12, 0x1

    #@57
    aget-object v23, v21, v10

    #@59
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    #@5c
    move-result v23

    #@5d
    move/from16 v0, v22

    #@5f
    move/from16 v1, v23

    #@61
    if-eq v0, v1, :cond_5

    #@63
    .line 281
    const/16 v19, -0x1

    #@65
    .line 282
    .local v19, "sameAs":I
    const/4 v11, 0x0

    #@66
    .local v11, "j":I
    :goto_2
    move/from16 v0, v20

    #@68
    if-ge v11, v0, :cond_4

    #@6a
    .line 283
    if-ne v11, v10, :cond_2

    #@6c
    .line 282
    :cond_1
    :goto_3
    add-int/lit8 v11, v11, 0x1

    #@6e
    goto :goto_2

    #@6f
    .line 285
    :cond_2
    aget-object v22, v21, v10

    #@71
    aget-object v23, v21, v11

    #@73
    add-int/lit8 v24, v12, 0x1

    #@75
    const/16 v25, 0x0

    #@77
    const/16 v26, 0x0

    #@79
    move-object/from16 v0, v22

    #@7b
    move/from16 v1, v25

    #@7d
    move-object/from16 v2, v23

    #@7f
    move/from16 v3, v26

    #@81
    move/from16 v4, v24

    #@83
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@86
    move-result v22

    #@87
    if-eqz v22, :cond_1

    #@89
    .line 286
    aget v22, v13, v11

    #@8b
    if-nez v22, :cond_3

    #@8d
    .line 287
    const/16 v22, 0x3

    #@8f
    aput v22, v13, v11

    #@91
    goto :goto_3

    #@92
    .line 288
    :cond_3
    aget v22, v13, v11

    #@94
    and-int/lit8 v22, v22, 0x1

    #@96
    if-eqz v22, :cond_1

    #@98
    .line 289
    move/from16 v19, v11

    #@9a
    goto :goto_3

    #@9b
    .line 294
    :cond_4
    const/16 v22, -0x1

    #@9d
    move/from16 v0, v19

    #@9f
    move/from16 v1, v22

    #@a1
    if-ne v0, v1, :cond_5

    #@a3
    aget v22, v13, v10

    #@a5
    if-nez v22, :cond_5

    #@a7
    .line 295
    new-instance v14, Ljava/lang/StringBuilder;

    #@a9
    aget-object v22, v21, v10

    #@ab
    add-int/lit8 v23, v12, 0x1

    #@ad
    const/16 v24, 0x0

    #@af
    move-object/from16 v0, v22

    #@b1
    move/from16 v1, v24

    #@b3
    move/from16 v2, v23

    #@b5
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b8
    move-result-object v22

    #@b9
    move-object/from16 v0, v22

    #@bb
    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@be
    .line 297
    .local v14, "prefix":Ljava/lang/StringBuilder;
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    #@c1
    .line 298
    const/16 v22, 0x1

    #@c3
    move/from16 v0, v22

    #@c5
    invoke-virtual {v6, v14, v0}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    #@c8
    .line 299
    add-int/lit8 v15, v15, 0x1

    #@ca
    .line 300
    const/16 v22, 0x3

    #@cc
    aput v22, v13, v10

    #@ce
    .line 276
    .end local v11    # "j":I
    .end local v14    # "prefix":Ljava/lang/StringBuilder;
    .end local v19    # "sameAs":I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    #@d0
    goto/16 :goto_1

    #@d2
    .line 305
    .end local v12    # "nn":I
    :cond_6
    const/4 v10, 0x0

    #@d3
    :goto_4
    move/from16 v0, v20

    #@d5
    if-ge v10, v0, :cond_8

    #@d7
    .line 306
    aget v22, v13, v10

    #@d9
    if-nez v22, :cond_7

    #@db
    .line 307
    new-instance v22, Ljava/lang/StringBuilder;

    #@dd
    aget-object v23, v21, v10

    #@df
    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e2
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    #@e5
    move-result-object v16

    #@e6
    .line 308
    .local v16, "reversed":Ljava/lang/StringBuilder;
    const/16 v22, 0x2

    #@e8
    move-object/from16 v0, v16

    #@ea
    move/from16 v1, v22

    #@ec
    invoke-virtual {v6, v0, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    #@ef
    .line 309
    add-int/lit8 v15, v15, 0x1

    #@f1
    .line 305
    .end local v16    # "reversed":Ljava/lang/StringBuilder;
    :goto_5
    add-int/lit8 v10, v10, 0x1

    #@f3
    goto :goto_4

    #@f4
    .line 316
    :cond_7
    aget-object v22, v21, v10

    #@f6
    const/16 v23, 0x2

    #@f8
    move-object/from16 v0, v22

    #@fa
    move/from16 v1, v23

    #@fc
    invoke-virtual {v7, v0, v1}, Landroid/icu/util/CharsTrieBuilder;->add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;

    #@ff
    .line 317
    add-int/lit8 v9, v9, 0x1

    #@101
    goto :goto_5

    #@102
    .line 321
    :cond_8
    if-lez v15, :cond_9

    #@104
    .line 322
    sget-object v22, Landroid/icu/util/StringTrieBuilder$Option;->FAST:Landroid/icu/util/StringTrieBuilder$Option;

    #@106
    move-object/from16 v0, v22

    #@108
    invoke-virtual {v6, v0}, Landroid/icu/util/CharsTrieBuilder;->build(Landroid/icu/util/StringTrieBuilder$Option;)Landroid/icu/util/CharsTrie;

    #@10b
    move-result-object v5

    #@10c
    .line 325
    .end local v5    # "backwardsTrie":Landroid/icu/util/CharsTrie;
    :cond_9
    if-lez v9, :cond_a

    #@10e
    .line 326
    sget-object v22, Landroid/icu/util/StringTrieBuilder$Option;->FAST:Landroid/icu/util/StringTrieBuilder$Option;

    #@110
    move-object/from16 v0, v22

    #@112
    invoke-virtual {v7, v0}, Landroid/icu/util/CharsTrieBuilder;->build(Landroid/icu/util/StringTrieBuilder$Option;)Landroid/icu/util/CharsTrie;

    #@115
    move-result-object v8

    #@116
    .line 328
    .end local v8    # "forwardsPartialTrie":Landroid/icu/util/CharsTrie;
    :cond_a
    new-instance v22, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;

    #@118
    move-object/from16 v0, v22

    #@11a
    move-object/from16 v1, p1

    #@11c
    invoke-direct {v0, v1, v8, v5}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;-><init>(Landroid/icu/text/BreakIterator;Landroid/icu/util/CharsTrie;Landroid/icu/util/CharsTrie;)V

    #@11f
    return-object v22
.end method

.method public suppressBreakAfter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 240
    new-instance v0, Ljava/util/HashSet;

    #@6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@9
    iput-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    #@b
    .line 242
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public unsuppressBreakAfter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 248
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 250
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;->filterSet:Ljava/util/HashSet;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method
