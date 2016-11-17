.class final Ljava/text/MergeCollation;
.super Ljava/lang/Object;
.source "MergeCollation.java"


# instance fields
.field private final BITARRAYMASK:B

.field private final BYTEMASK:I

.field private final BYTEPOWER:I

.field private transient excess:Ljava/lang/StringBuffer;

.field private transient lastEntry:Ljava/text/PatternEntry;

.field patterns:Ljava/util/ArrayList;

.field private transient saveEntry:Ljava/text/PatternEntry;

.field private transient statusArray:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 207
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v1, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    #@b
    .line 209
    iput-object v2, p0, Ljava/text/MergeCollation;->saveEntry:Ljava/text/PatternEntry;

    #@d
    .line 210
    iput-object v2, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    #@f
    .line 214
    new-instance v1, Ljava/lang/StringBuffer;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@14
    iput-object v1, p0, Ljava/text/MergeCollation;->excess:Ljava/lang/StringBuffer;

    #@16
    .line 224
    const/16 v1, 0x2000

    #@18
    new-array v1, v1, [B

    #@1a
    iput-object v1, p0, Ljava/text/MergeCollation;->statusArray:[B

    #@1c
    .line 225
    const/4 v1, 0x1

    #@1d
    iput-byte v1, p0, Ljava/text/MergeCollation;->BITARRAYMASK:B

    #@1f
    .line 226
    const/4 v1, 0x3

    #@20
    iput v1, p0, Ljava/text/MergeCollation;->BYTEPOWER:I

    #@22
    .line 227
    const/4 v1, 0x7

    #@23
    iput v1, p0, Ljava/text/MergeCollation;->BYTEMASK:I

    #@25
    .line 71
    const/4 v0, 0x0

    #@26
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/text/MergeCollation;->statusArray:[B

    #@28
    array-length v1, v1

    #@29
    if-ge v0, v1, :cond_0

    #@2b
    .line 72
    iget-object v1, p0, Ljava/text/MergeCollation;->statusArray:[B

    #@2d
    const/4 v2, 0x0

    #@2e
    aput-byte v2, v1, v0

    #@30
    .line 71
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_0

    #@33
    .line 73
    :cond_0
    invoke-virtual {p0, p1}, Ljava/text/MergeCollation;->setPattern(Ljava/lang/String;)V

    #@36
    .line 69
    return-void
.end method

.method private final findLastEntry(Ljava/text/PatternEntry;Ljava/lang/StringBuffer;)I
    .locals 9
    .param p1, "entry"    # Ljava/text/PatternEntry;
    .param p2, "excessChars"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v8, -0x1

    #@2
    const/4 v7, 0x0

    #@3
    .line 305
    if-nez p1, :cond_0

    #@5
    .line 306
    return v7

    #@6
    .line 308
    :cond_0
    iget v4, p1, Ljava/text/PatternEntry;->strength:I

    #@8
    const/4 v5, -0x2

    #@9
    if-eq v4, v5, :cond_4

    #@b
    .line 312
    const/4 v3, -0x1

    #@c
    .line 313
    .local v3, "oldIndex":I
    iget-object v4, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    #@e
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@11
    move-result v4

    #@12
    if-ne v4, v6, :cond_2

    #@14
    .line 314
    iget-object v4, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    #@16
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v4

    #@1a
    shr-int/lit8 v2, v4, 0x3

    #@1c
    .line 315
    .local v2, "index":I
    iget-object v4, p0, Ljava/text/MergeCollation;->statusArray:[B

    #@1e
    aget-byte v4, v4, v2

    #@20
    .line 316
    iget-object v5, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    #@22
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v5

    #@26
    and-int/lit8 v5, v5, 0x7

    #@28
    shl-int v5, v6, v5

    #@2a
    .line 315
    and-int/2addr v4, v5

    #@2b
    if-eqz v4, :cond_1

    #@2d
    .line 317
    iget-object v4, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    #@32
    move-result v3

    #@33
    .line 322
    .end local v2    # "index":I
    :cond_1
    :goto_0
    if-ne v3, v8, :cond_3

    #@35
    .line 323
    new-instance v4, Ljava/text/ParseException;

    #@37
    new-instance v5, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v6, "couldn\'t find last entry: "

    #@3f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    invoke-direct {v4, v5, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@4e
    throw v4

    #@4f
    .line 320
    :cond_2
    iget-object v4, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    #@51
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    #@54
    move-result v3

    #@55
    goto :goto_0

    #@56
    .line 325
    :cond_3
    add-int/lit8 v4, v3, 0x1

    #@58
    return v4

    #@59
    .line 328
    .end local v3    # "oldIndex":I
    :cond_4
    iget-object v4, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    #@5b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5e
    move-result v4

    #@5f
    add-int/lit8 v1, v4, -0x1

    #@61
    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_5

    #@63
    .line 329
    iget-object v4, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    #@65
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@68
    move-result-object v0

    #@69
    check-cast v0, Ljava/text/PatternEntry;

    #@6b
    .line 330
    .local v0, "e":Ljava/text/PatternEntry;
    iget-object v4, v0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    #@6d
    iget-object v5, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    #@6f
    .line 331
    iget-object v6, v0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    #@71
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@74
    move-result v6

    #@75
    .line 330
    invoke-virtual {v4, v7, v5, v7, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@78
    move-result v4

    #@79
    if-eqz v4, :cond_6

    #@7b
    .line 332
    iget-object v4, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    #@7d
    iget-object v5, v0, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    #@7f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@82
    move-result v5

    #@83
    .line 333
    iget-object v6, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    #@85
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@88
    move-result v6

    #@89
    .line 332
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8c
    move-result-object v4

    #@8d
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@90
    .line 337
    .end local v0    # "e":Ljava/text/PatternEntry;
    :cond_5
    if-ne v1, v8, :cond_7

    #@92
    .line 338
    new-instance v4, Ljava/text/ParseException;

    #@94
    new-instance v5, Ljava/lang/StringBuilder;

    #@96
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@99
    const-string/jumbo v6, "couldn\'t find: "

    #@9c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v5

    #@a0
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v5

    #@a4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v5

    #@a8
    invoke-direct {v4, v5, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@ab
    throw v4

    #@ac
    .line 328
    .restart local v0    # "e":Ljava/text/PatternEntry;
    :cond_6
    add-int/lit8 v1, v1, -0x1

    #@ae
    goto :goto_1

    #@af
    .line 339
    .end local v0    # "e":Ljava/text/PatternEntry;
    :cond_7
    add-int/lit8 v4, v1, 0x1

    #@b1
    return v4
.end method

.method private final findLastWithNoExtension(I)Ljava/text/PatternEntry;
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 123
    add-int/lit8 p1, p1, -0x1

    #@2
    :goto_0
    if-ltz p1, :cond_1

    #@4
    .line 124
    iget-object v1, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/text/PatternEntry;

    #@c
    .line 125
    .local v0, "entry":Ljava/text/PatternEntry;
    iget-object v1, v0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    #@e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 126
    return-object v0

    #@15
    .line 123
    :cond_0
    add-int/lit8 p1, p1, -0x1

    #@17
    goto :goto_0

    #@18
    .line 129
    .end local v0    # "entry":Ljava/text/PatternEntry;
    :cond_1
    const/4 v1, 0x0

    #@19
    return-object v1
.end method

.method private final fixEntry(Ljava/text/PatternEntry;)V
    .locals 13
    .param p1, "newEntry"    # Ljava/text/PatternEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, -0x1

    #@2
    const/4 v10, -0x2

    #@3
    const/4 v9, 0x0

    #@4
    .line 242
    iget-object v7, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    #@6
    if-eqz v7, :cond_1

    #@8
    iget-object v7, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    #@a
    iget-object v8, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    #@c
    iget-object v8, v8, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    #@e
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v7

    #@12
    if-eqz v7, :cond_1

    #@14
    .line 243
    iget-object v7, p1, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    #@16
    iget-object v8, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    #@18
    iget-object v8, v8, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    #@1a
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v7

    #@1e
    .line 242
    if-eqz v7, :cond_1

    #@20
    .line 244
    iget v7, p1, Ljava/text/PatternEntry;->strength:I

    #@22
    const/4 v8, 0x3

    #@23
    if-eq v7, v8, :cond_0

    #@25
    .line 245
    iget v7, p1, Ljava/text/PatternEntry;->strength:I

    #@27
    if-eq v7, v10, :cond_0

    #@29
    .line 246
    new-instance v7, Ljava/text/ParseException;

    #@2b
    new-instance v8, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v9, "The entries "

    #@33
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v8

    #@37
    iget-object v9, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    #@39
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v8

    #@3d
    const-string/jumbo v9, " and "

    #@40
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v8

    #@44
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v8

    #@48
    .line 247
    const-string/jumbo v9, " are adjacent in the rules, but have conflicting "

    #@4b
    .line 246
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v8

    #@4f
    .line 248
    const-string/jumbo v9, "strengths: A character can\'t be unequal to itself."

    #@52
    .line 246
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v8

    #@56
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v8

    #@5a
    invoke-direct {v7, v8, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@5d
    throw v7

    #@5e
    .line 251
    :cond_0
    return-void

    #@5f
    .line 255
    :cond_1
    const/4 v2, 0x1

    #@60
    .line 256
    .local v2, "changeLastEntry":Z
    iget v7, p1, Ljava/text/PatternEntry;->strength:I

    #@62
    if-eq v7, v10, :cond_4

    #@64
    .line 257
    const/4 v4, -0x1

    #@65
    .line 259
    .local v4, "oldIndex":I
    iget-object v7, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    #@67
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@6a
    move-result v7

    #@6b
    if-ne v7, v12, :cond_7

    #@6d
    .line 261
    iget-object v7, p1, Ljava/text/PatternEntry;->chars:Ljava/lang/String;

    #@6f
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    #@72
    move-result v1

    #@73
    .line 262
    .local v1, "c":C
    shr-int/lit8 v6, v1, 0x3

    #@75
    .line 263
    .local v6, "statusIndex":I
    iget-object v7, p0, Ljava/text/MergeCollation;->statusArray:[B

    #@77
    aget-byte v0, v7, v6

    #@79
    .line 264
    .local v0, "bitClump":B
    and-int/lit8 v7, v1, 0x7

    #@7b
    shl-int v7, v12, v7

    #@7d
    int-to-byte v5, v7

    #@7e
    .line 266
    .local v5, "setBit":B
    if-eqz v0, :cond_6

    #@80
    and-int v7, v0, v5

    #@82
    if-eqz v7, :cond_6

    #@84
    .line 267
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    #@86
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    #@89
    move-result v4

    #@8a
    .line 276
    .end local v0    # "bitClump":B
    .end local v1    # "c":C
    .end local v5    # "setBit":B
    .end local v6    # "statusIndex":I
    :goto_0
    if-eq v4, v11, :cond_2

    #@8c
    .line 277
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    #@8e
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@91
    .line 280
    :cond_2
    iget-object v7, p0, Ljava/text/MergeCollation;->excess:Ljava/lang/StringBuffer;

    #@93
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    #@96
    .line 281
    iget-object v7, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    #@98
    iget-object v8, p0, Ljava/text/MergeCollation;->excess:Ljava/lang/StringBuffer;

    #@9a
    invoke-direct {p0, v7, v8}, Ljava/text/MergeCollation;->findLastEntry(Ljava/text/PatternEntry;Ljava/lang/StringBuffer;)I

    #@9d
    move-result v3

    #@9e
    .line 283
    .local v3, "lastIndex":I
    iget-object v7, p0, Ljava/text/MergeCollation;->excess:Ljava/lang/StringBuffer;

    #@a0
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    #@a3
    move-result v7

    #@a4
    if-eqz v7, :cond_3

    #@a6
    .line 284
    new-instance v7, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    iget-object v8, p0, Ljava/text/MergeCollation;->excess:Ljava/lang/StringBuffer;

    #@ad
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v7

    #@b1
    iget-object v8, p1, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    #@b3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v7

    #@b7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v7

    #@bb
    iput-object v7, p1, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    #@bd
    .line 285
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    #@bf
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@c2
    move-result v7

    #@c3
    if-eq v3, v7, :cond_3

    #@c5
    .line 286
    iget-object v7, p0, Ljava/text/MergeCollation;->saveEntry:Ljava/text/PatternEntry;

    #@c7
    iput-object v7, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    #@c9
    .line 287
    const/4 v2, 0x0

    #@ca
    .line 290
    :cond_3
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    #@cc
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@cf
    move-result v7

    #@d0
    if-ne v3, v7, :cond_8

    #@d2
    .line 291
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    #@d4
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d7
    .line 292
    iput-object p1, p0, Ljava/text/MergeCollation;->saveEntry:Ljava/text/PatternEntry;

    #@d9
    .line 297
    .end local v3    # "lastIndex":I
    .end local v4    # "oldIndex":I
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    #@db
    .line 298
    iput-object p1, p0, Ljava/text/MergeCollation;->lastEntry:Ljava/text/PatternEntry;

    #@dd
    .line 235
    :cond_5
    return-void

    #@de
    .line 271
    .restart local v0    # "bitClump":B
    .restart local v1    # "c":C
    .restart local v4    # "oldIndex":I
    .restart local v5    # "setBit":B
    .restart local v6    # "statusIndex":I
    :cond_6
    iget-object v7, p0, Ljava/text/MergeCollation;->statusArray:[B

    #@e0
    or-int v8, v0, v5

    #@e2
    int-to-byte v8, v8

    #@e3
    aput-byte v8, v7, v6

    #@e5
    goto :goto_0

    #@e6
    .line 274
    .end local v0    # "bitClump":B
    .end local v1    # "c":C
    .end local v5    # "setBit":B
    .end local v6    # "statusIndex":I
    :cond_7
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    #@e8
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    #@eb
    move-result v4

    #@ec
    goto :goto_0

    #@ed
    .line 294
    .restart local v3    # "lastIndex":I
    :cond_8
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    #@ef
    invoke-virtual {v7, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@f2
    goto :goto_1
.end method


# virtual methods
.method public addPattern(Ljava/lang/String;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    if-nez p1, :cond_0

    #@2
    .line 176
    return-void

    #@3
    .line 178
    :cond_0
    new-instance v1, Ljava/text/PatternEntry$Parser;

    #@5
    invoke-direct {v1, p1}, Ljava/text/PatternEntry$Parser;-><init>(Ljava/lang/String;)V

    #@8
    .line 180
    .local v1, "parser":Ljava/text/PatternEntry$Parser;
    invoke-virtual {v1}, Ljava/text/PatternEntry$Parser;->next()Ljava/text/PatternEntry;

    #@b
    move-result-object v0

    #@c
    .line 181
    .local v0, "entry":Ljava/text/PatternEntry;
    :goto_0
    if-eqz v0, :cond_1

    #@e
    .line 182
    invoke-direct {p0, v0}, Ljava/text/MergeCollation;->fixEntry(Ljava/text/PatternEntry;)V

    #@11
    .line 183
    invoke-virtual {v1}, Ljava/text/PatternEntry$Parser;->next()Ljava/text/PatternEntry;

    #@14
    move-result-object v0

    #@15
    goto :goto_0

    #@16
    .line 173
    :cond_1
    return-void
.end method

.method public emitPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 138
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Ljava/text/MergeCollation;->emitPattern(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public emitPattern(Z)Ljava/lang/String;
    .locals 5
    .param p1, "withWhiteSpace"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 149
    new-instance v2, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 150
    .local v2, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v3

    #@d
    if-ge v1, v3, :cond_1

    #@f
    .line 152
    iget-object v3, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/text/PatternEntry;

    #@17
    .line 153
    .local v0, "entry":Ljava/text/PatternEntry;
    if-eqz v0, :cond_0

    #@19
    .line 154
    const/4 v3, 0x1

    #@1a
    invoke-virtual {v0, v2, v3, p1, v4}, Ljava/text/PatternEntry;->addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V

    #@1d
    .line 150
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 157
    .end local v0    # "entry":Ljava/text/PatternEntry;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    return-object v3
.end method

.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getItemAt(I)Ljava/text/PatternEntry;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/text/PatternEntry;

    #@8
    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 80
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Ljava/text/MergeCollation;->getPattern(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getPattern(Z)Ljava/lang/String;
    .locals 10
    .param p1, "withWhiteSpace"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 89
    new-instance v5, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 90
    .local v5, "result":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    #@8
    .line 91
    .local v6, "tmp":Ljava/text/PatternEntry;
    const/4 v1, 0x0

    #@9
    .line 93
    .local v1, "extList":Ljava/util/ArrayList;
    const/4 v2, 0x0

    #@a
    .end local v1    # "extList":Ljava/util/ArrayList;
    .end local v6    # "tmp":Ljava/text/PatternEntry;
    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v7

    #@10
    if-ge v2, v7, :cond_4

    #@12
    .line 94
    iget-object v7, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/text/PatternEntry;

    #@1a
    .line 95
    .local v0, "entry":Ljava/text/PatternEntry;
    iget-object v7, v0, Ljava/text/PatternEntry;->extension:Ljava/lang/String;

    #@1c
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@1f
    move-result v7

    #@20
    if-eqz v7, :cond_1

    #@22
    .line 96
    if-nez v1, :cond_0

    #@24
    .line 97
    new-instance v1, Ljava/util/ArrayList;

    #@26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@29
    .line 98
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    .line 93
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 100
    :cond_1
    if-eqz v1, :cond_3

    #@31
    .line 101
    add-int/lit8 v7, v2, -0x1

    #@33
    invoke-direct {p0, v7}, Ljava/text/MergeCollation;->findLastWithNoExtension(I)Ljava/text/PatternEntry;

    #@36
    move-result-object v4

    #@37
    .line 102
    .local v4, "last":Ljava/text/PatternEntry;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v7

    #@3b
    add-int/lit8 v3, v7, -0x1

    #@3d
    .local v3, "j":I
    :goto_2
    if-ltz v3, :cond_2

    #@3f
    .line 103
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v6

    #@43
    check-cast v6, Ljava/text/PatternEntry;

    #@45
    .line 104
    .local v6, "tmp":Ljava/text/PatternEntry;
    invoke-virtual {v6, v5, v8, p1, v4}, Ljava/text/PatternEntry;->addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V

    #@48
    .line 102
    add-int/lit8 v3, v3, -0x1

    #@4a
    goto :goto_2

    #@4b
    .line 106
    .end local v6    # "tmp":Ljava/text/PatternEntry;
    :cond_2
    const/4 v1, 0x0

    #@4c
    .line 108
    .end local v3    # "j":I
    .end local v4    # "last":Ljava/text/PatternEntry;
    :cond_3
    invoke-virtual {v0, v5, v8, p1, v9}, Ljava/text/PatternEntry;->addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V

    #@4f
    goto :goto_1

    #@50
    .line 111
    .end local v0    # "entry":Ljava/text/PatternEntry;
    :cond_4
    if-eqz v1, :cond_6

    #@52
    .line 112
    add-int/lit8 v7, v2, -0x1

    #@54
    invoke-direct {p0, v7}, Ljava/text/MergeCollation;->findLastWithNoExtension(I)Ljava/text/PatternEntry;

    #@57
    move-result-object v4

    #@58
    .line 113
    .restart local v4    # "last":Ljava/text/PatternEntry;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5b
    move-result v7

    #@5c
    add-int/lit8 v3, v7, -0x1

    #@5e
    .restart local v3    # "j":I
    :goto_3
    if-ltz v3, :cond_5

    #@60
    .line 114
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@63
    move-result-object v6

    #@64
    check-cast v6, Ljava/text/PatternEntry;

    #@66
    .line 115
    .restart local v6    # "tmp":Ljava/text/PatternEntry;
    invoke-virtual {v6, v5, v8, p1, v4}, Ljava/text/PatternEntry;->addToBuffer(Ljava/lang/StringBuffer;ZZLjava/text/PatternEntry;)V

    #@69
    .line 113
    add-int/lit8 v3, v3, -0x1

    #@6b
    goto :goto_3

    #@6c
    .line 117
    .end local v6    # "tmp":Ljava/text/PatternEntry;
    :cond_5
    const/4 v1, 0x0

    #@6d
    .line 119
    .end local v3    # "j":I
    .end local v4    # "last":Ljava/text/PatternEntry;
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@70
    move-result-object v7

    #@71
    return-object v7
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Ljava/text/MergeCollation;->patterns:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 166
    invoke-virtual {p0, p1}, Ljava/text/MergeCollation;->addPattern(Ljava/lang/String;)V

    #@8
    .line 163
    return-void
.end method
