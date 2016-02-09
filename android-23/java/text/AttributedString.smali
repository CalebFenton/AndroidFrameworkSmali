.class public Ljava/text/AttributedString;
.super Ljava/lang/Object;
.source "AttributedString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/AttributedString$Range;,
        Ljava/text/AttributedString$AttributedIterator;
    }
.end annotation


# instance fields
.field attributeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "Ljava/util/List",
            "<",
            "Ljava/text/AttributedString$Range;",
            ">;>;"
        }
    .end annotation
.end field

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 521
    if-nez p1, :cond_0

    #@5
    .line 522
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "value == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 524
    :cond_0
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@10
    .line 525
    new-instance v0, Ljava/util/HashMap;

    #@12
    const/16 v1, 0xb

    #@14
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@17
    iput-object v0, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    #@19
    .line 520
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    const/4 v6, 0x0

    #@1
    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 544
    if-nez p1, :cond_0

    #@6
    .line 545
    new-instance v3, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v4, "value == null"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 547
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@12
    move-result v3

    #@13
    if-nez v3, :cond_1

    #@15
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_2

    #@1b
    .line 550
    :cond_1
    iput-object p1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@1d
    .line 551
    new-instance v3, Ljava/util/HashMap;

    #@1f
    .line 552
    invoke-interface {p2}, Ljava/util/Map;->size()I

    #@22
    move-result v4

    #@23
    mul-int/lit8 v4, v4, 0x4

    #@25
    div-int/lit8 v4, v4, 0x3

    #@27
    add-int/lit8 v4, v4, 0x1

    #@29
    .line 551
    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    #@2c
    iput-object v3, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    #@2e
    .line 553
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@31
    move-result-object v3

    #@32
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object v1

    #@36
    .line 554
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v3

    #@3a
    if-eqz v3, :cond_3

    #@3c
    .line 555
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Ljava/util/Map$Entry;

    #@42
    .line 556
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    new-instance v2, Ljava/util/ArrayList;

    #@44
    const/4 v3, 0x1

    #@45
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@48
    .line 557
    .local v2, "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedString$Range;>;"
    new-instance v3, Ljava/text/AttributedString$Range;

    #@4a
    iget-object v4, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@4c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@4f
    move-result v4

    #@50
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@53
    move-result-object v5

    #@54
    invoke-direct {v3, v6, v4, v5}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    #@57
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5a
    .line 558
    iget-object v4, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    #@5c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@5f
    move-result-object v3

    #@60
    check-cast v3, Ljava/text/AttributedCharacterIterator$Attribute;

    #@62
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    goto :goto_0

    #@66
    .line 548
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/AttributedString$Range;>;"
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@68
    const-string/jumbo v4, "Cannot add attributes to empty string"

    #@6b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v3

    #@6f
    .line 543
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;)V
    .locals 10
    .param p1, "iterator"    # Ljava/text/AttributedCharacterIterator;

    #@0
    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 389
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    #@6
    move-result v8

    #@7
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    #@a
    move-result v9

    #@b
    if-le v8, v9, :cond_0

    #@d
    .line 390
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v9, "Invalid substring range"

    #@12
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v8

    #@16
    .line 392
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    .line 393
    .local v2, "buffer":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    #@1e
    move-result v3

    #@1f
    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    #@22
    move-result v8

    #@23
    if-ge v3, v8, :cond_1

    #@25
    .line 394
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    #@28
    move-result v8

    #@29
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c
    .line 395
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    #@2f
    .line 393
    add-int/lit8 v3, v3, 0x1

    #@31
    goto :goto_0

    #@32
    .line 397
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v8

    #@36
    iput-object v8, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@38
    .line 398
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    #@3b
    move-result-object v1

    #@3c
    .line 400
    .local v1, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    if-nez v1, :cond_2

    #@3e
    .line 401
    return-void

    #@3f
    .line 403
    :cond_2
    new-instance v8, Ljava/util/HashMap;

    #@41
    .line 404
    invoke-interface {v1}, Ljava/util/Set;->size()I

    #@44
    move-result v9

    #@45
    mul-int/lit8 v9, v9, 0x4

    #@47
    div-int/lit8 v9, v9, 0x3

    #@49
    add-int/lit8 v9, v9, 0x1

    #@4b
    .line 403
    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    #@4e
    iput-object v8, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    #@50
    .line 406
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@53
    move-result-object v4

    #@54
    .line 407
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@57
    move-result v8

    #@58
    if-eqz v8, :cond_5

    #@5a
    .line 408
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5d
    move-result-object v0

    #@5e
    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    #@60
    .line 409
    .local v0, "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    const/4 v8, 0x0

    #@61
    invoke-interface {p1, v8}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    #@64
    .line 410
    :goto_1
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    #@67
    move-result v8

    #@68
    const v9, 0xffff

    #@6b
    if-eq v8, v9, :cond_3

    #@6d
    .line 411
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    #@70
    move-result v6

    #@71
    .line 412
    .local v6, "start":I
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    #@74
    move-result v5

    #@75
    .line 413
    .local v5, "limit":I
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    #@78
    move-result-object v7

    #@79
    .line 414
    .local v7, "value":Ljava/lang/Object;
    if-eqz v7, :cond_4

    #@7b
    .line 415
    invoke-virtual {p0, v0, v7, v6, v5}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    #@7e
    .line 417
    :cond_4
    invoke-interface {p1, v5}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    #@81
    goto :goto_1

    #@82
    .line 388
    .end local v0    # "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v5    # "limit":I
    .end local v6    # "start":I
    .end local v7    # "value":Ljava/lang/Object;
    :cond_5
    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;II)V
    .locals 1
    .param p1, "iterator"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 482
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAllAttributeKeys()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;IILjava/util/Set;)V

    #@7
    .line 481
    return-void
