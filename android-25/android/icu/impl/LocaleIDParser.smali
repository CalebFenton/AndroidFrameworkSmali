.class public final Landroid/icu/impl/LocaleIDParser;
.super Ljava/lang/Object;
.source "LocaleIDParser.java"


# static fields
.field private static final COMMA:C = ','

.field private static final DONE:C = '\uffff'

.field private static final DOT:C = '.'

.field private static final HYPHEN:C = '-'

.field private static final ITEM_SEPARATOR:C = ';'

.field private static final KEYWORD_ASSIGN:C = '='

.field private static final KEYWORD_SEPARATOR:C = '@'

.field private static final UNDERSCORE:C = '_'


# instance fields
.field baseName:Ljava/lang/String;

.field private buffer:Ljava/lang/StringBuilder;

.field private canonicalize:Z

.field private hadCountry:Z

.field private id:[C

.field private index:I

.field keywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "localeID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 60
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;Z)V

    #@4
    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "localeID"    # Ljava/lang/String;
    .param p2, "canonicalize"    # Z

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@9
    .line 65
    const/4 v0, 0x0

    #@a
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@c
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@10
    array-length v1, v1

    #@11
    add-int/lit8 v1, v1, 0x5

    #@13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@16
    iput-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@18
    .line 67
    iput-boolean p2, p0, Landroid/icu/impl/LocaleIDParser;->canonicalize:Z

    #@1a
    .line 63
    return-void
.end method

.method private addSeparator()V
    .locals 1

    #@0
    .prologue
    .line 85
    const/16 v0, 0x5f

    #@2
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    #@5
    .line 84
    return-void
.end method

.method private append(C)V
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5
    .line 80
    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5
    .line 106
    return-void
.end method

.method private atTerminator()Z
    .locals 2

    #@0
    .prologue
    .line 143
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@2
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@9
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@b
    aget-char v0, v0, v1

    #@d
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->isTerminator(C)Z

    #@10
    move-result v0

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method

.method private getKeyComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 593
    new-instance v0, Landroid/icu/impl/LocaleIDParser$1;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/impl/LocaleIDParser$1;-><init>(Landroid/icu/impl/LocaleIDParser;)V

    #@5
    .line 598
    .local v0, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/String;>;"
    return-object v0
.end method

.method private getKeyword()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 577
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@2
    .line 578
    .local v0, "start":I
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    #@5
    move-result v1

    #@6
    invoke-static {v1}, Landroid/icu/impl/LocaleIDParser;->isDoneOrKeywordAssign(C)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 580
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@e
    add-int/lit8 v1, v1, -0x1

    #@10
    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@12
    .line 581
    new-instance v1, Ljava/lang/String;

    #@14
    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@16
    iget v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@18
    sub-int/2addr v3, v0

    #@19
    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    #@1c
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    return-object v1
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private getValue()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 585
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@2
    .line 586
    .local v0, "start":I
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    #@5
    move-result v1

    #@6
    invoke-static {v1}, Landroid/icu/impl/LocaleIDParser;->isDoneOrItemSeparator(C)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 588
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@e
    add-int/lit8 v1, v1, -0x1

    #@10
    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@12
    .line 589
    new-instance v1, Ljava/lang/String;

    #@14
    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@16
    iget v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@18
    sub-int/2addr v3, v0

    #@19
    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    #@1c
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    return-object v1
.end method

.method private haveExperimentalLanguagePrefix()Z
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 167
    iget-object v3, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@4
    array-length v3, v3

    #@5
    const/4 v4, 0x2

    #@6
    if-le v3, v4, :cond_3

    #@8
    .line 168
    iget-object v3, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@a
    aget-char v0, v3, v1

    #@c
    .line 169
    .local v0, "c":C
    const/16 v3, 0x2d

    #@e
    if-eq v0, v3, :cond_0

    #@10
    const/16 v3, 0x5f

    #@12
    if-ne v0, v3, :cond_3

    #@14
    .line 170
    :cond_0
    iget-object v3, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@16
    aget-char v0, v3, v2

    #@18
    .line 171
    const/16 v3, 0x78

    #@1a
    if-eq v0, v3, :cond_1

    #@1c
    const/16 v3, 0x58

    #@1e
    if-ne v0, v3, :cond_2

    #@20
    :cond_1
    :goto_0
    return v1

    #@21
    :cond_2
    const/16 v3, 0x69

    #@23
    if-eq v0, v3, :cond_1

    #@25
    const/16 v3, 0x49

    #@27
    if-eq v0, v3, :cond_1

    #@29
    move v1, v2

    #@2a
    goto :goto_0

    #@2b
    .line 174
    .end local v0    # "c":C
    :cond_3
    return v2
