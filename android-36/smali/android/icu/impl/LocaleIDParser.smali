.class public final Landroid/icu/impl/LocaleIDParser;
.super Ljava/lang/Object;
.source "LocaleIDParser.java"


# static fields
.field private static final blacklist COMMA:C = ','

.field private static final blacklist DONE:C = '\uffff'

.field private static final blacklist DOT:C = '.'

.field private static final blacklist HYPHEN:C = '-'

.field private static final blacklist ITEM_SEPARATOR:C = ';'

.field private static final blacklist KEYWORD_ASSIGN:C = '='

.field private static final blacklist KEYWORD_SEPARATOR:C = '@'

.field private static final blacklist MAX_VARIANTS_LENGTH:I = 0xb3

.field private static final blacklist UNDERSCORE:C = '_'


# instance fields
.field blacklist baseName:Ljava/lang/String;

.field private blacklist buffer:Ljava/lang/StringBuilder;

.field private blacklist canonicalize:Z

.field private blacklist hadCountry:Z

.field private blacklist id:[C

.field private blacklist index:I

.field blacklist keywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "localeID"    # Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;Z)V

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "canonicalize"    # Z

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v1, v1

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    .line 69
    iput-boolean p2, p0, Landroid/icu/impl/LocaleIDParser;->canonicalize:Z

    .line 70
    return-void
.end method

.method private blacklist addSeparator()V
    .registers 2

    .line 87
    const/16 v0, 0x5f

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    .line 88
    return-void
.end method

.method private blacklist append(C)V
    .registers 3
    .param p1, "c"    # C

    .line 83
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    return-void
.end method

.method private blacklist append(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    return-void
.end method

.method private blacklist atTerminator()Z
    .registers 3

    .line 145
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v1, v1

    if-ge v0, v1, :cond_16

    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->isTerminator(C)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    :goto_17
    return v0
.end method

.method private blacklist getKeyComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 606
    new-instance v0, Landroid/icu/impl/LocaleIDParser$1;

    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser$1;-><init>(Landroid/icu/impl/LocaleIDParser;)V

    .line 612
    .local v0, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    return-object v0
.end method

.method private blacklist getKeyword()Ljava/lang/String;
    .registers 5

    .line 590
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 591
    .local v0, "start":I
    :goto_2
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/LocaleIDParser;->isDoneOrKeywordAssign(C)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    .line 593
    :cond_d
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 594
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    iget v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "start"    # I

    .line 94
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getValue()Ljava/lang/String;
    .registers 5

    .line 598
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 599
    .local v0, "start":I
    :goto_2
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/LocaleIDParser;->isDoneOrItemSeparator(C)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    .line 601
    :cond_d
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 602
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    iget v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist haveExperimentalLanguagePrefix()Z
    .registers 5

    .line 169
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v0, v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-le v0, v1, :cond_2a

    .line 170
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    const/4 v1, 0x1

    aget-char v0, v0, v1

    .line 171
    .local v0, "c":C
    const/16 v3, 0x2d

    if-eq v0, v3, :cond_14

    const/16 v3, 0x5f

    if-ne v0, v3, :cond_2a

    .line 172
    :cond_14
    iget-object v3, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    aget-char v0, v3, v2

    .line 173
    const/16 v3, 0x78

    if-eq v0, v3, :cond_28

    const/16 v3, 0x58

    if-eq v0, v3, :cond_28

    const/16 v3, 0x69

    if-eq v0, v3, :cond_28

    const/16 v3, 0x49

    if-ne v0, v3, :cond_29

    :cond_28
    move v2, v1

    :cond_29
    return v2

    .line 176
    .end local v0    # "c":C
    :cond_2a
    return v2
.end method

.method private blacklist haveKeywordAssign()Z
    .registers 4

    .line 184
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 185
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    aget-char v1, v1, v0

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_11

    .line 186
    const/4 v1, 0x1

    return v1

    .line 184
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 189
    .end local v0    # "i":I
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist isDoneOrItemSeparator(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 586
    const v0, 0xffff

    if-eq p0, v0, :cond_c

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method private static blacklist isDoneOrKeywordAssign(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 582
    const v0, 0xffff

    if-eq p0, v0, :cond_c

    const/16 v0, 0x3d

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method private blacklist isTerminator(C)Z
    .registers 3
    .param p1, "c"    # C

    .line 154
    const/16 v0, 0x40

    if-eq p1, v0, :cond_10

    const v0, 0xffff

    if-eq p1, v0, :cond_10

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method private blacklist isTerminatorOrIDSeparator(C)Z
    .registers 3
    .param p1, "c"    # C

    .line 161
    const/16 v0, 0x5f

    if-eq p1, v0, :cond_11

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_11

    invoke-direct {p0, p1}, Landroid/icu/impl/LocaleIDParser;->isTerminator(C)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private blacklist next()C
    .registers 4

    .line 125
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v1, v1

    if-ne v0, v1, :cond_11

    .line 126
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 127
    const v0, 0xffff

    return v0

    .line 130
    :cond_11
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    aget-char v0, v0, v1

    return v0
.end method

.method private blacklist parseCountry()I
    .registers 8

    .line 302
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->atTerminator()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 303
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 304
    .local v0, "oldIndex":I
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 306
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 308
    .local v1, "oldBlen":I
    const/4 v3, 0x1

    .line 309
    .local v3, "firstPass":Z
    :goto_15
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v4

    move v5, v4

    .local v5, "c":C
    invoke-direct {p0, v4}, Landroid/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v4

    if-nez v4, :cond_32

    .line 310
    if-eqz v3, :cond_2a

    .line 311
    iput-boolean v2, p0, Landroid/icu/impl/LocaleIDParser;->hadCountry:Z

    .line 312
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->addSeparator()V

    .line 313
    add-int/lit8 v1, v1, 0x1

    .line 314
    const/4 v3, 0x0

    .line 316
    :cond_2a
    invoke-static {v5}, Landroid/icu/impl/locale/AsciiUtil;->toUpper(C)C

    move-result v4

    invoke-direct {p0, v4}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    goto :goto_15

    .line 318
    :cond_32
    iget v4, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr v4, v2

    iput v4, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 320
    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    .line 322
    .local v2, "charsAppended":I
    if-nez v2, :cond_41

    goto :goto_6a

    .line 325
    :cond_41
    const/4 v4, 0x2

    if-lt v2, v4, :cond_58

    const/4 v4, 0x3

    if-le v2, v4, :cond_48

    goto :goto_58

    .line 333
    :cond_48
    if-ne v2, v4, :cond_6a

    .line 334
    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/icu/impl/LocaleIDs;->threeToTwoLetterRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 335
    .local v4, "region":Ljava/lang/String;
    if-eqz v4, :cond_6a

    .line 336
    invoke-direct {p0, v1, v4}, Landroid/icu/impl/LocaleIDParser;->set(ILjava/lang/String;)V

    goto :goto_6a

    .line 328
    .end local v4    # "region":Ljava/lang/String;
    :cond_58
    :goto_58
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 329
    add-int/lit8 v1, v1, -0x1

    .line 330
    iget-object v4, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v1, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 331
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/icu/impl/LocaleIDParser;->hadCountry:Z

    .line 340
    :cond_6a
    :goto_6a
    return v1

    .line 343
    .end local v0    # "oldIndex":I
    .end local v1    # "oldBlen":I
    .end local v2    # "charsAppended":I
    .end local v3    # "firstPass":Z
    .end local v5    # "c":C
    :cond_6b
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method private blacklist parseKeywords()I
    .registers 7

    .line 662
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 663
    .local v0, "oldBlen":I
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->getKeywordMap()Ljava/util/Map;

    move-result-object v1

    .line 664
    .local v1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 665
    const/4 v2, 0x1

    .line 666
    .local v2, "first":Z
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 667
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_2a

    const/16 v5, 0x40

    goto :goto_2c

    :cond_2a
    const/16 v5, 0x3b

    :goto_2c
    invoke-direct {p0, v5}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    .line 668
    const/4 v2, 0x0

    .line 669
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/icu/impl/LocaleIDParser;->append(Ljava/lang/String;)V

    .line 670
    const/16 v5, 0x3d

    invoke-direct {p0, v5}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    .line 671
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/icu/impl/LocaleIDParser;->append(Ljava/lang/String;)V

    .line 672
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_19

    .line 673
    :cond_48
    if-nez v2, :cond_4c

    .line 674
    add-int/lit8 v0, v0, 0x1

    .line 677
    .end local v2    # "first":Z
    :cond_4c
    return v0
.end method

.method private blacklist parseLanguage()I
    .registers 6

    .line 198
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 200
    .local v0, "startLength":I
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->haveExperimentalLanguagePrefix()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 201
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    aget-char v1, v1, v2

    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    .line 202
    const/16 v1, 0x2d

    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    .line 203
    const/4 v1, 0x2

    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 207
    :cond_20
    :goto_20
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v1

    move v3, v1

    .local v3, "c":C
    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v1

    if-nez v1, :cond_33

    .line 208
    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    goto :goto_20

    .line 210
    :cond_33
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 212
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_50

    .line 213
    invoke-direct {p0, v2}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/LocaleIDs;->threeToTwoLetterLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "lang":Ljava/lang/String;
    if-eqz v1, :cond_50

    .line 215
    invoke-direct {p0, v2, v1}, Landroid/icu/impl/LocaleIDParser;->set(ILjava/lang/String;)V

    .line 219
    .end local v1    # "lang":Ljava/lang/String;
    :cond_50
    return v2
.end method

.method private blacklist parseScript()I
    .registers 7

    .line 243
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->atTerminator()Z

    move-result v0

    if-nez v0, :cond_59

    .line 244
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 245
    .local v0, "oldIndex":I
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 247
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 249
    .local v1, "oldBlen":I
    const/4 v2, 0x1

    .line 250
    .local v2, "firstPass":Z
    :goto_15
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v3

    move v4, v3

    .local v4, "c":C
    invoke-direct {p0, v3}, Landroid/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v3

    if-nez v3, :cond_3c

    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->isAlpha(C)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 251
    if-eqz v2, :cond_34

    .line 252
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->addSeparator()V

    .line 253
    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toUpper(C)C

    move-result v3

    invoke-direct {p0, v3}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    .line 254
    const/4 v2, 0x0

    goto :goto_15

    .line 256
    :cond_34
    invoke-static {v4}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v3

    invoke-direct {p0, v3}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    goto :goto_15

    .line 259
    :cond_3c
    iget v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 262
    iget v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr v3, v0

    const/4 v5, 0x5

    if-eq v3, v5, :cond_56

    .line 263
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 264
    iget-object v3, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v1, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_58

    .line 266
    :cond_56
    add-int/lit8 v1, v1, 0x1

    .line 269
    :goto_58
    return v1

    .line 271
    .end local v0    # "oldIndex":I
    .end local v1    # "oldBlen":I
    .end local v2    # "firstPass":Z
    .end local v4    # "c":C
    :cond_59
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method private blacklist parseVariant()I
    .registers 9

    .line 404
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 406
    .local v0, "oldBlen":I
    const/4 v1, 0x1

    .line 407
    .local v1, "start":Z
    const/4 v2, 0x1

    .line 408
    .local v2, "needSeparator":Z
    const/4 v3, 0x0

    .line 410
    .local v3, "skipping":Z
    const/4 v4, 0x1

    .line 412
    .local v4, "firstPass":Z
    :cond_a
    :goto_a
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v5

    move v6, v5

    .local v6, "c":C
    const v7, 0xffff

    if-eq v5, v7, :cond_77

    .line 413
    const/16 v5, 0x2e

    if-ne v6, v5, :cond_1b

    .line 414
    const/4 v1, 0x0

    .line 415
    const/4 v3, 0x1

    goto :goto_a

    .line 416
    :cond_1b
    const/16 v5, 0x40

    if-ne v6, v5, :cond_2a

    .line 417
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->haveKeywordAssign()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 418
    goto :goto_77

    .line 420
    :cond_26
    const/4 v3, 0x0

    .line 421
    const/4 v1, 0x0

    .line 422
    const/4 v2, 0x1

    goto :goto_a

    .line 423
    :cond_2a
    const/16 v5, 0x2d

    if-eqz v1, :cond_3c

    .line 424
    const/4 v1, 0x0

    .line 425
    const/16 v7, 0x5f

    if-eq v6, v7, :cond_a

    if-eq v6, v5, :cond_a

    .line 426
    iget v5, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    goto :goto_a

    .line 428
    :cond_3c
    if-nez v3, :cond_a

    .line 429
    if-eqz v2, :cond_54

    .line 430
    const/4 v2, 0x0

    .line 431
    if-eqz v4, :cond_4c

    iget-boolean v7, p0, Landroid/icu/impl/LocaleIDParser;->hadCountry:Z

    if-nez v7, :cond_4c

    .line 432
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->addSeparator()V

    .line 433
    add-int/lit8 v0, v0, 0x1

    .line 435
    :cond_4c
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->addSeparator()V

    .line 436
    if-eqz v4, :cond_54

    .line 437
    add-int/lit8 v0, v0, 0x1

    .line 438
    const/4 v4, 0x0

    .line 441
    :cond_54
    invoke-static {v6}, Landroid/icu/impl/locale/AsciiUtil;->toUpper(C)C

    move-result v6

    .line 442
    if-eq v6, v5, :cond_5e

    const/16 v5, 0x2c

    if-ne v6, v5, :cond_60

    .line 443
    :cond_5e
    const/16 v6, 0x5f

    .line 445
    :cond_60
    invoke-direct {p0, v6}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    .line 446
    iget-object v5, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v0

    const/16 v7, 0xb3

    if-gt v5, v7, :cond_6f

    goto :goto_a

    .line 447
    :cond_6f
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "variants is too long"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 451
    :cond_77
    :goto_77
    iget v5, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 452
    return v0
.end method

.method private blacklist reset()V
    .registers 3

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v1, v1

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    .line 75
    return-void
.end method

.method private blacklist set(ILjava/lang/String;)V
    .registers 5
    .param p1, "pos"    # I
    .param p2, "s"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 102
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    return-void
.end method

.method private blacklist setKeywordValue(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "keywordName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "reset"    # Z

    .line 721
    if-nez p1, :cond_b

    .line 722
    if-eqz p3, :cond_6c

    .line 724
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    goto :goto_6c

    .line 727
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 728
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6d

    .line 731
    if-eqz p2, :cond_2e

    .line 732
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 733
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_2e

    .line 734
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_2e
    :goto_2e
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->getKeywordMap()Ljava/util/Map;

    move-result-object v0

    .line 738
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 739
    if-eqz p2, :cond_6c

    .line 741
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    .line 742
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    .line 745
    :cond_4f
    if-nez p3, :cond_57

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 746
    :cond_57
    if-eqz p2, :cond_5d

    .line 747
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    .line 749
    :cond_5d
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 752
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    .line 758
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6c
    :goto_6c
    return-void

    .line 729
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyword must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setToKeywordStart()Z
    .registers 6

    .line 560
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v1, v1

    if-ge v0, v1, :cond_36

    .line 561
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    aget-char v1, v1, v0

    const/16 v2, 0x40

    if-ne v1, v2, :cond_33

    .line 562
    iget-boolean v1, p0, Landroid/icu/impl/LocaleIDParser;->canonicalize:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2a

    .line 563
    add-int/2addr v0, v2

    move v1, v0

    .local v1, "j":I
    :goto_16
    iget-object v3, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v3, v3

    if-ge v1, v3, :cond_29

    .line 564
    iget-object v3, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    aget-char v3, v3, v1

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_26

    .line 565
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 566
    return v2

    .line 563
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .end local v1    # "j":I
    :cond_29
    goto :goto_36

    .line 570
    :cond_2a
    add-int/2addr v0, v2

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    array-length v1, v1

    if-ge v0, v1, :cond_36

    .line 571
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 572
    return v2

    .line 560
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 578
    .end local v0    # "i":I
    :cond_36
    :goto_36
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist skipCountry()V
    .registers 4

    .line 352
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->atTerminator()Z

    move-result v0

    if-nez v0, :cond_30

    .line 353
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_20

    .line 354
    :cond_1a
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 360
    :cond_20
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 362
    .local v0, "oldIndex":I
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipUntilTerminatorOrIDSeparator()V

    .line 363
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr v1, v0

    .line 364
    .local v1, "charsSkipped":I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_2e

    const/4 v2, 0x3

    if-le v1, v2, :cond_30

    .line 365
    :cond_2e
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 368
    .end local v0    # "oldIndex":I
    .end local v1    # "charsSkipped":I
    :cond_30
    return-void
.end method

.method private blacklist skipLanguage()V
    .registers 2

    .line 227
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->haveExperimentalLanguagePrefix()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 228
    const/4 v0, 0x2

    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 230
    :cond_9
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipUntilTerminatorOrIDSeparator()V

    .line 231
    return-void
.end method

.method private blacklist skipScript()V
    .registers 5

    .line 282
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->atTerminator()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 283
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 284
    .local v0, "oldIndex":I
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 287
    :goto_e
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v1

    move v2, v1

    .local v2, "c":C
    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->isAlpha(C)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_e

    .line 288
    :cond_20
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 290
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    sub-int/2addr v1, v0

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2e

    .line 291
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 294
    .end local v0    # "oldIndex":I
    .end local v2    # "c":C
    :cond_2e
    return-void
.end method

.method private blacklist skipUntilTerminatorOrIDSeparator()V
    .registers 2

    .line 137
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    .line 138
    :cond_b
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    .line 139
    return-void
.end method


# virtual methods
.method public blacklist defaultKeywordValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "keywordName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 701
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/LocaleIDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 702
    return-void
.end method

.method public blacklist getBaseName()Ljava/lang/String;
    .registers 2

    .line 536
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 537
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    return-object v0

    .line 539
    :cond_7
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->parseBaseName()V

    .line 540
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCountry()Ljava/lang/String;
    .registers 2

    .line 479
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    .line 480
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipLanguage()V

    .line 481
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipScript()V

    .line 482
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseCountry()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKeywordMap()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 619
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    if-nez v0, :cond_58

    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, "m":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->setToKeywordStart()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 624
    :cond_b
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->getKeyword()Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    .line 626
    goto :goto_4e

    .line 628
    :cond_16
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v2

    .line 629
    .local v2, "c":C
    const/16 v3, 0x3d

    if-eq v2, v3, :cond_24

    .line 631
    const v3, 0xffff

    if-ne v2, v3, :cond_46

    .line 632
    goto :goto_4e

    .line 637
    :cond_24
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 638
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2f

    .line 640
    goto :goto_46

    .line 642
    :cond_2f
    if-nez v0, :cond_3c

    .line 643
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->getKeyComparator()Ljava/util/Comparator;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    move-object v0, v4

    goto :goto_43

    .line 644
    :cond_3c
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 646
    goto :goto_46

    .line 648
    :cond_43
    :goto_43
    invoke-virtual {v0, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "c":C
    .end local v3    # "value":Ljava/lang/String;
    :cond_46
    :goto_46
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    move-result v1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_b

    .line 651
    :cond_4e
    :goto_4e
    if-eqz v0, :cond_52

    move-object v1, v0

    goto :goto_56

    :cond_52
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    :goto_56
    iput-object v1, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    .line 654
    .end local v0    # "m":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_58
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "keywordName"    # Ljava/lang/String;

    .line 693
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->getKeywordMap()Ljava/util/Map;

    move-result-object v0

    .line 694
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_1a

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_1a
    return-object v1
.end method

.method public blacklist getKeywords()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 684
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->getKeywordMap()Ljava/util/Map;

    move-result-object v0

    .line 685
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_14

    :cond_c
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    return-object v1
.end method

.method public blacklist getLanguage()Ljava/lang/String;
    .registers 2

    .line 462
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    .line 463
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseLanguage()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLanguageScriptCountryVariant()[Ljava/lang/String;
    .registers 5

    .line 500
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    .line 501
    nop

    .line 502
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseLanguage()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseScript()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseCountry()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseVariant()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 501
    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 548
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->parseBaseName()V

    .line 549
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseKeywords()I

    .line 550
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScript()Ljava/lang/String;
    .registers 2

    .line 470
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    .line 471
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipLanguage()V

    .line 472
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseScript()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVariant()Ljava/lang/String;
    .registers 2

    .line 489
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    .line 490
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipLanguage()V

    .line 491
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipScript()V

    .line 492
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipCountry()V

    .line 493
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseVariant()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parseBaseName()V
    .registers 4

    .line 514
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 515
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/LocaleIDParser;->set(ILjava/lang/String;)V

    goto :goto_35

    .line 517
    :cond_b
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    .line 518
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseLanguage()I

    .line 519
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseScript()I

    .line 520
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseCountry()I

    .line 521
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseVariant()I

    .line 524
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 525
    .local v0, "len":I
    if-lez v0, :cond_35

    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_35

    .line 526
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 529
    .end local v0    # "len":I
    :cond_35
    :goto_35
    return-void
.end method

.method public blacklist setBaseName(Ljava/lang/String;)V
    .registers 2
    .param p1, "baseName"    # Ljava/lang/String;

    .line 510
    iput-object p1, p0, Landroid/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    .line 511
    return-void
.end method

.method public blacklist setKeywordValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "keywordName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 710
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/LocaleIDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 711
    return-void
.end method