.end method

.method private constructor <init>(Ljava/text/AttributedCharacterIterator;IILjava/util/Set;)V
    .locals 8
    .param p1, "iterator"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/AttributedCharacterIterator;",
            "II",
            "Ljava/util/Set",
            "<",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 422
    .local p4, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 424
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    #@6
    move-result v6

    #@7
    if-lt p2, v6, :cond_0

    #@9
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    #@c
    move-result v6

    #@d
    if-le p3, v6, :cond_1

    #@f
    .line 426
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@11
    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@14
    throw v6

    #@15
    .line 425
    :cond_1
    if-gt p2, p3, :cond_0

    #@17
    .line 429
    if-nez p4, :cond_2

    #@19
    .line 430
    return-void

    #@1a
    .line 433
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    .line 434
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-interface {p1, p2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    #@22
    .line 435
    :goto_0
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    #@25
    move-result v6

    #@26
    if-ge v6, p3, :cond_3

    #@28
    .line 436
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    #@2b
    move-result v6

    #@2c
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    .line 437
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    #@32
    goto :goto_0

    #@33
    .line 439
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    iput-object v6, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@39
    .line 440
    new-instance v6, Ljava/util/HashMap;

    #@3b
    .line 441
    invoke-interface {p4}, Ljava/util/Set;->size()I

    #@3e
    move-result v7

    #@3f
    mul-int/lit8 v7, v7, 0x4

    #@41
    div-int/lit8 v7, v7, 0x3

    #@43
    add-int/lit8 v7, v7, 0x1

    #@45
    .line 440
    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    #@48
    iput-object v6, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    #@4a
    .line 443
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@4d
    move-result-object v2

    #@4e
    .line 444
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/text/AttributedCharacterIterator$Attribute;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@51
    move-result v6

    #@52
    if-eqz v6, :cond_a

    #@54
    .line 445
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v0

    #@58
    check-cast v0, Ljava/text/AttributedCharacterIterator$Attribute;

    #@5a
    .line 446
    .local v0, "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    invoke-interface {p1, p2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    #@5d
    .line 447
    :goto_1
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getIndex()I

    #@60
    move-result v6

    #@61
    if-ge v6, p3, :cond_4

    #@63
    .line 448
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    #@66
    move-result-object v5

    #@67
    .line 449
    .local v5, "value":Ljava/lang/Object;
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    #@6a
    move-result v4

    #@6b
    .line 450
    .local v4, "runStart":I
    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    #@6e
    move-result v3

    #@6f
    .line 451
    .local v3, "limit":I
    instance-of v6, v5, Ljava/text/Annotation;

    #@71
    if-eqz v6, :cond_8

    #@73
    if-lt v4, p2, :cond_8

    #@75
    if-gt v3, p3, :cond_8

    #@77
    .line 453
    :cond_5
    if-ge v4, p2, :cond_6

    #@79
    move v4, p2

    #@7a
    .end local v4    # "runStart":I
    :cond_6
    sub-int v7, v4, p2

    #@7c
    .line 455
    if-le v3, p3, :cond_9

    #@7e
    move v6, p3

    #@7f
    :goto_2
    sub-int/2addr v6, p2

    #@80
    .line 453
    invoke-virtual {p0, v0, v5, v7, v6}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    #@83
    .line 457
    :cond_7
    :goto_3
    invoke-interface {p1, v3}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    #@86
    goto :goto_1

    #@87
    .line 452
    .restart local v4    # "runStart":I
    :cond_8
    if-eqz v5, :cond_7

    #@89
    instance-of v6, v5, Ljava/text/Annotation;

    #@8b
    if-eqz v6, :cond_5

    #@8d
    goto :goto_3

    #@8e
    .end local v4    # "runStart":I
    :cond_9
    move v6, v3

    #@8f
    .line 455
    goto :goto_2

    #@90
    .line 423
    .end local v0    # "attribute":Ljava/text/AttributedCharacterIterator$Attribute;
    .end local v3    # "limit":I
    .end local v5    # "value":Ljava/lang/Object;
    :cond_a
    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;II[Ljava/text/AttributedCharacterIterator$Attribute;)V
    .locals 2
    .param p1, "iterator"    # Ljava/text/AttributedCharacterIterator;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;

    #@0
    .prologue
    .line 509
    if-nez p4, :cond_0

    #@2
    .line 510
    new-instance v0, Ljava/util/HashSet;

    #@4
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@7
    .line 509
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/AttributedString;-><init>(Ljava/text/AttributedCharacterIterator;IILjava/util/Set;)V

    #@a
    .line 508
    return-void

    #@b
    .line 511
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    #@d
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@10
    move-result-object v1

    #@11
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@14
    goto :goto_0
.end method


# virtual methods
.method public addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V
    .locals 4
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 577
    if-nez p1, :cond_0

    #@2
    .line 578
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "attribute == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 580
    :cond_0
    iget-object v1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@d
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 581
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v2, "text is empty"

    #@18
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 584
    :cond_1
    iget-object v1, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    #@1e
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/util/List;

    #@24
    .line 585
    .local v0, "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    if-nez v0, :cond_2

    #@26
    .line 586
    new-instance v0, Ljava/util/ArrayList;

    #@28
    .end local v0    # "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    const/4 v1, 0x1

    #@29
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@2c
    .line 587
    .restart local v0    # "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    iget-object v1, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    #@2e
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 591
    :goto_0
    new-instance v1, Ljava/text/AttributedString$Range;

    #@33
    iget-object v2, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@35
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@38
    move-result v2

    #@39
    const/4 v3, 0x0

    #@3a
    invoke-direct {v1, v3, v2, p2}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    #@3d
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@40
    .line 576
    return-void

    #@41
    .line 589
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@44
    goto :goto_0
.end method

.method public addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V
    .locals 7
    .param p1, "attribute"    # Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    #@0
    .prologue
    .line 614
    if-nez p1, :cond_0

    #@2
    .line 615
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v6, "attribute == null"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 617
    :cond_0
    if-ltz p3, :cond_1

    #@d
    iget-object v5, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@12
    move-result v5

    #@13
    if-le p4, v5, :cond_2

    #@15
    .line 618
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@17
    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1a
    throw v5

    #@1b
    .line 617
    :cond_2
    if-ge p3, p4, :cond_1

    #@1d
    .line 621
    if-nez p2, :cond_3

    #@1f
    .line 622
    return-void

    #@20
    .line 625
    :cond_3
    iget-object v5, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    #@22
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    check-cast v4, Ljava/util/List;

    #@28
    .line 626
    .local v4, "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    if-nez v4, :cond_4

    #@2a
    .line 627
    new-instance v4, Ljava/util/ArrayList;

    #@2c
    .end local v4    # "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    const/4 v5, 0x1

    #@2d
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@30
    .line 628
    .restart local v4    # "ranges":Ljava/util/List;, "Ljava/util/List<Ljava/text/AttributedString$Range;>;"
    new-instance v5, Ljava/text/AttributedString$Range;

    #@32
    invoke-direct {v5, p3, p4, p2}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    #@35
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    .line 629
    iget-object v5, p0, Ljava/text/AttributedString;->attributeMap:Ljava/util/Map;

    #@3a
    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 630
    return-void

    #@3e
    .line 632
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    #@41
    move-result-object v0

    #@42
    .line 633
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/text/AttributedString$Range;>;"
    :cond_5
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@45
    move-result v5

    #@46
    if-eqz v5, :cond_6

    #@48
    .line 634
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@4b
    move-result-object v3

    #@4c
    check-cast v3, Ljava/text/AttributedString$Range;

    #@4e
    .line 635
    .local v3, "range":Ljava/text/AttributedString$Range;
    iget v5, v3, Ljava/text/AttributedString$Range;->start:I

    #@50
    if-gt p4, v5, :cond_7

    #@52
    .line 636
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@55
    .line 690
    .end local v3    # "range":Ljava/text/AttributedString$Range;
    :cond_6
    new-instance v5, Ljava/text/AttributedString$Range;

    #@57
    invoke-direct {v5, p3, p4, p2}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    #@5a
    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    #@5d
    .line 613
    return-void

    #@5e
    .line 638
    .restart local v3    # "range":Ljava/text/AttributedString$Range;
    :cond_7
    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    #@60
    if-lt p3, v5, :cond_8

    #@62
    .line 639
    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    #@64
    if-ne p3, v5, :cond_5

    #@66
    iget-object v5, v3, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    #@68
    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v5

    #@6c
    .line 638
    if-eqz v5, :cond_5

    #@6e
    .line 640
    :cond_8
    const/4 v1, 0x0

    #@6f
    .line 641
    .local v1, "r1":Ljava/text/AttributedString$Range;
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    #@72
    .line 642
    new-instance v1, Ljava/text/AttributedString$Range;

    #@74
    .end local v1    # "r1":Ljava/text/AttributedString$Range;
    iget v5, v3, Ljava/text/AttributedString$Range;->start:I

    #@76
    iget-object v6, v3, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    #@78
    invoke-direct {v1, v5, p3, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    #@7b
    .line 643
    .local v1, "r1":Ljava/text/AttributedString$Range;
    new-instance v2, Ljava/text/AttributedString$Range;

    #@7d
    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    #@7f
    iget-object v6, v3, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    #@81
    invoke-direct {v2, p4, v5, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    #@84
    .line 645
    .local v2, "r3":Ljava/text/AttributedString$Range;
    :cond_9
    :goto_0
    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    #@86
    if-le p4, v5, :cond_b

    #@88
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@8b
    move-result v5

    #@8c
    if-eqz v5, :cond_b

    #@8e
    .line 646
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@91
    move-result-object v3

    #@92
    .end local v3    # "range":Ljava/text/AttributedString$Range;
    check-cast v3, Ljava/text/AttributedString$Range;

    #@94
    .line 647
    .restart local v3    # "range":Ljava/text/AttributedString$Range;
    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    #@96
    if-gt p4, v5, :cond_f

    #@98
    .line 648
    iget v5, v3, Ljava/text/AttributedString$Range;->start:I

    #@9a
    if-gt p4, v5, :cond_a

    #@9c
    .line 649
    iget v5, v3, Ljava/text/AttributedString$Range;->start:I

    #@9e
    if-ne p4, v5, :cond_9

    #@a0
    iget-object v5, v3, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    #@a2
    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@a5
    move-result v5

    #@a6
    .line 648
    if-eqz v5, :cond_9

    #@a8
    .line 650
    :cond_a
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    #@ab
    .line 651
    new-instance v2, Ljava/text/AttributedString$Range;

    #@ad
    .end local v2    # "r3":Ljava/text/AttributedString$Range;
    iget v5, v3, Ljava/text/AttributedString$Range;->end:I

    #@af
    iget-object v6, v3, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    #@b1
    invoke-direct {v2, p4, v5, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    #@b4
    .line 659
    .restart local v2    # "r3":Ljava/text/AttributedString$Range;
    :cond_b
    iget-object v5, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    #@b6
    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b9
    move-result v5

    #@ba
    if-eqz v5, :cond_12

    #@bc
    .line 660
    iget-object v5, v2, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    #@be
    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@c1
    move-result v5

    #@c2
    if-eqz v5, :cond_10

    #@c4
    .line 661
    new-instance v5, Ljava/text/AttributedString$Range;

    #@c6
    iget v6, v1, Ljava/text/AttributedString$Range;->start:I

    #@c8
    if-ge v6, p3, :cond_c

    #@ca
    iget p3, v1, Ljava/text/AttributedString$Range;->start:I

    #@cc
    .line 662
    .end local p3    # "start":I
    :cond_c
    iget v6, v2, Ljava/text/AttributedString$Range;->end:I

    #@ce
    if-le v6, p4, :cond_d

    #@d0
    iget p4, v2, Ljava/text/AttributedString$Range;->end:I

    #@d2
    .end local p4    # "end":I
    :cond_d
    iget-object v6, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    #@d4
    .line 661
    invoke-direct {v5, p3, p4, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    #@d7
    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    #@da
    .line 687
    :cond_e
    :goto_1
    return-void

    #@db
    .line 655
    .restart local p3    # "start":I
    .restart local p4    # "end":I
    :cond_f
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    #@de
    goto :goto_0

    #@df
    .line 664
    :cond_10
    new-instance v5, Ljava/text/AttributedString$Range;

    #@e1
    iget v6, v1, Ljava/text/AttributedString$Range;->start:I

    #@e3
    if-ge v6, p3, :cond_11

    #@e5
    iget p3, v1, Ljava/text/AttributedString$Range;->start:I

    #@e7
    .line 665
    .end local p3    # "start":I
    :cond_11
    iget-object v6, v1, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    #@e9
    .line 664
    invoke-direct {v5, p3, p4, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    #@ec
    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    #@ef
    .line 666
    iget v5, v2, Ljava/text/AttributedString$Range;->start:I

    #@f1
    iget v6, v2, Ljava/text/AttributedString$Range;->end:I

    #@f3
    if-ge v5, v6, :cond_e

    #@f5
    .line 667
    invoke-interface {v0, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    #@f8
    goto :goto_1

    #@f9
    .line 671
    .restart local p3    # "start":I
    :cond_12
    iget-object v5, v2, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    #@fb
    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@fe
    move-result v5

    #@ff
    if-eqz v5, :cond_15

    #@101
    .line 672
    iget v5, v1, Ljava/text/AttributedString$Range;->start:I

    #@103
    iget v6, v1, Ljava/text/AttributedString$Range;->end:I

    #@105
    if-ge v5, v6, :cond_13

    #@107
    .line 673
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    #@10a
    .line 675
    :cond_13
    new-instance v5, Ljava/text/AttributedString$Range;

    #@10c
    iget v6, v2, Ljava/text/AttributedString$Range;->end:I

    #@10e
    if-le v6, p4, :cond_14

    #@110
    iget p4, v2, Ljava/text/AttributedString$Range;->end:I

    #@112
    .line 676
    .end local p4    # "end":I
    :cond_14
    iget-object v6, v2, Ljava/text/AttributedString$Range;->value:Ljava/lang/Object;

    #@114
    .line 675
    invoke-direct {v5, p3, p4, v6}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    #@117
    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    #@11a
    goto :goto_1

    #@11b
    .line 678
    .restart local p4    # "end":I
    :cond_15
    iget v5, v1, Ljava/text/AttributedString$Range;->start:I

    #@11d
    iget v6, v1, Ljava/text/AttributedString$Range;->end:I

    #@11f
    if-ge v5, v6, :cond_16

    #@121
    .line 679
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    #@124
    .line 681
    :cond_16
    new-instance v5, Ljava/text/AttributedString$Range;

    #@126
    invoke-direct {v5, p3, p4, p2}, Ljava/text/AttributedString$Range;-><init>(IILjava/lang/Object;)V

    #@129
    invoke-interface {v0, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    #@12c
    .line 682
    iget v5, v2, Ljava/text/AttributedString$Range;->start:I

    #@12e
    iget v6, v2, Ljava/text/AttributedString$Range;->end:I

    #@130
    if-ge v5, v6, :cond_e

    #@132
    .line 683
    invoke-interface {v0, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    #@135
    goto :goto_1
.end method

.method public addAttributes(Ljava/util/Map;II)V
    .locals 4
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/text/AttributedCharacterIterator$Attribute;",
            "*>;II)V"
        }
    .end annotation

    #@0
    .prologue
    .line 709
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<+Ljava/text/AttributedCharacterIterator$Attribute;*>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .line 710
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 711
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/util/Map$Entry;

    #@14
    .line 713
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Ljava/text/AttributedCharacterIterator$Attribute;

    #@1a
    .line 714
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    .line 712
    invoke-virtual {p0, v2, v3, p2, p3}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    #@21
    goto :goto_0

    #@22
    .line 708
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_0
    return-void
.end method

.method public getIterator()Ljava/text/AttributedCharacterIterator;
    .locals 1

    #@0
    .prologue
    .line 725
    new-instance v0, Ljava/text/AttributedString$AttributedIterator;

    #@2
    invoke-direct {v0, p0}, Ljava/text/AttributedString$AttributedIterator;-><init>(Ljava/text/AttributedString;)V

    #@5
    return-object v0
.end method

.method public getIterator([Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/text/AttributedCharacterIterator;
    .locals 3
    .param p1, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;

    #@0
    .prologue
    .line 741
    new-instance v0, Ljava/text/AttributedString$AttributedIterator;

    #@2
    iget-object v1, p0, Ljava/text/AttributedString;->text:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-direct {v0, p0, p1, v2, v1}, Ljava/text/AttributedString$AttributedIterator;-><init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V

    #@c
    return-object v0
.end method

.method public getIterator([Ljava/text/AttributedCharacterIterator$Attribute;II)Ljava/text/AttributedCharacterIterator;
    .locals 1
    .param p1, "attributes"    # [Ljava/text/AttributedCharacterIterator$Attribute;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 762
    new-instance v0, Ljava/text/AttributedString$AttributedIterator;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Ljava/text/AttributedString$AttributedIterator;-><init>(Ljava/text/AttributedString;[Ljava/text/AttributedCharacterIterator$Attribute;II)V

    #@5
    return-object v0
.end method
