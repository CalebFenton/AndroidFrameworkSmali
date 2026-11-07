.class Landroid/icu/text/TransliteratorIDParser;
.super Ljava/lang/Object;
.source "TransliteratorIDParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TransliteratorIDParser$Specs;,
        Landroid/icu/text/TransliteratorIDParser$SingleID;
    }
.end annotation


# static fields
.field private static final blacklist ANY:Ljava/lang/String; = "Any"

.field private static final blacklist CLOSE_REV:C = ')'

.field private static final blacklist FORWARD:I = 0x0

.field private static final blacklist ID_DELIM:C = ';'

.field private static final blacklist OPEN_REV:C = '('

.field private static final blacklist REVERSE:I = 0x1

.field private static final blacklist SPECIAL_INVERSES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/util/CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TARGET_SEP:C = '-'

.field private static final blacklist VARIANT_SEP:C = '/'


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/icu/text/TransliteratorIDParser;->SPECIAL_INVERSES:Ljava/util/Map;

    .line 67
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p0, "id"    # Ljava/lang/String;

    .line 469
    const-string v0, "Any"

    .line 470
    .local v0, "source":Ljava/lang/String;
    const/4 v1, 0x0

    .line 471
    .local v1, "target":Ljava/lang/String;
    const-string v2, ""

    .line 473
    .local v2, "variant":Ljava/lang/String;
    const/16 v3, 0x2d

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 474
    .local v3, "sep":I
    const/16 v4, 0x2f

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 475
    .local v4, "var":I
    if-gez v4, :cond_17

    .line 476
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 478
    :cond_17
    const/4 v5, 0x0

    .line 480
    .local v5, "isSourcePresent":Z
    const/4 v6, 0x0

    if-gez v3, :cond_24

    .line 482
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4a

    .line 484
    :cond_24
    if-ge v3, v4, :cond_38

    .line 486
    if-lez v3, :cond_2d

    .line 487
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 488
    const/4 v5, 0x1

    .line 490
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 491
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4a

    .line 494
    :cond_38
    if-lez v4, :cond_3f

    .line 495
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 496
    const/4 v5, 0x1

    .line 498
    :cond_3f
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "sep":I
    .local v6, "sep":I
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 499
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move v3, v6

    .line 502
    .end local v6    # "sep":I
    .restart local v3    # "sep":I
    :goto_4a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_55

    .line 503
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 506
    :cond_55
    nop

    .line 507
    if-eqz v5, :cond_5b

    const-string v6, ""

    goto :goto_5c

    :cond_5b
    const/4 v6, 0x0

    :goto_5c
    filled-new-array {v0, v1, v2, v6}, [Ljava/lang/String;

    move-result-object v6

    .line 506
    return-object v6
.end method

.method public static blacklist STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "variant"    # Ljava/lang/String;

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    .local v0, "id":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_10

    .line 520
    const-string v1, "Any"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_10
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 524
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static blacklist instantiateList(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/text/TransliteratorIDParser$SingleID;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/icu/text/Transliterator;",
            ">;"
        }
    .end annotation

    .line 433
    .local p0, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/TransliteratorIDParser$SingleID;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v0, "translits":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/Transliterator;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/TransliteratorIDParser$SingleID;

    .line 435
    .local v2, "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    iget-object v3, v2, Landroid/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1e

    .line 436
    goto :goto_9

    .line 438
    :cond_1e
    invoke-virtual {v2}, Landroid/icu/text/TransliteratorIDParser$SingleID;->getInstance()Landroid/icu/text/Transliterator;

    move-result-object v3

    .line 439
    .local v3, "t":Landroid/icu/text/Transliterator;
    if-eqz v3, :cond_28

    .line 442
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    .end local v2    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    goto :goto_9

    .line 440
    .restart local v2    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 446
    .end local v2    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    .end local v3    # "t":Landroid/icu/text/Transliterator;
    :cond_43
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5e

    .line 447
    const-string v1, "Any-Null"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/icu/text/Transliterator;->getBasicInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v1

    .line 448
    .local v1, "t":Landroid/icu/text/Transliterator;
    if-eqz v1, :cond_56

    .line 452
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 450
    :cond_56
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Internal error; cannot instantiate Any-Null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 454
    .end local v1    # "t":Landroid/icu/text/Transliterator;
    :cond_5e
    :goto_5e
    return-object v0
.end method

.method public static blacklist parseCompoundID(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;[Landroid/icu/text/UnicodeSet;)Z
    .registers 15
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
            "Ljava/util/List<",
            "Landroid/icu/text/TransliteratorIDParser$SingleID;",
            ">;[",
            "Landroid/icu/text/UnicodeSet;",
            ")Z"
        }
    .end annotation

    .line 349
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/TransliteratorIDParser$SingleID;>;"
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    .line 350
    .local v1, "pos":[I
    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 351
    .local v3, "withParens":[I
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 353
    const/4 v4, 0x0

    aput-object v4, p4, v0

    .line 354
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 357
    aput v0, v3, v0

    .line 358
    invoke-static {p0, v1, p1, v3, p2}, Landroid/icu/text/TransliteratorIDParser;->parseGlobalFilter(Ljava/lang/String;[II[ILjava/lang/StringBuffer;)Landroid/icu/text/UnicodeSet;

    move-result-object v4

    .line 359
    .local v4, "filter":Landroid/icu/text/UnicodeSet;
    const/16 v5, 0x3b

    if-eqz v4, :cond_2a

    .line 360
    invoke-static {p0, v1, v5}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v6

    if-nez v6, :cond_26

    .line 362
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 363
    aput v0, v1, v0

    .line 365
    :cond_26
    if-nez p1, :cond_2a

    .line 366
    aput-object v4, p4, v0

    .line 370
    :cond_2a
    const/4 v6, 0x1

    .line 372
    .local v6, "sawDelimiter":Z
    :goto_2b
    invoke-static {p0, v1, p1}, Landroid/icu/text/TransliteratorIDParser;->parseSingleID(Ljava/lang/String;[II)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v7

    .line 373
    .local v7, "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    if-nez v7, :cond_32

    .line 374
    goto :goto_43

    .line 376
    :cond_32
    if-nez p1, :cond_38

    .line 377
    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 379
    :cond_38
    invoke-interface {p3, v0, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 381
    :goto_3b
    invoke-static {p0, v1, v5}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v8

    if-nez v8, :cond_8c

    .line 382
    const/4 v6, 0x0

    .line 383
    nop

    .line 387
    .end local v7    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    :goto_43
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4a

    .line 388
    return v0

    .line 392
    :cond_4a
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4b
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_69

    .line 393
    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/icu/text/TransliteratorIDParser$SingleID;

    .line 394
    .local v8, "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    iget-object v9, v8, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v2

    if-eq v7, v9, :cond_66

    .line 396
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 392
    .end local v8    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    :cond_66
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b

    .line 402
    .end local v7    # "i":I
    :cond_69
    if-eqz v6, :cond_7a

    .line 403
    aput v2, v3, v0

    .line 404
    invoke-static {p0, v1, p1, v3, p2}, Landroid/icu/text/TransliteratorIDParser;->parseGlobalFilter(Ljava/lang/String;[II[ILjava/lang/StringBuffer;)Landroid/icu/text/UnicodeSet;

    move-result-object v4

    .line 405
    if-eqz v4, :cond_7a

    .line 407
    invoke-static {p0, v1, v5}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    .line 409
    if-ne p1, v2, :cond_7a

    .line 410
    aput-object v4, p4, v0

    .line 416
    :cond_7a
    aget v5, v1, v0

    invoke-static {p0, v5}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v5

    aput v5, v1, v0

    .line 417
    aget v5, v1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v5, v7, :cond_8b

    .line 418
    return v0

    .line 421
    :cond_8b
    return v2

    .line 385
    :cond_8c
    goto :goto_2b
.end method

.method public static blacklist parseFilterID(Ljava/lang/String;[I)Landroid/icu/text/TransliteratorIDParser$SingleID;
    .registers 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "pos"    # [I

    .line 153
    const/4 v0, 0x0

    aget v1, p1, v0

    .line 154
    .local v1, "start":I
    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Landroid/icu/text/TransliteratorIDParser;->parseFilterID(Ljava/lang/String;[IZ)Landroid/icu/text/TransliteratorIDParser$Specs;

    move-result-object v2

    .line 155
    .local v2, "specs":Landroid/icu/text/TransliteratorIDParser$Specs;
    if-nez v2, :cond_e

    .line 156
    aput v1, p1, v0

    .line 157
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_e
    invoke-static {v2, v0}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v0

    .line 162
    .local v0, "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    iget-object v3, v2, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    iput-object v3, v0, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    .line 163
    return-object v0
.end method

.method private static blacklist parseFilterID(Ljava/lang/String;[IZ)Landroid/icu/text/TransliteratorIDParser$Specs;
    .registers 19
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "pos"    # [I
    .param p2, "allowFilter"    # Z

    .line 595
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 596
    .local v1, "first":Ljava/lang/String;
    const/4 v2, 0x0

    .line 597
    .local v2, "source":Ljava/lang/String;
    const/4 v3, 0x0

    .line 598
    .local v3, "target":Ljava/lang/String;
    const/4 v4, 0x0

    .line 599
    .local v4, "variant":Ljava/lang/String;
    const/4 v5, 0x0

    .line 600
    .local v5, "filter":Ljava/lang/String;
    const/4 v6, 0x0

    .line 601
    .local v6, "delimiter":C
    const/4 v7, 0x0

    .line 602
    .local v7, "specCount":I
    const/4 v8, 0x0

    aget v9, p1, v8

    move-object v13, v4

    move-object v15, v5

    .line 608
    .end local v4    # "variant":Ljava/lang/String;
    .end local v5    # "filter":Ljava/lang/String;
    .local v9, "start":I
    .local v13, "variant":Ljava/lang/String;
    .local v15, "filter":Ljava/lang/String;
    :goto_e
    aget v4, p1, v8

    invoke-static {v0, v4}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v4

    aput v4, p1, v8

    .line 609
    aget v4, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v10, 0x0

    if-ne v4, v5, :cond_20

    .line 610
    goto :goto_71

    .line 614
    :cond_20
    if-eqz p2, :cond_49

    if-nez v15, :cond_49

    aget v4, p1, v8

    .line 615
    invoke-static {v0, v4}, Landroid/icu/text/UnicodeSet;->resemblesPattern(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 617
    new-instance v4, Ljava/text/ParsePosition;

    aget v5, p1, v8

    invoke-direct {v4, v5}, Ljava/text/ParsePosition;-><init>(I)V

    .line 619
    .local v4, "ppos":Ljava/text/ParsePosition;
    new-instance v5, Landroid/icu/text/UnicodeSet;

    invoke-direct {v5, v0, v4, v10}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)V

    .line 620
    aget v5, p1, v8

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    invoke-virtual {v0, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 621
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    aput v5, p1, v8

    .line 622
    goto :goto_e

    .line 625
    .end local v4    # "ppos":Ljava/text/ParsePosition;
    :cond_49
    if-nez v6, :cond_65

    .line 626
    aget v4, p1, v8

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 627
    .local v4, "c":C
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_57

    if-eqz v3, :cond_5d

    :cond_57
    const/16 v5, 0x2f

    if-ne v4, v5, :cond_65

    if-nez v13, :cond_65

    .line 629
    :cond_5d
    move v6, v4

    .line 630
    aget v5, p1, v8

    add-int/lit8 v5, v5, 0x1

    aput v5, p1, v8

    .line 631
    goto :goto_e

    .line 638
    .end local v4    # "c":C
    :cond_65
    if-nez v6, :cond_6a

    if-lez v7, :cond_6a

    .line 639
    goto :goto_71

    .line 642
    :cond_6a
    invoke-static/range {p0 .. p1}, Landroid/icu/impl/Utility;->parseUnicodeIdentifier(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v4

    .line 643
    .local v4, "spec":Ljava/lang/String;
    if-nez v4, :cond_97

    .line 647
    nop

    .line 667
    .end local v4    # "spec":Ljava/lang/String;
    :goto_71
    if-eqz v1, :cond_78

    .line 668
    if-nez v3, :cond_77

    .line 669
    move-object v3, v1

    goto :goto_78

    .line 671
    :cond_77
    move-object v2, v1

    .line 676
    :cond_78
    :goto_78
    if-nez v2, :cond_7f

    if-nez v3, :cond_7f

    .line 677
    aput v9, p1, v8

    .line 678
    return-object v10

    .line 682
    :cond_7f
    const/4 v4, 0x1

    .line 683
    .local v4, "sawSource":Z
    if-nez v2, :cond_88

    .line 684
    const-string v2, "Any"

    .line 685
    const/4 v4, 0x0

    move-object v11, v2

    move v14, v4

    goto :goto_8a

    .line 683
    :cond_88
    move-object v11, v2

    move v14, v4

    .line 687
    .end local v2    # "source":Ljava/lang/String;
    .end local v4    # "sawSource":Z
    .local v11, "source":Ljava/lang/String;
    .local v14, "sawSource":Z
    :goto_8a
    if-nez v3, :cond_90

    .line 688
    const-string v3, "Any"

    move-object v12, v3

    goto :goto_91

    .line 687
    :cond_90
    move-object v12, v3

    .line 691
    .end local v3    # "target":Ljava/lang/String;
    .local v12, "target":Ljava/lang/String;
    :goto_91
    new-instance v10, Landroid/icu/text/TransliteratorIDParser$Specs;

    invoke-direct/range {v10 .. v15}, Landroid/icu/text/TransliteratorIDParser$Specs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v10

    .line 650
    .end local v11    # "source":Ljava/lang/String;
    .end local v12    # "target":Ljava/lang/String;
    .end local v14    # "sawSource":Z
    .restart local v2    # "source":Ljava/lang/String;
    .restart local v3    # "target":Ljava/lang/String;
    .local v4, "spec":Ljava/lang/String;
    :cond_97
    sparse-switch v6, :sswitch_data_a8

    goto :goto_a2

    .line 658
    :sswitch_9b
    move-object v5, v4

    move-object v13, v5

    .end local v13    # "variant":Ljava/lang/String;
    .local v5, "variant":Ljava/lang/String;
    goto :goto_a2

    .line 655
    .end local v5    # "variant":Ljava/lang/String;
    .restart local v13    # "variant":Ljava/lang/String;
    :sswitch_9e
    move-object v3, v4

    .line 656
    goto :goto_a2

    .line 652
    :sswitch_a0
    move-object v1, v4

    .line 653
    nop

    .line 661
    :goto_a2
    add-int/lit8 v7, v7, 0x1

    .line 662
    const/4 v6, 0x0

    .line 663
    .end local v4    # "spec":Ljava/lang/String;
    goto/16 :goto_e

    nop

    :sswitch_data_a8
    .sparse-switch
        0x0 -> :sswitch_a0
        0x2d -> :sswitch_9e
        0x2f -> :sswitch_9b
    .end sparse-switch
.end method

.method public static blacklist parseGlobalFilter(Ljava/lang/String;[II[ILjava/lang/StringBuffer;)Landroid/icu/text/UnicodeSet;
    .registers 15
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "pos"    # [I
    .param p2, "dir"    # I
    .param p3, "withParens"    # [I
    .param p4, "canonID"    # Ljava/lang/StringBuffer;

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "filter":Landroid/icu/text/UnicodeSet;
    const/4 v1, 0x0

    aget v2, p1, v1

    .line 274
    .local v2, "start":I
    aget v3, p3, v1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x28

    if-ne v3, v4, :cond_14

    .line 275
    invoke-static {p0, p1, v7}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v3

    aput v3, p3, v1

    goto :goto_21

    .line 276
    :cond_14
    aget v3, p3, v1

    if-ne v3, v5, :cond_21

    .line 277
    invoke-static {p0, p1, v7}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v3

    if-nez v3, :cond_21

    .line 278
    aput v2, p1, v1

    .line 279
    return-object v6

    .line 283
    :cond_21
    :goto_21
    aget v3, p1, v1

    invoke-static {p0, v3}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v3

    aput v3, p1, v1

    .line 285
    aget v3, p1, v1

    invoke-static {p0, v3}, Landroid/icu/text/UnicodeSet;->resemblesPattern(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 286
    new-instance v3, Ljava/text/ParsePosition;

    aget v4, p1, v1

    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 288
    .local v3, "ppos":Ljava/text/ParsePosition;
    :try_start_38
    new-instance v4, Landroid/icu/text/UnicodeSet;

    invoke-direct {v4, p0, v3, v6}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)V
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_3d} :catch_c8

    move-object v0, v4

    .line 292
    nop

    .line 294
    aget v4, p1, v1

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    invoke-virtual {p0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "pattern":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    aput v8, p1, v1

    .line 297
    aget v8, p3, v1

    const/16 v9, 0x29

    if-ne v8, v5, :cond_5e

    invoke-static {p0, p1, v9}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v8

    if-nez v8, :cond_5e

    .line 298
    aput v2, p1, v1

    .line 299
    return-object v6

    .line 305
    :cond_5e
    if-eqz p4, :cond_cc

    .line 306
    const/16 v6, 0x3b

    if-nez p2, :cond_96

    .line 307
    aget v1, p3, v1

    if-ne v1, v5, :cond_81

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 310
    :cond_81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_cc

    .line 312
    :cond_96
    aget v5, p3, v1

    if-nez v5, :cond_b3

    .line 313
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 315
    :cond_b3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v1, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_cc

    .line 289
    .end local v4    # "pattern":Ljava/lang/String;
    :catch_c8
    move-exception v4

    .line 290
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    aput v2, p1, v1

    .line 291
    return-object v6

    .line 320
    .end local v3    # "ppos":Ljava/text/ParsePosition;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_cc
    :goto_cc
    return-object v0
.end method

.method public static blacklist parseSingleID(Ljava/lang/String;[II)Landroid/icu/text/TransliteratorIDParser$SingleID;
    .registers 14
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "pos"    # [I
    .param p2, "dir"    # I

    .line 180
    const/4 v0, 0x0

    aget v1, p1, v0

    .line 184
    .local v1, "start":I
    const/4 v2, 0x0

    .line 185
    .local v2, "specsA":Landroid/icu/text/TransliteratorIDParser$Specs;
    const/4 v3, 0x0

    .line 186
    .local v3, "specsB":Landroid/icu/text/TransliteratorIDParser$Specs;
    const/4 v4, 0x0

    .line 190
    .local v4, "sawParen":Z
    const/4 v5, 0x1

    .local v5, "pass":I
    :goto_7
    const/4 v6, 0x2

    const/16 v7, 0x28

    const/16 v8, 0x29

    const/4 v9, 0x1

    if-gt v5, v6, :cond_3a

    .line 191
    const/4 v10, 0x0

    if-ne v5, v6, :cond_1b

    .line 192
    invoke-static {p0, p1, v9}, Landroid/icu/text/TransliteratorIDParser;->parseFilterID(Ljava/lang/String;[IZ)Landroid/icu/text/TransliteratorIDParser$Specs;

    move-result-object v2

    .line 193
    if-nez v2, :cond_1b

    .line 194
    aput v1, p1, v0

    .line 195
    return-object v10

    .line 198
    :cond_1b
    invoke-static {p0, p1, v7}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 199
    const/4 v4, 0x1

    .line 200
    invoke-static {p0, p1, v8}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 201
    invoke-static {p0, p1, v9}, Landroid/icu/text/TransliteratorIDParser;->parseFilterID(Ljava/lang/String;[IZ)Landroid/icu/text/TransliteratorIDParser$Specs;

    move-result-object v3

    .line 203
    if-eqz v3, :cond_34

    invoke-static {p0, p1, v8}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 204
    :cond_34
    aput v1, p1, v0

    .line 205
    return-object v10

    .line 190
    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 214
    .end local v5    # "pass":I
    :cond_3a
    if-eqz v4, :cond_9a

    .line 215
    if-nez p2, :cond_6c

    .line 216
    invoke-static {v2, v0}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v5

    .line 217
    .local v5, "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 218
    invoke-static {v3, v0}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    .line 219
    if-eqz v2, :cond_b3

    .line 220
    iget-object v0, v2, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    iput-object v0, v5, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    goto :goto_b3

    .line 223
    .end local v5    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    :cond_6c
    invoke-static {v3, v0}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v5

    .line 224
    .restart local v5    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 225
    invoke-static {v2, v0}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    .line 226
    if-eqz v3, :cond_b3

    .line 227
    iget-object v0, v3, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    iput-object v0, v5, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    goto :goto_b3

    .line 232
    .end local v5    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    :cond_9a
    if-nez p2, :cond_a2

    .line 233
    invoke-static {v2, v0}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v0

    move-object v5, v0

    .local v0, "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    goto :goto_af

    .line 235
    .end local v0    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    :cond_a2
    invoke-static {v2}, Landroid/icu/text/TransliteratorIDParser;->specsToSpecialInverse(Landroid/icu/text/TransliteratorIDParser$Specs;)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v0

    .line 236
    .restart local v0    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    if-nez v0, :cond_ae

    .line 237
    invoke-static {v2, v9}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v0

    move-object v5, v0

    goto :goto_af

    .line 236
    :cond_ae
    move-object v5, v0

    .line 240
    .end local v0    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    .restart local v5    # "single":Landroid/icu/text/TransliteratorIDParser$SingleID;
    :goto_af
    iget-object v0, v2, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    iput-object v0, v5, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    .line 243
    :cond_b3
    :goto_b3
    return-object v5
.end method

.method public static blacklist registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "inverseTarget"    # Ljava/lang/String;
    .param p2, "bidirectional"    # Z

    .line 564
    sget-object v0, Landroid/icu/text/TransliteratorIDParser;->SPECIAL_INVERSES:Ljava/util/Map;

    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v1, p0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    if-eqz p2, :cond_1c

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 566
    sget-object v0, Landroid/icu/text/TransliteratorIDParser;->SPECIAL_INVERSES:Ljava/util/Map;

    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v1, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    :cond_1c
    return-void
.end method

.method private static blacklist specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;
    .registers 9
    .param p0, "specs"    # Landroid/icu/text/TransliteratorIDParser$Specs;
    .param p1, "dir"    # I

    .line 702
    const-string v0, ""

    .line 703
    .local v0, "canonID":Ljava/lang/String;
    const-string v1, ""

    .line 704
    .local v1, "basicID":Ljava/lang/String;
    const-string v2, ""

    .line 705
    .local v2, "basicPrefix":Ljava/lang/String;
    if-eqz p0, :cond_79

    .line 706
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    .local v3, "buf":Ljava/lang/StringBuilder;
    const/16 v4, 0x2d

    if-nez p1, :cond_38

    .line 708
    iget-boolean v5, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->sawSource:Z

    if-eqz v5, :cond_1f

    .line 709
    iget-object v5, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->source:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 711
    :cond_1f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->source:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 713
    :goto_32
    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->target:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 715
    :cond_38
    iget-object v5, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->target:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->source:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    :goto_47
    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    if-eqz v4, :cond_56

    .line 718
    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    :cond_56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 721
    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    if-eqz v4, :cond_75

    .line 722
    const/4 v4, 0x0

    iget-object v5, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    :cond_75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    :cond_79
    new-instance v3, Landroid/icu/text/TransliteratorIDParser$SingleID;

    invoke-direct {v3, v0, v1}, Landroid/icu/text/TransliteratorIDParser$SingleID;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static blacklist specsToSpecialInverse(Landroid/icu/text/TransliteratorIDParser$Specs;)Landroid/icu/text/TransliteratorIDParser$SingleID;
    .registers 7
    .param p0, "specs"    # Landroid/icu/text/TransliteratorIDParser$Specs;

    .line 737
    iget-object v0, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->source:Ljava/lang/String;

    const-string v1, "Any"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_c

    .line 738
    return-object v2

    .line 740
    :cond_c
    sget-object v0, Landroid/icu/text/TransliteratorIDParser;->SPECIAL_INVERSES:Ljava/util/Map;

    new-instance v3, Landroid/icu/util/CaseInsensitiveString;

    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->target:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 741
    .local v0, "inverseTarget":Ljava/lang/String;
    if-eqz v0, :cond_7e

    .line 745
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    .local v2, "buf":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    if-eqz v3, :cond_2b

    .line 747
    iget-object v3, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    :cond_2b
    iget-boolean v3, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->sawSource:Z

    if-eqz v3, :cond_38

    .line 750
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 752
    :cond_38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Any-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 756
    .local v1, "basicID":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    if-eqz v3, :cond_74

    .line 757
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 760
    :cond_74
    new-instance v3, Landroid/icu/text/TransliteratorIDParser$SingleID;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/icu/text/TransliteratorIDParser$SingleID;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 762
    .end local v1    # "basicID":Ljava/lang/String;
    .end local v2    # "buf":Ljava/lang/StringBuilder;
    :cond_7e
    return-object v2
.end method
