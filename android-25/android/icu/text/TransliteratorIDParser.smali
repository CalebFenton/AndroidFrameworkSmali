.class Landroid/icu/text/TransliteratorIDParser;
.super Ljava/lang/Object;
.source "TransliteratorIDParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TransliteratorIDParser$SingleID;,
        Landroid/icu/text/TransliteratorIDParser$Specs;
    }
.end annotation


# static fields
.field private static final ANY:Ljava/lang/String; = "Any"

.field private static final CLOSE_REV:C = ')'

.field private static final FORWARD:I = 0x0

.field private static final ID_DELIM:C = ';'

.field private static final OPEN_REV:C = '('

.field private static final REVERSE:I = 0x1

.field private static final SPECIAL_INVERSES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TARGET_SEP:C = '-'

.field private static final VARIANT_SEP:C = '/'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 66
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@8
    move-result-object v0

    #@9
    .line 65
    sput-object v0, Landroid/icu/text/TransliteratorIDParser;->SPECIAL_INVERSES:Ljava/util/Map;

    #@b
    .line 47
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p0, "id"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 467
    const-string/jumbo v3, "Any"

    #@5
    .line 468
    .local v3, "source":Ljava/lang/String;
    const/4 v4, 0x0

    #@6
    .line 469
    .local v4, "target":Ljava/lang/String;
    const-string/jumbo v6, ""

    #@9
    .line 471
    .local v6, "variant":Ljava/lang/String;
    const/16 v7, 0x2d

    #@b
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    #@e
    move-result v1

    #@f
    .line 472
    .local v1, "sep":I
    const/16 v7, 0x2f

    #@11
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    #@14
    move-result v5

    #@15
    .line 473
    .local v5, "var":I
    if-gez v5, :cond_0

    #@17
    .line 474
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1a
    move-result v5

    #@1b
    .line 476
    :cond_0
    const/4 v0, 0x0

    #@1c
    .line 478
    .local v0, "isSourcePresent":Z
    if-gez v1, :cond_2

    #@1e
    .line 480
    invoke-virtual {p0, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    .line 481
    .local v4, "target":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@25
    move-result-object v6

    #@26
    .line 500
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@29
    move-result v7

    #@2a
    if-lez v7, :cond_1

    #@2c
    .line 501
    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    .line 504
    :cond_1
    const/4 v7, 0x4

    #@31
    new-array v8, v7, [Ljava/lang/String;

    #@33
    aput-object v3, v8, v9

    #@35
    aput-object v4, v8, v10

    #@37
    const/4 v7, 0x2

    #@38
    aput-object v6, v8, v7

    #@3a
    .line 505
    if-eqz v0, :cond_6

    #@3c
    const-string/jumbo v7, ""

    #@3f
    :goto_1
    const/4 v9, 0x3

    #@40
    aput-object v7, v8, v9

    #@42
    .line 504
    return-object v8

    #@43
    .line 482
    .local v4, "target":Ljava/lang/String;
    :cond_2
    if-ge v1, v5, :cond_4

    #@45
    .line 484
    if-lez v1, :cond_3

    #@47
    .line 485
    invoke-virtual {p0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    .line 486
    const/4 v0, 0x1

    #@4c
    .line 488
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@4e
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    .line 489
    .local v4, "target":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@55
    move-result-object v6

    #@56
    goto :goto_0

    #@57
    .line 492
    .local v4, "target":Ljava/lang/String;
    :cond_4
    if-lez v5, :cond_5

    #@59
    .line 493
    invoke-virtual {p0, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    .line 494
    const/4 v0, 0x1

    #@5e
    .line 496
    :cond_5
    add-int/lit8 v2, v1, 0x1

    #@60
    .end local v1    # "sep":I
    .local v2, "sep":I
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@63
    move-result-object v6

    #@64
    .line 497
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@67
    move-result-object v4

    #@68
    .local v4, "target":Ljava/lang/String;
    move v1, v2

    #@69
    .end local v2    # "sep":I
    .restart local v1    # "sep":I
    goto :goto_0

    #@6a
    .line 505
    :cond_6
    const/4 v7, 0x0

    #@6b
    goto :goto_1
.end method

.method public static STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "variant"    # Ljava/lang/String;

    #@0
    .prologue
    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5
    .line 517
    .local v0, "id":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 518
    const-string/jumbo v1, "Any"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 520
    :cond_0
    const/16 v1, 0x2d

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 521
    if-eqz p2, :cond_1

    #@1c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 522
    const/16 v1, 0x2f

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 524
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    return-object v1
.end method

.method static instantiateList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/TransliteratorIDParser$SingleID;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/Transliterator;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/TransliteratorIDParser$SingleID;>;"
    const/4 v5, 0x0

    #@1
    .line 431
    new-instance v3, Ljava/util/ArrayList;

    #@3
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 432
    .local v3, "translits":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/Transliterator;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "single$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_2

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/icu/text/TransliteratorIDParser$SingleID;

    #@16
    .line 433
    .local v0, "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    iget-object v4, v0, Landroid/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    #@18
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_0

    #@1e
    .line 436
    invoke-virtual {v0}, Landroid/icu/text/TransliteratorIDParser$SingleID;->getInstance()Landroid/icu/text/Transliterator;

    #@21
    move-result-object v2

    #@22
    .line 437
    .local v2, "t":Landroid/icu/text/Transliterator;
    if-nez v2, :cond_1

    #@24
    .line 438
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@26
    new-instance v5, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v6, "Illegal ID "

    #@2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    iget-object v6, v0, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    #@34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v5

    #@3c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v4

    #@40
    .line 440
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@43
    goto :goto_0

    #@44
    .line 444
    .end local v0    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    .end local v2    # "t":Landroid/icu/text/Transliterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@47
    move-result v4

    #@48
    if-nez v4, :cond_4

    #@4a
    .line 445
    const-string/jumbo v4, "Any-Null"

    #@4d
    invoke-static {v4, v5}, Landroid/icu/text/Transliterator;->getBasicInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/Transliterator;

    #@50
    move-result-object v2

    #@51
    .line 446
    .restart local v2    # "t":Landroid/icu/text/Transliterator;
    if-nez v2, :cond_3

    #@53
    .line 448
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@55
    const-string/jumbo v5, "Internal error; cannot instantiate Any-Null"

    #@58
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v4

    #@5c
    .line 450
    :cond_3
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5f
    .line 452
    .end local v2    # "t":Landroid/icu/text/Transliterator;
    :cond_4
    return-object v3
.end method

.method public static parseCompoundID(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;[Landroid/icu/text/UnicodeSet;)Z
    .locals 10
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "dir"    # I
    .param p2, "canonID"    # Ljava/lang/StringBuffer;
    .param p4, "globalFilter"    # [Landroid/icu/text/UnicodeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/TransliteratorIDParser$SingleID;",
            ">;[",
            "Landroid/icu/text/UnicodeSet;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/TransliteratorIDParser$SingleID;>;"
    const/4 v6, 0x0

    #@1
    const/16 v7, 0x3b

    #@3
    const/4 v9, 0x1

    #@4
    const/4 v8, 0x0

    #@5
    .line 347
    new-array v2, v9, [I

    #@7
    aput v8, v2, v8

    #@9
    .line 348
    .local v2, "pos":[I
    new-array v5, v9, [I

    #@b
    .line 349
    .local v5, "withParens":[I
    invoke-interface {p3}, Ljava/util/List;->clear()V

    #@e
    .line 351
    aput-object v6, p4, v8

    #@10
    .line 352
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    #@13
    .line 355
    aput v8, v5, v8

    #@15
    .line 356
    invoke-static {p0, v2, p1, v5, p2}, Landroid/icu/text/TransliteratorIDParser;->parseGlobalFilter(Ljava/lang/String;[II[ILjava/lang/StringBuffer;)Landroid/icu/text/UnicodeSet;

    #@18
    move-result-object v0

    #@19
    .line 357
    .local v0, "filter":Landroid/icu/text/UnicodeSet;
    if-eqz v0, :cond_1

    #@1b
    .line 358
    invoke-static {p0, v2, v7}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    #@1e
    move-result v6

    #@1f
    if-nez v6, :cond_0

    #@21
    .line 360
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    #@24
    .line 361
    aput v8, v2, v8

    #@26
    .line 363
    :cond_0
    if-nez p1, :cond_1

    #@28
    .line 364
    aput-object v0, p4, v8

    #@2a
    .line 368
    :cond_1
    const/4 v3, 0x1

    #@2b
    .line 370
    .local v3, "sawDelimiter":Z
    :cond_2
    invoke-static {p0, v2, p1}, Landroid/icu/text/TransliteratorIDParser;->parseSingleID(Ljava/lang/String;[II)Landroid/icu/text/TransliteratorIDParser$SingleID;

    #@2e
    move-result-object v4

    #@2f
    .line 371
    .local v4, "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    if-nez v4, :cond_3

    #@31
    .line 385
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    #@34
    move-result v6

    #@35
    if-nez v6, :cond_5

    #@37
    .line 386
    return v8

    #@38
    .line 374
    :cond_3
    if-nez p1, :cond_4

    #@3a
    .line 375
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3d
    .line 379
    :goto_1
    invoke-static {p0, v2, v7}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    #@40
    move-result v6

    #@41
    if-nez v6, :cond_2

    #@43
    .line 380
    const/4 v3, 0x0

    #@44
    .line 381
    goto :goto_0

    #@45
    .line 377
    :cond_4
    invoke-interface {p3, v8, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@48
    goto :goto_1

    #@49
    .line 390
    :cond_5
    const/4 v1, 0x0

    #@4a
    .local v1, "i":I
    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    #@4d
    move-result v6

    #@4e
    if-ge v1, v6, :cond_7

    #@50
    .line 391
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@53
    move-result-object v4

    #@54
    .end local v4    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    check-cast v4, Landroid/icu/text/TransliteratorIDParser$SingleID;

    #@56
    .line 392
    .restart local v4    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    iget-object v6, v4, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    #@58
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5b
    .line 393
    invoke-interface {p3}, Ljava/util/List;->size()I

    #@5e
    move-result v6

    #@5f
    add-int/lit8 v6, v6, -0x1

    #@61
    if-eq v1, v6, :cond_6

    #@63
    .line 394
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@66
    .line 390
    :cond_6
    add-int/lit8 v1, v1, 0x1

    #@68
    goto :goto_2

    #@69
    .line 400
    :cond_7
    if-eqz v3, :cond_8

    #@6b
    .line 401
    aput v9, v5, v8

    #@6d
    .line 402
    invoke-static {p0, v2, p1, v5, p2}, Landroid/icu/text/TransliteratorIDParser;->parseGlobalFilter(Ljava/lang/String;[II[ILjava/lang/StringBuffer;)Landroid/icu/text/UnicodeSet;

    #@70
    move-result-object v0

    #@71
    .line 403
    if-eqz v0, :cond_8

    #@73
    .line 405
    invoke-static {p0, v2, v7}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    #@76
    .line 407
    if-ne p1, v9, :cond_8

    #@78
    .line 408
    aput-object v0, p4, v8

    #@7a
    .line 414
    :cond_8
    aget v6, v2, v8

    #@7c
    invoke-static {p0, v6}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    #@7f
    move-result v6

    #@80
    aput v6, v2, v8

    #@82
    .line 415
    aget v6, v2, v8

    #@84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@87
    move-result v7

    #@88
    if-eq v6, v7, :cond_9

    #@8a
    .line 416
    return v8

    #@8b
    .line 419
    :cond_9
    return v9
.end method

.method public static parseFilterID(Ljava/lang/String;[I)Landroid/icu/text/TransliteratorIDParser$SingleID;
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "pos"    # [I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 151
    aget v2, p1, v4

    #@4
    .line 152
    .local v2, "start":I
    const/4 v3, 0x1

    #@5
    invoke-static {p0, p1, v3}, Landroid/icu/text/TransliteratorIDParser;->parseFilterID(Ljava/lang/String;[IZ)Landroid/icu/text/TransliteratorIDParser$Specs;

    #@8
    move-result-object v1

    #@9
    .line 153
    .local v1, "specs":Landroid/icu/text/TransliteratorIDParser$Specs;
    if-nez v1, :cond_0

    #@b
    .line 154
    aput v2, p1, v4

    #@d
    .line 155
    return-object v5

    #@e
    .line 159
    :cond_0
    invoke-static {v1, v4}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    #@11
    move-result-object v0

    #@12
    .line 160
    .local v0, "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    iget-object v3, v1, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    #@14
    iput-object v3, v0, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    #@16
    .line 161
    return-object v0
.end method

.method private static parseFilterID(Ljava/lang/String;[IZ)Landroid/icu/text/TransliteratorIDParser$Specs;
    .locals 14
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "pos"    # [I
    .param p2, "allowFilter"    # Z

    #@0
    .prologue
    .line 593
    const/4 v8, 0x0

    #@1
    .line 594
    .local v8, "first":Ljava/lang/String;
    const/4 v1, 0x0

    #@2
    .line 595
    .local v1, "source":Ljava/lang/String;
    const/4 v2, 0x0

    #@3
    .line 596
    .local v2, "target":Ljava/lang/String;
    const/4 v3, 0x0

    #@4
    .line 597
    .local v3, "variant":Ljava/lang/String;
    const/4 v5, 0x0

    #@5
    .line 598
    .local v5, "filter":Ljava/lang/String;
    const/4 v7, 0x0

    #@6
    .line 599
    .local v7, "delimiter":C
    const/4 v11, 0x0

    #@7
    .line 600
    .local v11, "specCount":I
    const/4 v0, 0x0

    #@8
    aget v12, p1, v0

    #@a
    .line 606
    .end local v2    # "target":Ljava/lang/String;
    .end local v3    # "variant":Ljava/lang/String;
    .end local v5    # "filter":Ljava/lang/String;
    .end local v7    # "delimiter":C
    .end local v8    # "first":Ljava/lang/String;
    .local v12, "start":I
    :goto_0
    const/4 v0, 0x0

    #@b
    aget v0, p1, v0

    #@d
    invoke-static {p0, v0}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    #@10
    move-result v0

    #@11
    const/4 v13, 0x0

    #@12
    aput v0, p1, v13

    #@14
    .line 607
    const/4 v0, 0x0

    #@15
    aget v0, p1, v0

    #@17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1a
    move-result v13

    #@1b
    if-ne v0, v13, :cond_2

    #@1d
    .line 665
    :cond_0
    if-eqz v8, :cond_1

    #@1f
    .line 666
    if-nez v2, :cond_8

    #@21
    .line 667
    move-object v2, v8

    #@22
    .line 674
    .end local v1    # "source":Ljava/lang/String;
    :cond_1
    :goto_1
    if-nez v1, :cond_9

    #@24
    if-nez v2, :cond_9

    #@26
    .line 675
    const/4 v0, 0x0

    #@27
    aput v12, p1, v0

    #@29
    .line 676
    const/4 v0, 0x0

    #@2a
    return-object v0

    #@2b
    .line 612
    .restart local v1    # "source":Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_3

    #@2d
    if-nez v5, :cond_3

    #@2f
    .line 613
    const/4 v0, 0x0

    #@30
    aget v0, p1, v0

    #@32
    invoke-static {p0, v0}, Landroid/icu/text/UnicodeSet;->resemblesPattern(Ljava/lang/String;I)Z

    #@35
    move-result v0

    #@36
    .line 612
    if-eqz v0, :cond_3

    #@38
    .line 615
    new-instance v9, Ljava/text/ParsePosition;

    #@3a
    const/4 v0, 0x0

    #@3b
    aget v0, p1, v0

    #@3d
    invoke-direct {v9, v0}, Ljava/text/ParsePosition;-><init>(I)V

    #@40
    .line 617
    .local v9, "ppos":Ljava/text/ParsePosition;
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@42
    const/4 v13, 0x0

    #@43
    invoke-direct {v0, p0, v9, v13}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)V

    #@46
    .line 618
    const/4 v0, 0x0

    #@47
    aget v0, p1, v0

    #@49
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    #@4c
    move-result v13

    #@4d
    invoke-virtual {p0, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    .line 619
    .local v5, "filter":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    #@54
    move-result v0

    #@55
    const/4 v13, 0x0

    #@56
    aput v0, p1, v13

    #@58
    goto :goto_0

    #@59
    .line 623
    .end local v5    # "filter":Ljava/lang/String;
    .end local v9    # "ppos":Ljava/text/ParsePosition;
    :cond_3
    if-nez v7, :cond_6

    #@5b
    .line 624
    const/4 v0, 0x0

    #@5c
    aget v0, p1, v0

    #@5e
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@61
    move-result v6

    #@62
    .line 625
    .local v6, "c":C
    const/16 v0, 0x2d

    #@64
    if-ne v6, v0, :cond_5

    #@66
    if-nez v2, :cond_5

    #@68
    .line 627
    :cond_4
    move v7, v6

    #@69
    .line 628
    .local v7, "delimiter":C
    const/4 v0, 0x0

    #@6a
    aget v13, p1, v0

    #@6c
    add-int/lit8 v13, v13, 0x1

    #@6e
    aput v13, p1, v0

    #@70
    goto :goto_0

    #@71
    .line 626
    .end local v7    # "delimiter":C
    :cond_5
    const/16 v0, 0x2f

    #@73
    if-ne v6, v0, :cond_6

    #@75
    if-eqz v3, :cond_4

    #@77
    .line 636
    .end local v6    # "c":C
    :cond_6
    if-nez v7, :cond_7

    #@79
    if-gtz v11, :cond_0

    #@7b
    .line 640
    :cond_7
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->parseUnicodeIdentifier(Ljava/lang/String;[I)Ljava/lang/String;

    #@7e
    move-result-object v10

    #@7f
    .line 641
    .local v10, "spec":Ljava/lang/String;
    if-eqz v10, :cond_0

    #@81
    .line 648
    sparse-switch v7, :sswitch_data_0

    #@84
    .line 659
    :goto_2
    add-int/lit8 v11, v11, 0x1

    #@86
    .line 660
    const/4 v7, 0x0

    #@87
    .local v7, "delimiter":C
    goto :goto_0

    #@88
    .line 650
    .end local v7    # "delimiter":C
    :sswitch_0
    move-object v8, v10

    #@89
    .line 651
    .local v8, "first":Ljava/lang/String;
    goto :goto_2

    #@8a
    .line 653
    .end local v8    # "first":Ljava/lang/String;
    :sswitch_1
    move-object v2, v10

    #@8b
    .line 654
    .local v2, "target":Ljava/lang/String;
    goto :goto_2

    #@8c
    .line 656
    .end local v2    # "target":Ljava/lang/String;
    :sswitch_2
    move-object v3, v10

    #@8d
    .line 657
    .local v3, "variant":Ljava/lang/String;
    goto :goto_2

    #@8e
    .line 669
    .end local v3    # "variant":Ljava/lang/String;
    .end local v10    # "spec":Ljava/lang/String;
    :cond_8
    move-object v1, v8

    #@8f
    .local v1, "source":Ljava/lang/String;
    goto :goto_1

    #@90
    .line 680
    .end local v1    # "source":Ljava/lang/String;
    :cond_9
    const/4 v4, 0x1

    #@91
    .line 681
    .local v4, "sawSource":Z
    if-nez v1, :cond_a

    #@93
    .line 682
    const-string/jumbo v1, "Any"

    #@96
    .line 683
    .restart local v1    # "source":Ljava/lang/String;
    const/4 v4, 0x0

    #@97
    .line 685
    .end local v1    # "source":Ljava/lang/String;
    :cond_a
    if-nez v2, :cond_b

    #@99
    .line 686
    const-string/jumbo v2, "Any"

    #@9c
    .line 689
    :cond_b
    new-instance v0, Landroid/icu/text/TransliteratorIDParser$Specs;

    #@9e
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/TransliteratorIDParser$Specs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    #@a1
    return-object v0

    #@a2
    .line 648
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2d -> :sswitch_1
        0x2f -> :sswitch_2
    .end sparse-switch
.end method

.method public static parseGlobalFilter(Ljava/lang/String;[II[ILjava/lang/StringBuffer;)Landroid/icu/text/UnicodeSet;
    .locals 7
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "pos"    # [I
    .param p2, "dir"    # I
    .param p3, "withParens"    # [I
    .param p4, "canonID"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 269
    const/4 v1, 0x0

    #@1
    .line 270
    .local v1, "filter":Landroid/icu/text/UnicodeSet;
    const/4 v5, 0x0

    #@2
    aget v4, p1, v5

    #@4
    .line 272
    .local v4, "start":I
    const/4 v5, 0x0

    #@5
    aget v5, p3, v5

    #@7
    const/4 v6, -0x1

    #@8
    if-ne v5, v6, :cond_5

    #@a
    .line 273
    const/16 v5, 0x28

    #@c
    invoke-static {p0, p1, v5}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    #@f
    move-result v5

    #@10
    if-eqz v5, :cond_4

    #@12
    const/4 v5, 0x1

    #@13
    :goto_0
    const/4 v6, 0x0

    #@14
    aput v5, p3, v6

    #@16
    .line 281
    :cond_0
    const/4 v5, 0x0

    #@17
    aget v5, p1, v5

    #@19
    invoke-static {p0, v5}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    #@1c
    move-result v5

    #@1d
    const/4 v6, 0x0

    #@1e
    aput v5, p1, v6

    #@20
    .line 283
    const/4 v5, 0x0

    #@21
    aget v5, p1, v5

    #@23
    invoke-static {p0, v5}, Landroid/icu/text/UnicodeSet;->resemblesPattern(Ljava/lang/String;I)Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_3

    #@29
    .line 284
    new-instance v3, Ljava/text/ParsePosition;

    #@2b
    const/4 v5, 0x0

    #@2c
    aget v5, p1, v5

    #@2e
    invoke-direct {v3, v5}, Ljava/text/ParsePosition;-><init>(I)V

    #@31
    .line 286
    .local v3, "ppos":Ljava/text/ParsePosition;
    :try_start_0
    new-instance v1, Landroid/icu/text/UnicodeSet;

    #@33
    .end local v1    # "filter":Landroid/icu/text/UnicodeSet;
    const/4 v5, 0x0

    #@34
    invoke-direct {v1, p0, v3, v5}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    .line 292
    .local v1, "filter":Landroid/icu/text/UnicodeSet;
    const/4 v5, 0x0

    #@38
    aget v5, p1, v5

    #@3a
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    #@3d
    move-result v6

    #@3e
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    .line 293
    .local v2, "pattern":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    #@45
    move-result v5

    #@46
    const/4 v6, 0x0

    #@47
    aput v5, p1, v6

    #@49
    .line 295
    const/4 v5, 0x0

    #@4a
    aget v5, p3, v5

    #@4c
    const/4 v6, 0x1

    #@4d
    if-ne v5, v6, :cond_1

    #@4f
    const/16 v5, 0x29

    #@51
    invoke-static {p0, p1, v5}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    #@54
    move-result v5

    #@55
    if-eqz v5, :cond_6

    #@57
    .line 303
    :cond_1
    if-eqz p4, :cond_3

    #@59
    .line 304
    if-nez p2, :cond_7

    #@5b
    .line 305
    const/4 v5, 0x0

    #@5c
    aget v5, p3, v5

    #@5e
    const/4 v6, 0x1

    #@5f
    if-ne v5, v6, :cond_2

    #@61
    .line 306
    new-instance v5, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const/16 v6, 0x28

    #@68
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@6b
    move-result-object v6

    #@6c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v5

    #@74
    const/16 v6, 0x29

    #@76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v2

    #@7e
    .line 308
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v5

    #@87
    const/16 v6, 0x3b

    #@89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v5

    #@8d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v5

    #@91
    invoke-virtual {p4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@94
    .line 318
    .end local v1    # "filter":Landroid/icu/text/UnicodeSet;
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "ppos":Ljava/text/ParsePosition;
    :cond_3
    :goto_1
    return-object v1

    #@95
    .line 273
    .local v1, "filter":Landroid/icu/text/UnicodeSet;
    :cond_4
    const/4 v5, 0x0

    #@96
    goto/16 :goto_0

    #@98
    .line 274
    :cond_5
    const/4 v5, 0x0

    #@99
    aget v5, p3, v5

    #@9b
    const/4 v6, 0x1

    #@9c
    if-ne v5, v6, :cond_0

    #@9e
    .line 275
    const/16 v5, 0x28

    #@a0
    invoke-static {p0, p1, v5}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    #@a3
    move-result v5

    #@a4
    if-nez v5, :cond_0

    #@a6
    .line 276
    const/4 v5, 0x0

    #@a7
    aput v4, p1, v5

    #@a9
    .line 277
    const/4 v5, 0x0

    #@aa
    return-object v5

    #@ab
    .line 287
    .end local v1    # "filter":Landroid/icu/text/UnicodeSet;
    .restart local v3    # "ppos":Ljava/text/ParsePosition;
    :catch_0
    move-exception v0

    #@ac
    .line 288
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v5, 0x0

    #@ad
    aput v4, p1, v5

    #@af
    .line 289
    const/4 v5, 0x0

    #@b0
    return-object v5

    #@b1
    .line 296
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .local v1, "filter":Landroid/icu/text/UnicodeSet;
    .restart local v2    # "pattern":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    #@b2
    aput v4, p1, v5

    #@b4
    .line 297
    const/4 v5, 0x0

    #@b5
    return-object v5

    #@b6
    .line 310
    :cond_7
    const/4 v5, 0x0

    #@b7
    aget v5, p3, v5

    #@b9
    if-nez v5, :cond_8

    #@bb
    .line 311
    new-instance v5, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const/16 v6, 0x28

    #@c2
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@c5
    move-result-object v6

    #@c6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v5

    #@ca
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v5

    #@ce
    const/16 v6, 0x29

    #@d0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v5

    #@d4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v2

    #@d8
    .line 313
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v5

    #@e1
    const/16 v6, 0x3b

    #@e3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v5

    #@e7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v5

    #@eb
    const/4 v6, 0x0

    #@ec
    invoke-virtual {p4, v6, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@ef
    goto :goto_1
.end method

.method public static parseSingleID(Ljava/lang/String;[II)Landroid/icu/text/TransliteratorIDParser$SingleID;
    .locals 12
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "pos"    # [I
    .param p2, "dir"    # I

    #@0
    .prologue
    const/16 v11, 0x28

    #@2
    const/4 v10, 0x1

    #@3
    const/16 v9, 0x29

    #@5
    const/4 v7, 0x0

    #@6
    const/4 v8, 0x0

    #@7
    .line 178
    aget v5, p1, v8

    #@9
    .line 182
    .local v5, "start":I
    const/4 v3, 0x0

    #@a
    .line 183
    .local v3, "specsA":Landroid/icu/text/TransliteratorIDParser$Specs;
    const/4 v4, 0x0

    #@b
    .line 184
    .local v4, "specsB":Landroid/icu/text/TransliteratorIDParser$Specs;
    const/4 v1, 0x0

    #@c
    .line 188
    .local v1, "sawParen":Z
    const/4 v0, 0x1

    #@d
    .end local v3    # "specsA":Landroid/icu/text/TransliteratorIDParser$Specs;
    .local v0, "pass":I
    :goto_0
    const/4 v6, 0x2

    #@e
    if-gt v0, v6, :cond_1

    #@10
    .line 189
    const/4 v6, 0x2

    #@11
    if-ne v0, v6, :cond_0

    #@13
    .line 190
    invoke-static {p0, p1, v10}, Landroid/icu/text/TransliteratorIDParser;->parseFilterID(Ljava/lang/String;[IZ)Landroid/icu/text/TransliteratorIDParser$Specs;

    #@16
    move-result-object v3

    #@17
    .line 191
    .local v3, "specsA":Landroid/icu/text/TransliteratorIDParser$Specs;
    if-nez v3, :cond_0

    #@19
    .line 192
    aput v5, p1, v8

    #@1b
    .line 193
    return-object v7

    #@1c
    .line 196
    .end local v3    # "specsA":Landroid/icu/text/TransliteratorIDParser$Specs;
    :cond_0
    invoke-static {p0, p1, v11}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    #@1f
    move-result v6

    #@20
    if-eqz v6, :cond_4

    #@22
    .line 197
    const/4 v1, 0x1

    #@23
    .line 198
    invoke-static {p0, p1, v9}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    #@26
    move-result v6

    #@27
    if-nez v6, :cond_1

    #@29
    .line 199
    invoke-static {p0, p1, v10}, Landroid/icu/text/TransliteratorIDParser;->parseFilterID(Ljava/lang/String;[IZ)Landroid/icu/text/TransliteratorIDParser$Specs;

    #@2c
    move-result-object v4

    #@2d
    .line 201
    .local v4, "specsB":Landroid/icu/text/TransliteratorIDParser$Specs;
    if-eqz v4, :cond_3

    #@2f
    invoke-static {p0, p1, v9}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_3

    #@35
    .line 212
    .end local v4    # "specsB":Landroid/icu/text/TransliteratorIDParser$Specs;
    :cond_1
    if-eqz v1, :cond_6

    #@37
    .line 213
    if-nez p2, :cond_5

    #@39
    .line 214
    invoke-static {v3, v8}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    #@3c
    move-result-object v2

    #@3d
    .line 215
    .local v2, "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    new-instance v6, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    iget-object v7, v2, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    #@44
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v6

    #@48
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    .line 216
    invoke-static {v4, v8}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    #@4f
    move-result-object v7

    #@50
    iget-object v7, v7, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    #@52
    .line 215
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v6

    #@56
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@59
    move-result-object v6

    #@5a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    iput-object v6, v2, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    #@60
    .line 217
    if-eqz v3, :cond_2

    #@62
    .line 218
    iget-object v6, v3, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    #@64
    iput-object v6, v2, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    #@66
    .line 241
    :cond_2
    :goto_1
    return-object v2

    #@67
    .line 202
    .end local v2    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    .restart local v4    # "specsB":Landroid/icu/text/TransliteratorIDParser$Specs;
    :cond_3
    aput v5, p1, v8

    #@69
    .line 203
    return-object v7

    #@6a
    .line 188
    .local v4, "specsB":Landroid/icu/text/TransliteratorIDParser$Specs;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@6c
    goto :goto_0

    #@6d
    .line 221
    .end local v4    # "specsB":Landroid/icu/text/TransliteratorIDParser$Specs;
    :cond_5
    invoke-static {v4, v8}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    #@70
    move-result-object v2

    #@71
    .line 222
    .restart local v2    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    new-instance v6, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    iget-object v7, v2, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    #@78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v6

    #@7c
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v6

    #@80
    .line 223
    invoke-static {v3, v8}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    #@83
    move-result-object v7

    #@84
    iget-object v7, v7, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    #@86
    .line 222
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v6

    #@8a
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v6

    #@8e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v6

    #@92
    iput-object v6, v2, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    #@94
    .line 224
    if-eqz v4, :cond_2

    #@96
    .line 225
    iget-object v6, v4, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    #@98
    iput-object v6, v2, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    #@9a
    goto :goto_1

    #@9b
    .line 230
    .end local v2    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    :cond_6
    if-nez p2, :cond_8

    #@9d
    .line 231
    invoke-static {v3, v8}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    #@a0
    move-result-object v2

    #@a1
    .line 238
    .restart local v2    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    :cond_7
    :goto_2
    iget-object v6, v3, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    #@a3
    iput-object v6, v2, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    #@a5
    goto :goto_1

    #@a6
    .line 233
    .end local v2    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    :cond_8
    invoke-static {v3}, Landroid/icu/text/TransliteratorIDParser;->specsToSpecialInverse(Landroid/icu/text/TransliteratorIDParser$Specs;)Landroid/icu/text/TransliteratorIDParser$SingleID;

    #@a9
    move-result-object v2

    #@aa
    .line 234
    .restart local v2    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    if-nez v2, :cond_7

    #@ac
    .line 235
    invoke-static {v3, v10}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    #@af
    move-result-object v2

    #@b0
    goto :goto_2
.end method

.method public static registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "inverseTarget"    # Ljava/lang/String;
    .param p2, "bidirectional"    # Z

    #@0
    .prologue
    .line 562
    sget-object v0, Landroid/icu/text/TransliteratorIDParser;->SPECIAL_INVERSES:Ljava/util/Map;

    #@2
    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    #@4
    invoke-direct {v1, p0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@7
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 563
    if-eqz p2, :cond_0

    #@c
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 561
    :cond_0
    :goto_0
    return-void

    #@13
    .line 564
    :cond_1
    sget-object v0, Landroid/icu/text/TransliteratorIDParser;->SPECIAL_INVERSES:Ljava/util/Map;

    #@15
    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    #@17
    invoke-direct {v1, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@1a
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    goto :goto_0
.end method

.method private static specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;
    .locals 8
    .param p0, "specs"    # Landroid/icu/text/TransliteratorIDParser$Specs;
    .param p1, "dir"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/16 v6, 0x2d

    #@3
    .line 700
    const-string/jumbo v3, ""

    #@6
    .line 701
    .local v3, "canonID":Ljava/lang/String;
    const-string/jumbo v0, ""

    #@9
    .line 702
    .local v0, "basicID":Ljava/lang/String;
    const-string/jumbo v1, ""

    #@c
    .line 703
    .local v1, "basicPrefix":Ljava/lang/String;
    if-eqz p0, :cond_2

    #@e
    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    .line 705
    .local v2, "buf":Ljava/lang/StringBuilder;
    if-nez p1, :cond_4

    #@15
    .line 706
    iget-boolean v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->sawSource:Z

    #@17
    if-eqz v4, :cond_3

    #@19
    .line 707
    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->source:Ljava/lang/String;

    #@1b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    .line 711
    :goto_0
    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->target:Ljava/lang/String;

    #@24
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 715
    :goto_1
    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    #@29
    if-eqz v4, :cond_0

    #@2b
    .line 716
    const/16 v4, 0x2f

    #@2d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    iget-object v5, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 718
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    .line 719
    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    #@4d
    if-eqz v4, :cond_1

    #@4f
    .line 720
    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    #@51
    invoke-virtual {v2, v7, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    .line 722
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    .line 724
    .end local v2    # "buf":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v4, Landroid/icu/text/TransliteratorIDParser$SingleID;

    #@5a
    invoke-direct {v4, v3, v0}, Landroid/icu/text/TransliteratorIDParser$SingleID;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5d
    return-object v4

    #@5e
    .line 709
    .restart local v2    # "buf":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    iget-object v5, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->source:Ljava/lang/String;

    #@65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v4

    #@6d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    goto :goto_0

    #@72
    .line 713
    :cond_4
    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->target:Ljava/lang/String;

    #@74
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v4

    #@78
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    iget-object v5, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->source:Ljava/lang/String;

    #@7e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    goto :goto_1
.end method

.method private static specsToSpecialInverse(Landroid/icu/text/TransliteratorIDParser$Specs;)Landroid/icu/text/TransliteratorIDParser$SingleID;
    .locals 8
    .param p0, "specs"    # Landroid/icu/text/TransliteratorIDParser$Specs;

    #@0
    .prologue
    const/16 v7, 0x2f

    #@2
    const/4 v6, 0x0

    #@3
    .line 735
    iget-object v3, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->source:Ljava/lang/String;

    #@5
    const-string/jumbo v4, "Any"

    #@8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@b
    move-result v3

    #@c
    if-nez v3, :cond_0

    #@e
    .line 736
    return-object v6

    #@f
    .line 738
    :cond_0
    sget-object v3, Landroid/icu/text/TransliteratorIDParser;->SPECIAL_INVERSES:Ljava/util/Map;

    #@11
    new-instance v4, Landroid/icu/util/CaseInsensitiveString;

    #@13
    iget-object v5, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->target:Ljava/lang/String;

    #@15
    invoke-direct {v4, v5}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    #@18
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Ljava/lang/String;

    #@1e
    .line 739
    .local v2, "inverseTarget":Ljava/lang/String;
    if-eqz v2, :cond_4

    #@20
    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    .line 744
    .local v1, "buf":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 745
    iget-object v3, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    #@2b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 747
    :cond_1
    iget-boolean v3, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->sawSource:Z

    #@30
    if-eqz v3, :cond_2

    #@32
    .line 748
    const-string/jumbo v3, "Any"

    #@35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    const/16 v4, 0x2d

    #@3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3e
    .line 750
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 752
    new-instance v3, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v4, "Any-"

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    .line 754
    .local v0, "basicID":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    #@57
    if-eqz v3, :cond_3

    #@59
    .line 755
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    #@5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    .line 756
    new-instance v3, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    #@71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v0

    #@79
    .line 758
    :cond_3
    new-instance v3, Landroid/icu/text/TransliteratorIDParser$SingleID;

    #@7b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v4

    #@7f
    invoke-direct {v3, v4, v0}, Landroid/icu/text/TransliteratorIDParser$SingleID;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@82
    return-object v3

    #@83
    .line 760
    .end local v0    # "basicID":Ljava/lang/String;
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    :cond_4
    return-object v6
.end method