.end method

.method private haveKeywordAssign()Z
    .locals 3

    #@0
    .prologue
    .line 182
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_1

    #@7
    .line 183
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@9
    aget-char v1, v1, v0

    #@b
    const/16 v2, 0x3d

    #@d
    if-ne v1, v2, :cond_0

    #@f
    .line 184
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 187
    :cond_1
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method private static isDoneOrItemSeparator(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 573
    const v1, 0xffff

    #@4
    if-eq p0, v1, :cond_0

    #@6
    const/16 v1, 0x3b

    #@8
    if-ne p0, v1, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private static isDoneOrKeywordAssign(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 569
    const v1, 0xffff

    #@4
    if-eq p0, v1, :cond_0

    #@6
    const/16 v1, 0x3d

    #@8
    if-ne p0, v1, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private isTerminator(C)Z
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 152
    const/16 v1, 0x40

    #@3
    if-eq p1, v1, :cond_0

    #@5
    const v1, 0xffff

    #@8
    if-ne p1, v1, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    const/16 v1, 0x2e

    #@d
    if-eq p1, v1, :cond_0

    #@f
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method private isTerminatorOrIDSeparator(C)Z
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 159
    const/16 v0, 0x5f

    #@2
    if-eq p1, v0, :cond_0

    #@4
    const/16 v0, 0x2d

    #@6
    if-ne p1, v0, :cond_1

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_1
    invoke-direct {p0, p1}, Landroid/icu/impl/LocaleIDParser;->isTerminator(C)Z

    #@d
    move-result v0

    #@e
    goto :goto_0
.end method

.method private next()C
    .locals 3

    #@0
    .prologue
    .line 123
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@2
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@4
    array-length v1, v1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 124
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@d
    .line 125
    const v0, 0xffff

    #@10
    return v0

    #@11
    .line 128
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@13
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@15
    add-int/lit8 v2, v1, 0x1

    #@17
    iput v2, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@19
    aget-char v0, v0, v1

    #@1b
    return v0
.end method

.method private parseCountry()I
    .locals 9

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v8, 0x0

    #@2
    .line 300
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->atTerminator()Z

    #@5
    move-result v6

    #@6
    if-nez v6, :cond_6

    #@8
    .line 301
    iget v4, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@a
    .line 302
    .local v4, "oldIndex":I
    iget v6, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@c
    add-int/lit8 v6, v6, 0x1

    #@e
    iput v6, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@10
    .line 304
    iget-object v6, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@12
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@15
    move-result v3

    #@16
    .line 306
    .local v3, "oldBlen":I
    const/4 v2, 0x1

    #@17
    .line 307
    .local v2, "firstPass":Z
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    #@1a
    move-result v0

    #@1b
    .local v0, "c":C
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    #@1e
    move-result v6

    #@1f
    if-nez v6, :cond_1

    #@21
    .line 308
    if-eqz v2, :cond_0

    #@23
    .line 309
    const/4 v6, 0x1

    #@24
    iput-boolean v6, p0, Landroid/icu/impl/LocaleIDParser;->hadCountry:Z

    #@26
    .line 310
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->addSeparator()V

    #@29
    .line 311
    add-int/lit8 v3, v3, 0x1

    #@2b
    .line 312
    const/4 v2, 0x0

    #@2c
    .line 314
    :cond_0
    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toUpper(C)C

    #@2f
    move-result v6

    #@30
    invoke-direct {p0, v6}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    #@33
    goto :goto_0

    #@34
    .line 316
    :cond_1
    iget v6, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@36
    add-int/lit8 v6, v6, -0x1

    #@38
    iput v6, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@3a
    .line 318
    iget-object v6, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@3c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@3f
    move-result v6

    #@40
    sub-int v1, v6, v3

    #@42
    .line 320
    .local v1, "charsAppended":I
    if-nez v1, :cond_3

    #@44
    .line 338
    :cond_2
    :goto_1
    return v3

    #@45
    .line 323
    :cond_3
    const/4 v6, 0x2

    #@46
    if-lt v1, v6, :cond_4

    #@48
    if-le v1, v7, :cond_5

    #@4a
    .line 326
    :cond_4
    iput v4, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@4c
    .line 327
    add-int/lit8 v3, v3, -0x1

    #@4e
    .line 328
    iget-object v6, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@50
    iget-object v7, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@52
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    #@55
    move-result v7

    #@56
    invoke-virtual {v6, v3, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@59
    .line 329
    iput-boolean v8, p0, Landroid/icu/impl/LocaleIDParser;->hadCountry:Z

    #@5b
    goto :goto_1

    #@5c
    .line 331
    :cond_5
    if-ne v1, v7, :cond_2

    #@5e
    .line 332
    invoke-direct {p0, v3}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    #@61
    move-result-object v6

    #@62
    invoke-static {v6}, Landroid/icu/impl/LocaleIDs;->threeToTwoLetterRegion(Ljava/lang/String;)Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    .line 333
    .local v5, "region":Ljava/lang/String;
    if-eqz v5, :cond_2

    #@68
    .line 334
    invoke-direct {p0, v3, v5}, Landroid/icu/impl/LocaleIDParser;->set(ILjava/lang/String;)V

    #@6b
    goto :goto_1

    #@6c
    .line 341
    .end local v0    # "c":C
    .end local v1    # "charsAppended":I
    .end local v2    # "firstPass":Z
    .end local v3    # "oldBlen":I
    .end local v4    # "oldIndex":I
    .end local v5    # "region":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@6e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@71
    move-result v6

    #@72
    return v6
.end method

.method private parseKeywords()I
    .locals 6

    #@0
    .prologue
    .line 648
    iget-object v5, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    #@5
    move-result v4

    #@6
    .line 649
    .local v4, "oldBlen":I
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->getKeywordMap()Ljava/util/Map;

    #@9
    move-result-object v3

    #@a
    .line 650
    .local v3, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    #@d
    move-result v5

    #@e
    if-nez v5, :cond_2

    #@10
    .line 651
    const/4 v2, 0x1

    #@11
    .line 652
    .local v2, "first":Z
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@14
    move-result-object v5

    #@15
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_1

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/util/Map$Entry;

    #@25
    .line 653
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    #@27
    const/16 v5, 0x40

    #@29
    :goto_1
    invoke-direct {p0, v5}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    #@2c
    .line 654
    const/4 v2, 0x0

    #@2d
    .line 655
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    check-cast v5, Ljava/lang/String;

    #@33
    invoke-direct {p0, v5}, Landroid/icu/impl/LocaleIDParser;->append(Ljava/lang/String;)V

    #@36
    .line 656
    const/16 v5, 0x3d

    #@38
    invoke-direct {p0, v5}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    #@3b
    .line 657
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3e
    move-result-object v5

    #@3f
    check-cast v5, Ljava/lang/String;

    #@41
    invoke-direct {p0, v5}, Landroid/icu/impl/LocaleIDParser;->append(Ljava/lang/String;)V

    #@44
    goto :goto_0

    #@45
    .line 653
    :cond_0
    const/16 v5, 0x3b

    #@47
    goto :goto_1

    #@48
    .line 659
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    if-nez v2, :cond_2

    #@4a
    .line 660
    add-int/lit8 v4, v4, 0x1

    #@4c
    .line 663
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v2    # "first":Z
    :cond_2
    return v4
.end method

.method private parseLanguage()I
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 196
    iget-object v3, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@6
    move-result v2

    #@7
    .line 198
    .local v2, "startLength":I
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->haveExperimentalLanguagePrefix()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 199
    iget-object v3, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@f
    aget-char v3, v3, v5

    #@11
    invoke-static {v3}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    #@14
    move-result v3

    #@15
    invoke-direct {p0, v3}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    #@18
    .line 200
    const/16 v3, 0x2d

    #@1a
    invoke-direct {p0, v3}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    #@1d
    .line 201
    const/4 v3, 0x2

    #@1e
    iput v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@20
    .line 205
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    #@23
    move-result v0

    #@24
    .local v0, "c":C
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    #@27
    move-result v3

    #@28
    if-nez v3, :cond_1

    #@2a
    .line 206
    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    #@2d
    move-result v3

    #@2e
    invoke-direct {p0, v3}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    #@31
    goto :goto_0

    #@32
    .line 208
    :cond_1
    iget v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@34
    add-int/lit8 v3, v3, -0x1

    #@36
    iput v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@38
    .line 210
    iget-object v3, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@3d
    move-result v3

    #@3e
    sub-int/2addr v3, v2

    #@3f
    const/4 v4, 0x3

    #@40
    if-ne v3, v4, :cond_2

    #@42
    .line 211
    invoke-direct {p0, v5}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-static {v3}, Landroid/icu/impl/LocaleIDs;->threeToTwoLetterLanguage(Ljava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    .line 212
    .local v1, "lang":Ljava/lang/String;
    if-eqz v1, :cond_2

    #@4c
    .line 213
    invoke-direct {p0, v5, v1}, Landroid/icu/impl/LocaleIDParser;->set(ILjava/lang/String;)V

    #@4f
    .line 217
    .end local v1    # "lang":Ljava/lang/String;
    :cond_2
    return v5
.end method

.method private parseScript()I
    .locals 6

    #@0
    .prologue
    .line 241
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->atTerminator()Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_3

    #@6
    .line 242
    iget v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@8
    .line 243
    .local v3, "oldIndex":I
    iget v4, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@a
    add-int/lit8 v4, v4, 0x1

    #@c
    iput v4, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@e
    .line 245
    iget-object v4, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@13
    move-result v2

    #@14
    .line 247
    .local v2, "oldBlen":I
    const/4 v1, 0x1

    #@15
    .line 248
    .local v1, "firstPass":Z
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    #@18
    move-result v0

    #@19
    .local v0, "c":C
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    #@1c
    move-result v4

    #@1d
    if-nez v4, :cond_1

    #@1f
    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->isAlpha(C)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_1

    #@25
    .line 249
    if-eqz v1, :cond_0

    #@27
    .line 250
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->addSeparator()V

    #@2a
    .line 251
    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toUpper(C)C

    #@2d
    move-result v4

    #@2e
    invoke-direct {p0, v4}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    #@31
    .line 252
    const/4 v1, 0x0

    #@32
    goto :goto_0

    #@33
    .line 254
    :cond_0
    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    #@36
    move-result v4

    #@37
    invoke-direct {p0, v4}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    #@3a
    goto :goto_0

    #@3b
    .line 257
    :cond_1
    iget v4, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@3d
    add-int/lit8 v4, v4, -0x1

    #@3f
    iput v4, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@41
    .line 260
    iget v4, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@43
    sub-int/2addr v4, v3

    #@44
    const/4 v5, 0x5

    #@45
    if-eq v4, v5, :cond_2

    #@47
    .line 261
    iput v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@49
    .line 262
    iget-object v4, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@4b
    iget-object v5, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@4d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    #@50
    move-result v5

    #@51
    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@54
    .line 267
    :goto_1
    return v2

    #@55
    .line 264
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@57
    goto :goto_1

    #@58
    .line 269
    .end local v0    # "c":C
    .end local v1    # "firstPass":Z
    .end local v2    # "oldBlen":I
    .end local v3    # "oldIndex":I
    :cond_3
    iget-object v4, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@5d
    move-result v4

    #@5e
    return v4
.end method

.method private parseVariant()I
    .locals 8

    #@0
    .prologue
    const/16 v7, 0x2d

    #@2
    .line 393
    iget-object v6, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    #@7
    move-result v3

    #@8
    .line 395
    .local v3, "oldBlen":I
    const/4 v5, 0x1

    #@9
    .line 396
    .local v5, "start":Z
    const/4 v2, 0x1

    #@a
    .line 397
    .local v2, "needSeparator":Z
    const/4 v4, 0x0

    #@b
    .line 399
    .local v4, "skipping":Z
    const/4 v1, 0x1

    #@c
    .line 401
    .local v1, "firstPass":Z
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    #@f
    move-result v0

    #@10
    .local v0, "c":C
    const v6, 0xffff

    #@13
    if-eq v0, v6, :cond_2

    #@15
    .line 402
    const/16 v6, 0x2e

    #@17
    if-ne v0, v6, :cond_1

    #@19
    .line 403
    const/4 v5, 0x0

    #@1a
    .line 404
    const/4 v4, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 405
    :cond_1
    const/16 v6, 0x40

    #@1e
    if-ne v0, v6, :cond_4

    #@20
    .line 406
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->haveKeywordAssign()Z

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_3

    #@26
    .line 437
    :cond_2
    iget v6, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@28
    add-int/lit8 v6, v6, -0x1

    #@2a
    iput v6, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@2c
    .line 439
    return v3

    #@2d
    .line 409
    :cond_3
    const/4 v4, 0x0

    #@2e
    .line 410
    const/4 v5, 0x0

    #@2f
    .line 411
    const/4 v2, 0x1

    #@30
    goto :goto_0

    #@31
    .line 412
    :cond_4
    if-eqz v5, :cond_5

    #@33
    .line 413
    const/4 v5, 0x0

    #@34
    .line 414
    const/16 v6, 0x5f

    #@36
    if-eq v0, v6, :cond_0

    #@38
    if-eq v0, v7, :cond_0

    #@3a
    .line 415
    iget v6, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@3c
    add-int/lit8 v6, v6, -0x1

    #@3e
    iput v6, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@40
    goto :goto_0

    #@41
    .line 417
    :cond_5
    if-nez v4, :cond_0

    #@43
    .line 418
    if-eqz v2, :cond_7

    #@45
    .line 419
    const/4 v2, 0x0

    #@46
    .line 420
    if-eqz v1, :cond_6

    #@48
    iget-boolean v6, p0, Landroid/icu/impl/LocaleIDParser;->hadCountry:Z

    #@4a
    if-eqz v6, :cond_a

    #@4c
    .line 424
    :cond_6
    :goto_1
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->addSeparator()V

    #@4f
    .line 425
    if-eqz v1, :cond_7

    #@51
    .line 426
    add-int/lit8 v3, v3, 0x1

    #@53
    .line 427
    const/4 v1, 0x0

    #@54
    .line 430
    :cond_7
    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toUpper(C)C

    #@57
    move-result v0

    #@58
    .line 431
    if-eq v0, v7, :cond_8

    #@5a
    const/16 v6, 0x2c

    #@5c
    if-ne v0, v6, :cond_9

    #@5e
    .line 432
    :cond_8
    const/16 v0, 0x5f

    #@60
    .line 434
    .end local v0    # "c":C
    :cond_9
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->append(C)V

    #@63
    goto :goto_0

    #@64
    .line 421
    .restart local v0    # "c":C
    :cond_a
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->addSeparator()V

    #@67
    .line 422
    add-int/lit8 v3, v3, 0x1

    #@69
    goto :goto_1
.end method

.method private reset()V
    .locals 2

    #@0
    .prologue
    .line 71
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@3
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@7
    array-length v1, v1

    #@8
    add-int/lit8 v1, v1, 0x5

    #@a
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@d
    iput-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@f
    .line 70
    return-void
.end method

.method private set(ILjava/lang/String;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@2
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@b
    .line 100
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@d
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 98
    return-void
.end method

.method private setKeywordValue(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "keywordName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "reset"    # Z

    #@0
    .prologue
    .line 707
    if-nez p1, :cond_1

    #@2
    .line 708
    if-eqz p3, :cond_0

    #@4
    .line 710
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    #@a
    .line 706
    :cond_0
    :goto_0
    return-void

    #@b
    .line 713
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object p1

    #@13
    .line 714
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_2

    #@19
    .line 715
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v2, "keyword must not be empty"

    #@1e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 717
    :cond_2
    if-eqz p2, :cond_3

    #@24
    .line 718
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@27
    move-result-object p2

    #@28
    .line 719
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@2b
    move-result v1

    #@2c
    if-nez v1, :cond_3

    #@2e
    .line 720
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@30
    const-string/jumbo v2, "value must not be empty"

    #@33
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v1

    #@37
    .line 723
    :cond_3
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->getKeywordMap()Ljava/util/Map;

    #@3a
    move-result-object v0

    #@3b
    .line 724
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_4

    #@41
    .line 725
    if-eqz p2, :cond_0

    #@43
    .line 727
    new-instance v1, Ljava/util/TreeMap;

    #@45
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->getKeyComparator()Ljava/util/Comparator;

    #@48
    move-result-object v2

    #@49
    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    #@4c
    iput-object v1, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    #@4e
    .line 728
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    #@50
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@57
    goto :goto_0

    #@58
    .line 731
    :cond_4
    if-nez p3, :cond_5

    #@5a
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5d
    move-result v1

    #@5e
    if-nez v1, :cond_0

    #@60
    .line 732
    :cond_5
    if-eqz p2, :cond_6

    #@62
    .line 733
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    goto :goto_0

    #@66
    .line 735
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    .line 736
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@6c
    move-result v1

    #@6d
    if-eqz v1, :cond_0

    #@6f
    .line 738
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@72
    move-result-object v1

    #@73
    iput-object v1, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    #@75
    goto :goto_0
.end method

.method private setToKeywordStart()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 547
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@3
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@5
    array-length v2, v2

    #@6
    if-ge v0, v2, :cond_3

    #@8
    .line 548
    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@a
    aget-char v2, v2, v0

    #@c
    const/16 v3, 0x40

    #@e
    if-ne v2, v3, :cond_2

    #@10
    .line 549
    iget-boolean v2, p0, Landroid/icu/impl/LocaleIDParser;->canonicalize:Z

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 550
    add-int/lit8 v0, v0, 0x1

    #@16
    move v1, v0

    #@17
    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@19
    array-length v2, v2

    #@1a
    if-ge v1, v2, :cond_3

    #@1c
    .line 551
    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@1e
    aget-char v2, v2, v1

    #@20
    const/16 v3, 0x3d

    #@22
    if-ne v2, v3, :cond_0

    #@24
    .line 552
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@26
    .line 553
    return v4

    #@27
    .line 550
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_1

    #@2a
    .line 557
    .end local v1    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2c
    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@2e
    array-length v2, v2

    #@2f
    if-ge v0, v2, :cond_3

    #@31
    .line 558
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@33
    .line 559
    return v4

    #@34
    .line 547
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 565
    :cond_3
    const/4 v2, 0x0

    #@38
    return v2
.end method

.method private skipCountry()V
    .locals 4

    #@0
    .prologue
    .line 350
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->atTerminator()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_3

    #@6
    .line 351
    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@8
    iget v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@a
    aget-char v2, v2, v3

    #@c
    const/16 v3, 0x5f

    #@e
    if-eq v2, v3, :cond_0

    #@10
    iget-object v2, p0, Landroid/icu/impl/LocaleIDParser;->id:[C

    #@12
    iget v3, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@14
    aget-char v2, v2, v3

    #@16
    const/16 v3, 0x2d

    #@18
    if-ne v2, v3, :cond_1

    #@1a
    .line 352
    :cond_0
    iget v2, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@1c
    add-int/lit8 v2, v2, 0x1

    #@1e
    iput v2, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@20
    .line 358
    :cond_1
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@22
    .line 360
    .local v1, "oldIndex":I
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipUntilTerminatorOrIDSeparator()V

    #@25
    .line 361
    iget v2, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@27
    sub-int v0, v2, v1

    #@29
    .line 362
    .local v0, "charsSkipped":I
    const/4 v2, 0x2

    #@2a
    if-lt v0, v2, :cond_2

    #@2c
    const/4 v2, 0x3

    #@2d
    if-le v0, v2, :cond_3

    #@2f
    .line 363
    :cond_2
    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@31
    .line 349
    .end local v0    # "charsSkipped":I
    .end local v1    # "oldIndex":I
    :cond_3
    return-void
.end method

.method private skipLanguage()V
    .locals 1

    #@0
    .prologue
    .line 225
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->haveExperimentalLanguagePrefix()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 226
    const/4 v0, 0x2

    #@7
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@9
    .line 228
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipUntilTerminatorOrIDSeparator()V

    #@c
    .line 224
    return-void
.end method

.method private skipScript()V
    .locals 4

    #@0
    .prologue
    .line 280
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->atTerminator()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_2

    #@6
    .line 281
    iget v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@8
    .line 282
    .local v1, "oldIndex":I
    iget v2, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@a
    add-int/lit8 v2, v2, 0x1

    #@c
    iput v2, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@e
    .line 285
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    #@11
    move-result v0

    #@12
    .local v0, "c":C
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_1

    #@18
    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->isAlpha(C)Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_0

    #@1e
    .line 286
    :cond_1
    iget v2, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@20
    add-int/lit8 v2, v2, -0x1

    #@22
    iput v2, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@24
    .line 288
    iget v2, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@26
    sub-int/2addr v2, v1

    #@27
    const/4 v3, 0x5

    #@28
    if-eq v2, v3, :cond_2

    #@2a
    .line 289
    iput v1, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@2c
    .line 279
    .end local v0    # "c":C
    .end local v1    # "oldIndex":I
    :cond_2
    return-void
.end method

.method private skipUntilTerminatorOrIDSeparator()V
    .locals 1

    #@0
    .prologue
    .line 135
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->isTerminatorOrIDSeparator(C)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 136
    iget v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@c
    add-int/lit8 v0, v0, -0x1

    #@e
    iput v0, p0, Landroid/icu/impl/LocaleIDParser;->index:I

    #@10
    .line 134
    return-void
.end method


# virtual methods
.method public defaultKeywordValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "keywordName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 687
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/LocaleIDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;Z)V

    #@4
    .line 686
    return-void
.end method

.method public getBaseName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 523
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 524
    iget-object v0, p0, Landroid/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    #@6
    return-object v0

    #@7
    .line 526
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->parseBaseName()V

    #@a
    .line 527
    const/4 v0, 0x0

    #@b
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 466
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    #@3
    .line 467
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipLanguage()V

    #@6
    .line 468
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipScript()V

    #@9
    .line 469
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseCountry()I

    #@c
    move-result v0

    #@d
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public getKeywordMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 605
    iget-object v4, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    #@2
    if-nez v4, :cond_1

    #@4
    .line 606
    const/4 v2, 0x0

    #@5
    .line 607
    .local v2, "m":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->setToKeywordStart()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 610
    .end local v2    # "m":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->getKeyword()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 611
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@12
    move-result v4

    #@13
    if-nez v4, :cond_2

    #@15
    .line 637
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_7

    #@17
    :goto_1
    iput-object v2, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    #@19
    .line 640
    :cond_1
    iget-object v4, p0, Landroid/icu/impl/LocaleIDParser;->keywords:Ljava/util/Map;

    #@1b
    return-object v4

    #@1c
    .line 614
    .restart local v1    # "key":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    #@1f
    move-result v0

    #@20
    .line 615
    .local v0, "c":C
    const/16 v4, 0x3d

    #@22
    if-eq v0, v4, :cond_4

    #@24
    .line 617
    const v4, 0xffff

    #@27
    if-eq v0, v4, :cond_0

    #@29
    .line 635
    :cond_3
    :goto_2
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->next()C

    #@2c
    move-result v4

    #@2d
    const/16 v5, 0x3b

    #@2f
    if-ne v4, v5, :cond_0

    #@31
    goto :goto_0

    #@32
    .line 623
    :cond_4
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->getValue()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    .line 624
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_3

    #@3c
    .line 628
    if-nez v2, :cond_6

    #@3e
    .line 629
    new-instance v2, Ljava/util/TreeMap;

    #@40
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->getKeyComparator()Ljava/util/Comparator;

    #@43
    move-result-object v4

    #@44
    invoke-direct {v2, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    #@47
    .line 634
    :cond_5
    invoke-virtual {v2, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    goto :goto_2

    #@4b
    .line 630
    :cond_6
    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    #@4e
    move-result v4

    #@4f
    if-eqz v4, :cond_5

    #@51
    goto :goto_2

    #@52
    .line 637
    .end local v0    # "c":C
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@55
    move-result-object v2

    #@56
    goto :goto_1
.end method

.method public getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "keywordName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 679
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->getKeywordMap()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    .line 680
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    const/4 v1, 0x0

    #@b
    :goto_0
    return-object v1

    #@c
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/lang/String;

    #@1a
    goto :goto_0
.end method

.method public getKeywords()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 670
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->getKeywordMap()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    .line 671
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    const/4 v1, 0x0

    #@b
    :goto_0
    return-object v1

    #@c
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@f
    move-result-object v1

    #@10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 449
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    #@3
    .line 450
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseLanguage()I

    #@6
    move-result v0

    #@7
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getLanguageScriptCountryVariant()[Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 487
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    #@3
    .line 488
    const/4 v0, 0x4

    #@4
    new-array v0, v0, [Ljava/lang/String;

    #@6
    .line 489
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseLanguage()I

    #@9
    move-result v1

    #@a
    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v1, v0, v2

    #@11
    .line 490
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseScript()I

    #@14
    move-result v1

    #@15
    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    const/4 v2, 0x1

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 491
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseCountry()I

    #@1f
    move-result v1

    #@20
    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    const/4 v2, 0x2

    #@25
    aput-object v1, v0, v2

    #@27
    .line 492
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseVariant()I

    #@2a
    move-result v1

    #@2b
    invoke-direct {p0, v1}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    const/4 v2, 0x3

    #@30
    aput-object v1, v0, v2

    #@32
    .line 488
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 535
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->parseBaseName()V

    #@3
    .line 536
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseKeywords()I

    #@6
    .line 537
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 457
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    #@3
    .line 458
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipLanguage()V

    #@6
    .line 459
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseScript()I

    #@9
    move-result v0

    #@a
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 476
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    #@3
    .line 477
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipLanguage()V

    #@6
    .line 478
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipScript()V

    #@9
    .line 479
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->skipCountry()V

    #@c
    .line 480
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseVariant()I

    #@f
    move-result v0

    #@10
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;->getString(I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public parseBaseName()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 501
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 502
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    #@7
    invoke-direct {p0, v2, v1}, Landroid/icu/impl/LocaleIDParser;->set(ILjava/lang/String;)V

    #@a
    .line 500
    :cond_0
    :goto_0
    return-void

    #@b
    .line 504
    :cond_1
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->reset()V

    #@e
    .line 505
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseLanguage()I

    #@11
    .line 506
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseScript()I

    #@14
    .line 507
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseCountry()I

    #@17
    .line 508
    invoke-direct {p0}, Landroid/icu/impl/LocaleIDParser;->parseVariant()I

    #@1a
    .line 511
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@1f
    move-result v0

    #@20
    .line 512
    .local v0, "len":I
    if-lez v0, :cond_0

    #@22
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@24
    add-int/lit8 v2, v0, -0x1

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    #@29
    move-result v1

    #@2a
    const/16 v2, 0x5f

    #@2c
    if-ne v1, v2, :cond_0

    #@2e
    .line 513
    iget-object v1, p0, Landroid/icu/impl/LocaleIDParser;->buffer:Ljava/lang/StringBuilder;

    #@30
    add-int/lit8 v2, v0, -0x1

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    #@35
    goto :goto_0
.end method

.method public setBaseName(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 497
    iput-object p1, p0, Landroid/icu/impl/LocaleIDParser;->baseName:Ljava/lang/String;

    #@2
    .line 496
    return-void
.end method

.method public setKeywordValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "keywordName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 696
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/LocaleIDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;Z)V

    #@4
    .line 695
    return-void
.end method
