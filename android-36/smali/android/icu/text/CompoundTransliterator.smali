.class Landroid/icu/text/CompoundTransliterator;
.super Landroid/icu/text/Transliterator;
.source "CompoundTransliterator.java"


# instance fields
.field private blacklist numAnonymousRBTs:I

.field private blacklist trans:[Landroid/icu/text/Transliterator;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;[Landroid/icu/text/Transliterator;I)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "filter2"    # Landroid/icu/text/UnicodeFilter;
    .param p3, "trans2"    # [Landroid/icu/text/Transliterator;
    .param p4, "numAnonymousRBTs2"    # I

    .line 126
    invoke-direct {p0, p1, p2}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    .line 127
    iput-object p3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    .line 128
    iput p4, p0, Landroid/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    .line 129
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/text/Transliterator;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/Transliterator;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;I)V

    .line 108
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;I)V
    .registers 5
    .param p2, "numAnonymousRBTs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/text/Transliterator;",
            ">;I)V"
        }
    .end annotation

    .line 111
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/Transliterator;>;"
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    .line 112
    iput-object v1, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    .line 113
    invoke-direct {p0, p1, v0, v0}, Landroid/icu/text/CompoundTransliterator;->init(Ljava/util/List;IZ)V

    .line 114
    iput p2, p0, Landroid/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    .line 116
    return-void
.end method

.method private static blacklist _smartAppend(Ljava/lang/StringBuilder;C)V
    .registers 3
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "c"    # C

    .line 251
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_15

    .line 252
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, p1, :cond_15

    .line 253
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    :cond_15
    return-void
.end method

.method private blacklist computeMaximumContextLength()V
    .registers 4

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    array-length v2, v2

    if-ge v1, v2, :cond_15

    .line 518
    iget-object v2, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/icu/text/Transliterator;->getMaximumContextLength()I

    move-result v2

    .line 519
    .local v2, "len":I
    if-le v2, v0, :cond_12

    .line 520
    move v0, v2

    .line 517
    .end local v2    # "len":I
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 523
    .end local v1    # "i":I
    :cond_15
    invoke-virtual {p0, v0}, Landroid/icu/text/CompoundTransliterator;->setMaximumContextLength(I)V

    .line 524
    return-void
.end method

