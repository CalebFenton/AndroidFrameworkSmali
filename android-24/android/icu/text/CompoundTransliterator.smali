.class Landroid/icu/text/CompoundTransliterator;
.super Landroid/icu/text/Transliterator;
.source "CompoundTransliterator.java"


# instance fields
.field private numAnonymousRBTs:I

.field private trans:[Landroid/icu/text/Transliterator;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;[Landroid/icu/text/Transliterator;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "filter2"    # Landroid/icu/text/UnicodeFilter;
    .param p3, "trans2"    # [Landroid/icu/text/Transliterator;
    .param p4, "numAnonymousRBTs2"    # I

    #@0
    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    #@3
    .line 35
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    #@6
    .line 125
    iput-object p3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@8
    .line 126
    iput p4, p0, Landroid/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    #@a
    .line 123
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/Transliterator;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 105
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/Transliterator;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;I)V

    #@4
    .line 104
    return-void
.end method

.method constructor <init>(Ljava/util/List;I)V
    .locals 3
    .param p2, "numAnonymousRBTs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/Transliterator;",
            ">;I)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/Transliterator;>;"
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 109
    const-string/jumbo v0, ""

    #@5
    invoke-direct {p0, v0, v2}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    #@8
    .line 35
    iput v1, p0, Landroid/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    #@a
    .line 110
    iput-object v2, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@c
    .line 111
    invoke-direct {p0, p1, v1, v1}, Landroid/icu/text/CompoundTransliterator;->init(Ljava/util/List;IZ)V

    #@f
    .line 112
    iput p2, p0, Landroid/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    #@11
    .line 108
    return-void
.end method

.method private static _smartAppend(Ljava/lang/StringBuilder;C)V
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "c"    # C

    #@0
    .prologue
    .line 249
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 250
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    #@9
    move-result v0

    #@a
    add-int/lit8 v0, v0, -0x1

    #@c
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    #@f
    move-result v0

    #@10
    if-eq v0, p1, :cond_0

    #@12
    .line 251
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@15
    .line 248
    :cond_0
    return-void
.end method

.method private computeMaximumContextLength()V
    .locals 4

    #@0
    .prologue
    .line 512
    const/4 v2, 0x0

    #@1
    .line 513
    .local v2, "max":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@4
    array-length v3, v3

    #@5
    if-ge v0, v3, :cond_1

    #@7
    .line 514
    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@9
    aget-object v3, v3, v0

    #@b
    invoke-virtual {v3}, Landroid/icu/text/Transliterator;->getMaximumContextLength()I

    #@e
    move-result v1

    #@f
    .line 515
    .local v1, "len":I
    if-le v1, v2, :cond_0

    #@11
    .line 516
    move v2, v1

    #@12
    .line 513
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 519
    .end local v1    # "len":I
    :cond_1
    invoke-virtual {p0, v2}, Landroid/icu/text/Transliterator;->setMaximumContextLength(I)V

    #@18
    .line 511
    return-void
.end method

.method private init(Ljava/util/List;IZ)V
    .locals 6
    .param p2, "direction"    # I
    .param p3, "fixReverseID"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/Transliterator;",
            ">;IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 185
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/Transliterator;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    .line 186
    .local v0, "count":I
    new-array v4, v0, [Landroid/icu/text/Transliterator;

    #@6
    iput-object v4, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@8
    .line 191
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@b
    .line 192
    if-nez p2, :cond_0

    #@d
    move v2, v1

    #@e
    .line 193
    .local v2, "j":I
    :goto_1
    iget-object v5, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@10
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    check-cast v4, Landroid/icu/text/Transliterator;

    #@16
    aput-object v4, v5, v1

    #@18
    .line 191
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 192
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v4, v0, -0x1

    #@1d
    sub-int v2, v4, v1

    #@1f
    .restart local v2    # "j":I
    goto :goto_1

    #@20
    .line 198
    .end local v2    # "j":I
    :cond_1
    const/4 v4, 0x1

    #@21
    if-ne p2, v4, :cond_4

    #@23
    if-eqz p3, :cond_4

    #@25
    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    .line 200
    .local v3, "newID":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@2b
    :goto_2
    if-ge v1, v0, :cond_3

    #@2d
    .line 201
    if-lez v1, :cond_2

    #@2f
    .line 202
    const/16 v4, 0x3b

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    .line 204
    :cond_2
    iget-object v4, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@36
    aget-object v4, v4, v1

    #@38
    invoke-virtual {v4}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 200
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_2

    #@42
    .line 206
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {p0, v4}, Landroid/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    #@49
    .line 209
    .end local v3    # "newID":Ljava/lang/StringBuilder;
    :cond_4
    invoke-direct {p0}, Landroid/icu/text/CompoundTransliterator;->computeMaximumContextLength()V

    #@4c
    .line 181
    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 4
    .param p1, "filter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 313
    new-instance v1, Landroid/icu/text/UnicodeSet;

    #@2
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@5
    move-result-object v3

    #@6
    invoke-direct {v1, v3}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@9
    .line 314
    .local v1, "myFilter":Landroid/icu/text/UnicodeSet;
    new-instance v2, Landroid/icu/text/UnicodeSet;

    #@b
    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@e
    .line 315
    .local v2, "tempTargetSet":Landroid/icu/text/UnicodeSet;
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@11
    array-length v3, v3

    #@12
    if-ge v0, v3, :cond_0

    #@14
    .line 318
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    #@17
    .line 319
    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@19
    aget-object v3, v3, v0

    #@1b
    invoke-virtual {v3, v1, p2, v2}, Landroid/icu/text/Transliterator;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    #@1e
    .line 320
    invoke-virtual {p3, v2}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@21
    .line 321
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@24
    .line 315
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 312
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public getTransliterator(I)Landroid/icu/text/Transliterator;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 9
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "index"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "incremental"    # Z

    #@0
    .prologue
    .line 398
    iget-object v6, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@2
    array-length v6, v6

    #@3
    const/4 v7, 0x1

    #@4
    if-ge v6, v7, :cond_0

    #@6
    .line 399
    iget v6, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@8
    iput v6, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@a
    .line 400
    return-void

    #@b
    .line 407
    :cond_0
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@d
    .line 411
    .local v0, "compoundLimit":I
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@f
    .line 413
    .local v1, "compoundStart":I
    const/4 v2, 0x0

    #@10
    .line 415
    .local v2, "delta":I
    const/4 v5, 0x0

    #@11
    .line 427
    .local v5, "log":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    #@12
    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@14
    array-length v6, v6

    #@15
    if-ge v3, v6, :cond_1

    #@17
    .line 428
    iput v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@19
    .line 429
    iget v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@1b
    .line 431
    .local v4, "limit":I
    iget v6, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@1d
    iget v7, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@1f
    if-ne v6, v7, :cond_2

    #@21
    .line 489
    .end local v4    # "limit":I
    :cond_1
    add-int/2addr v0, v2

    #@22
    .line 494
    iput v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@24
    .line 342
    return-void

    #@25
    .line 455
    .restart local v4    # "limit":I
    :cond_2
    iget-object v6, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@27
    aget-object v6, v6, v3

    #@29
    invoke-virtual {v6, p1, p2, p3}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V

    #@2c
    .line 464
    if-nez p3, :cond_3

    #@2e
    iget v6, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@30
    iget v7, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@32
    if-eq v6, v7, :cond_3

    #@34
    .line 465
    new-instance v6, Ljava/lang/RuntimeException;

    #@36
    new-instance v7, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v8, "ERROR: Incomplete non-incremental transliteration by "

    #@3e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v7

    #@42
    iget-object v8, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@44
    aget-object v8, v8, v3

    #@46
    invoke-virtual {v8}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    #@49
    move-result-object v8

    #@4a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@55
    throw v6

    #@56
    .line 477
    :cond_3
    iget v6, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@58
    sub-int/2addr v6, v4

    #@59
    add-int/2addr v2, v6

    #@5a
    .line 479
    if-eqz p3, :cond_4

    #@5c
    .line 485
    iget v6, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@5e
    iput v6, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@60
    .line 427
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@62
    goto :goto_0
.end method

.method public safeClone()Landroid/icu/text/Transliterator;
    .locals 6

    #@0
    .prologue
    .line 526
    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getFilter()Landroid/icu/text/UnicodeFilter;

    #@3
    move-result-object v0

    #@4
    .line 527
    .local v0, "filter":Landroid/icu/text/UnicodeFilter;
    if-eqz v0, :cond_0

    #@6
    instance-of v2, v0, Landroid/icu/text/UnicodeSet;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 528
    new-instance v1, Landroid/icu/text/UnicodeSet;

    #@c
    nop

    #@d
    nop

    #@e
    .end local v0    # "filter":Landroid/icu/text/UnicodeFilter;
    invoke-direct {v1, v0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@11
    .local v1, "filter":Landroid/icu/text/UnicodeFilter;
    move-object v0, v1

    #@12
    .line 530
    .end local v1    # "filter":Landroid/icu/text/UnicodeFilter;
    .restart local v0    # "filter":Landroid/icu/text/UnicodeFilter;
    :cond_0
    new-instance v2, Landroid/icu/text/CompoundTransliterator;

    #@14
    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    iget-object v4, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@1a
    iget v5, p0, Landroid/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    #@1c
    invoke-direct {v2, v3, v0, v4, v5}, Landroid/icu/text/CompoundTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;[Landroid/icu/text/Transliterator;I)V

    #@1f
    return-object v2
.end method

.method public toRules(Z)Ljava/lang/String;
    .locals 7
    .param p1, "escapeUnprintable"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/16 v5, 0x3b

    #@3
    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    .line 273
    .local v2, "rulesSource":Ljava/lang/StringBuilder;
    iget v3, p0, Landroid/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    #@a
    if-lt v3, v6, :cond_0

    #@c
    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getFilter()Landroid/icu/text/UnicodeFilter;

    #@f
    move-result-object v3

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 276
    const-string/jumbo v3, "::"

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getFilter()Landroid/icu/text/UnicodeFilter;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4, p1}, Landroid/icu/text/UnicodeFilter;->toPattern(Z)Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    .line 278
    :cond_0
    const/4 v0, 0x0

    #@29
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@2b
    array-length v3, v3

    #@2c
    if-ge v0, v3, :cond_4

    #@2e
    .line 285
    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@30
    aget-object v3, v3, v0

    #@32
    invoke-virtual {v3}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    const-string/jumbo v4, "%Pass"

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_2

    #@3f
    .line 286
    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@41
    aget-object v3, v3, v0

    #@43
    invoke-virtual {v3, p1}, Landroid/icu/text/Transliterator;->toRules(Z)Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    .line 287
    .local v1, "rule":Ljava/lang/String;
    iget v3, p0, Landroid/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    #@49
    if-le v3, v6, :cond_1

    #@4b
    if-lez v0, :cond_1

    #@4d
    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@4f
    add-int/lit8 v4, v0, -0x1

    #@51
    aget-object v3, v3, v4

    #@53
    invoke-virtual {v3}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    const-string/jumbo v4, "%Pass"

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@5d
    move-result v3

    #@5e
    if-eqz v3, :cond_1

    #@60
    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v4, "::Null;"

    #@68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    .line 301
    :cond_1
    :goto_1
    const/16 v3, 0xa

    #@76
    invoke-static {v2, v3}, Landroid/icu/text/CompoundTransliterator;->_smartAppend(Ljava/lang/StringBuilder;C)V

    #@79
    .line 302
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    .line 303
    invoke-static {v2, v5}, Landroid/icu/text/CompoundTransliterator;->_smartAppend(Ljava/lang/StringBuilder;C)V

    #@7f
    .line 278
    add-int/lit8 v0, v0, 0x1

    #@81
    goto :goto_0

    #@82
    .line 294
    .end local v1    # "rule":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@84
    aget-object v3, v3, v0

    #@86
    invoke-virtual {v3}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    #@89
    move-result-object v3

    #@8a
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    #@8d
    move-result v3

    #@8e
    if-ltz v3, :cond_3

    #@90
    .line 295
    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@92
    aget-object v3, v3, v0

    #@94
    invoke-virtual {v3, p1}, Landroid/icu/text/Transliterator;->toRules(Z)Ljava/lang/String;

    #@97
    move-result-object v1

    #@98
    .restart local v1    # "rule":Ljava/lang/String;
    goto :goto_1

    #@99
    .line 299
    .end local v1    # "rule":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    #@9b
    aget-object v3, v3, v0

    #@9d
    invoke-virtual {v3, p1}, Landroid/icu/text/Transliterator;->baseToRules(Z)Ljava/lang/String;

    #@a0
    move-result-object v1

    #@a1
    .restart local v1    # "rule":Ljava/lang/String;
    goto :goto_1

    #@a2
    .line 305
    .end local v1    # "rule":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v3

    #@a6
    return-object v3
.end method