.method private blacklist init(Ljava/util/List;IZ)V
    .registers 9
    .param p2, "direction"    # I
    .param p3, "fixReverseID"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/text/Transliterator;",
            ">;IZ)V"
        }
    .end annotation

    .line 187
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/Transliterator;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 188
    .local v0, "count":I
    new-array v1, v0, [Landroid/icu/text/Transliterator;

    iput-object v1, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    .line 193
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1f

    .line 194
    if-nez p2, :cond_f

    move v2, v1

    goto :goto_12

    :cond_f
    add-int/lit8 v2, v0, -0x1

    sub-int/2addr v2, v1

    .line 195
    .local v2, "j":I
    :goto_12
    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/Transliterator;

    aput-object v4, v3, v1

    .line 193
    .end local v2    # "j":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 200
    :cond_1f
    const/4 v2, 0x1

    if-ne p2, v2, :cond_48

    if-eqz p3, :cond_48

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v2, "newID":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :goto_2a
    if-ge v1, v0, :cond_41

    .line 203
    if-lez v1, :cond_33

    .line 204
    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    :cond_33
    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 208
    :cond_41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/icu/text/CompoundTransliterator;->setID(Ljava/lang/String;)V

    .line 211
    .end local v2    # "newID":Ljava/lang/StringBuilder;
    :cond_48
    invoke-direct {p0}, Landroid/icu/text/CompoundTransliterator;->computeMaximumContextLength()V

    .line 212
    return-void
.end method


# virtual methods
.method public blacklist addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .registers 8
    .param p1, "filter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    .line 316
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1}, Landroid/icu/text/CompoundTransliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 317
    .local v0, "myFilter":Landroid/icu/text/UnicodeSet;
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 318
    .local v1, "tempTargetSet":Landroid/icu/text/UnicodeSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    array-length v3, v3

    if-ge v2, v3, :cond_27

    .line 321
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 322
    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, p2, v1}, Landroid/icu/text/Transliterator;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    .line 323
    invoke-virtual {p3, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 324
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 326
    .end local v2    # "i":I
    :cond_27
    return-void
.end method

.method public blacklist getCount()I
    .registers 2

    .line 235
    iget-object v0, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    array-length v0, v0

    return v0
.end method

.method public blacklist getTransliterator(I)Landroid/icu/text/Transliterator;
    .registers 3
    .param p1, "index"    # I

    .line 244
    iget-object v0, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected blacklist handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .registers 13
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "index"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "incremental"    # Z

    .line 402
    iget-object v0, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    .line 403
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iput v0, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 404
    return-void

    .line 411
    :cond_b
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 415
    .local v0, "compoundLimit":I
    iget v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 417
    .local v1, "compoundStart":I
    const/4 v2, 0x0

    .line 419
    .local v2, "delta":I
    const/4 v3, 0x0

    .line 431
    .local v3, "log":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    iget-object v5, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    array-length v5, v5

    if-ge v4, v5, :cond_60

    .line 432
    iput v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 433
    iget v5, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 435
    .local v5, "limit":I
    iget v6, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v7, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ne v6, v7, :cond_22

    .line 446
    goto :goto_60

    .line 459
    :cond_22
    iget-object v6, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v6, v6, v4

    invoke-virtual {v6, p1, p2, p3}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V

    .line 468
    if-nez p3, :cond_53

    iget v6, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v7, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ne v6, v7, :cond_32

    goto :goto_53

    .line 469
    :cond_32
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERROR: Incomplete non-incremental transliteration by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 481
    :cond_53
    :goto_53
    iget v6, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int/2addr v6, v5

    add-int/2addr v2, v6

    .line 483
    if-eqz p3, :cond_5d

    .line 489
    iget v6, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iput v6, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 431
    .end local v5    # "limit":I
    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 493
    .end local v4    # "i":I
    :cond_60
    :goto_60
    add-int/2addr v0, v2

    .line 498
    iput v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 509
    return-void
.end method

.method public blacklist safeClone()Landroid/icu/text/Transliterator;
    .registers 6

    .line 530
    invoke-virtual {p0}, Landroid/icu/text/CompoundTransliterator;->getFilter()Landroid/icu/text/UnicodeFilter;

    move-result-object v0

    .line 531
    .local v0, "filter":Landroid/icu/text/UnicodeFilter;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/icu/text/UnicodeSet;

    if-eqz v1, :cond_13

    .line 532
    new-instance v1, Landroid/icu/text/UnicodeSet;

    move-object v2, v0

    check-cast v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    move-object v0, v1

    .line 534
    :cond_13
    new-instance v1, Landroid/icu/text/CompoundTransliterator;

    invoke-virtual {p0}, Landroid/icu/text/CompoundTransliterator;->getID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    iget v4, p0, Landroid/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/icu/text/CompoundTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;[Landroid/icu/text/Transliterator;I)V

    return-object v1
.end method

.method public whitelist test-api toRules(Z)Ljava/lang/String;
    .registers 10
    .param p1, "escapeUnprintable"    # Z

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .local v0, "rulesSource":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    const/16 v2, 0x3b

    const/4 v3, 0x1

    if-lt v1, v3, :cond_27

    invoke-virtual {p0}, Landroid/icu/text/CompoundTransliterator;->getFilter()Landroid/icu/text/UnicodeFilter;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 279
    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/text/CompoundTransliterator;->getFilter()Landroid/icu/text/UnicodeFilter;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/icu/text/UnicodeFilter;->toPattern(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    :cond_27
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_28
    iget-object v4, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    array-length v4, v4

    if-ge v1, v4, :cond_9c

    .line 288
    iget-object v4, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "%Pass"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 289
    iget-object v4, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Landroid/icu/text/Transliterator;->toRules(Z)Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "rule":Ljava/lang/String;
    iget v6, p0, Landroid/icu/text/CompoundTransliterator;->numAnonymousRBTs:I

    if-le v6, v3, :cond_8e

    if-lez v1, :cond_8e

    iget-object v6, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    add-int/lit8 v7, v1, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 291
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "::Null;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8e

    .line 297
    .end local v4    # "rule":Ljava/lang/String;
    :cond_6f
    iget-object v4, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_86

    .line 298
    iget-object v4, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Landroid/icu/text/Transliterator;->toRules(Z)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "rule":Ljava/lang/String;
    goto :goto_8e

    .line 302
    .end local v4    # "rule":Ljava/lang/String;
    :cond_86
    iget-object v4, p0, Landroid/icu/text/CompoundTransliterator;->trans:[Landroid/icu/text/Transliterator;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Landroid/icu/text/Transliterator;->baseToRules(Z)Ljava/lang/String;

    move-result-object v4

    .line 304
    .restart local v4    # "rule":Ljava/lang/String;
    :cond_8e
    :goto_8e
    const/16 v5, 0xa

    invoke-static {v0, v5}, Landroid/icu/text/CompoundTransliterator;->_smartAppend(Ljava/lang/StringBuilder;C)V

    .line 305
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-static {v0, v2}, Landroid/icu/text/CompoundTransliterator;->_smartAppend(Ljava/lang/StringBuilder;C)V

    .line 281
    .end local v4    # "rule":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 308
    .end local v1    # "i":I
    :cond_9c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
