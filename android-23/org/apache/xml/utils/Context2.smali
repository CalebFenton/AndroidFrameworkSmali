.class final Lorg/apache/xml/utils/Context2;
.super Ljava/lang/Object;
.source "NamespaceSupport2.java"


# static fields
.field private static final EMPTY_ENUMERATION:Ljava/util/Enumeration;


# instance fields
.field attributeNameTable:Ljava/util/Hashtable;

.field private child:Lorg/apache/xml/utils/Context2;

.field private declarations:Ljava/util/Vector;

.field defaultNS:Ljava/lang/String;

.field elementNameTable:Ljava/util/Hashtable;

.field private parent:Lorg/apache/xml/utils/Context2;

.field prefixTable:Ljava/util/Hashtable;

.field private tablesDirty:Z

.field uriTable:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 451
    new-instance v0, Ljava/util/Vector;

    #@2
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@8
    move-result-object v0

    #@9
    .line 450
    sput-object v0, Lorg/apache/xml/utils/Context2;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    #@b
    .line 441
    return-void
.end method

.method constructor <init>(Lorg/apache/xml/utils/Context2;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/xml/utils/Context2;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 461
    iput-object v1, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    #@6
    .line 467
    iput-object v1, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    #@8
    .line 468
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Lorg/apache/xml/utils/Context2;->tablesDirty:Z

    #@b
    .line 469
    iput-object v1, p0, Lorg/apache/xml/utils/Context2;->parent:Lorg/apache/xml/utils/Context2;

    #@d
    .line 470
    iput-object v1, p0, Lorg/apache/xml/utils/Context2;->child:Lorg/apache/xml/utils/Context2;

    #@f
    .line 477
    if-nez p1, :cond_0

    #@11
    .line 479
    new-instance v0, Ljava/util/Hashtable;

    #@13
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@16
    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    #@18
    .line 480
    new-instance v0, Ljava/util/Hashtable;

    #@1a
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@1d
    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    #@1f
    .line 481
    iput-object v1, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    #@21
    .line 482
    iput-object v1, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    #@23
    .line 475
    :goto_0
    return-void

    #@24
    .line 485
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/Context2;->setParent(Lorg/apache/xml/utils/Context2;)V

    #@27
    goto :goto_0
.end method

.method private copyTables()V
    .locals 1

    #@0
    .prologue
    .line 731
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/Hashtable;

    #@8
    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    #@a
    .line 732
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    #@c
    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/util/Hashtable;

    #@12
    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    #@14
    .line 739
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 740
    new-instance v0, Ljava/util/Hashtable;

    #@1a
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@1d
    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    #@1f
    .line 741
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    #@21
    if-eqz v0, :cond_1

    #@23
    .line 742
    new-instance v0, Ljava/util/Hashtable;

    #@25
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@28
    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    #@2a
    .line 743
    :cond_1
    const/4 v0, 0x1

    #@2b
    iput-boolean v0, p0, Lorg/apache/xml/utils/Context2;->tablesDirty:Z

    #@2d
    .line 728
    return-void
.end method


# virtual methods
.method declarePrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 538
    iget-boolean v0, p0, Lorg/apache/xml/utils/Context2;->tablesDirty:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 539
    invoke-direct {p0}, Lorg/apache/xml/utils/Context2;->copyTables()V

    #@8
    .line 541
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 542
    new-instance v0, Ljava/util/Vector;

    #@e
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@11
    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    #@13
    .line 545
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@16
    move-result-object p1

    #@17
    .line 546
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@1a
    move-result-object p2

    #@1b
    .line 547
    const-string/jumbo v0, ""

    #@1e
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_3

    #@24
    .line 548
    const-string/jumbo v0, ""

    #@27
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_2

    #@2d
    .line 549
    iput-object v1, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    #@2f
    .line 557
    :goto_0
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    #@31
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@34
    .line 535
    return-void

    #@35
    .line 551
    :cond_2
    iput-object p2, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    #@37
    goto :goto_0

    #@38
    .line 554
    :cond_3
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    #@3a
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 555
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    #@3f
    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@42
    goto :goto_0
.end method

.method getChild()Lorg/apache/xml/utils/Context2;
    .locals 1

    #@0
    .prologue
    .line 495
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->child:Lorg/apache/xml/utils/Context2;

    #@2
    return-object v0
.end method

.method getDeclaredPrefixes()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 686
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 687
    sget-object v0, Lorg/apache/xml/utils/Context2;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    #@6
    return-object v0

    #@7
    .line 689
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    #@9
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method getParent()Lorg/apache/xml/utils/Context2;
    .locals 1

    #@0
    .prologue
    .line 504
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->parent:Lorg/apache/xml/utils/Context2;

    #@2
    return-object v0
.end method

.method getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 670
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 671
    return-object v1

    #@6
    .line 673
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/String;

    #@e
    return-object v0
.end method

.method getPrefixes()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 705
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 706
    sget-object v0, Lorg/apache/xml/utils/Context2;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    #@6
    return-object v0

    #@7
    .line 708
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    #@9
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 648
    const-string/jumbo v0, ""

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 649
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    #@c
    return-object v0

    #@d
    .line 650
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 651
    return-object v1

    #@12
    .line 653
    :cond_1
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    #@14
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/lang/String;

    #@1a
    return-object v0
.end method

.method processName(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 11
    .param p1, "qName"    # Ljava/lang/String;
    .param p2, "isAttribute"    # Z

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v7, 0x0

    #@4
    .line 578
    if-eqz p2, :cond_1

    #@6
    .line 579
    iget-object v6, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    #@8
    if-nez v6, :cond_0

    #@a
    .line 580
    new-instance v6, Ljava/util/Hashtable;

    #@c
    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    #@f
    iput-object v6, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    #@11
    .line 581
    :cond_0
    iget-object v4, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    #@13
    .line 591
    .local v4, "table":Ljava/util/Hashtable;
    :goto_0
    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, [Ljava/lang/String;

    #@19
    .line 592
    .local v2, "name":[Ljava/lang/String;
    if-eqz v2, :cond_3

    #@1b
    .line 593
    return-object v2

    #@1c
    .line 583
    .end local v2    # "name":[Ljava/lang/String;
    .end local v4    # "table":Ljava/util/Hashtable;
    :cond_1
    iget-object v6, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    #@1e
    if-nez v6, :cond_2

    #@20
    .line 584
    new-instance v6, Ljava/util/Hashtable;

    #@22
    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    #@25
    iput-object v6, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    #@27
    .line 585
    :cond_2
    iget-object v4, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    #@29
    .restart local v4    # "table":Ljava/util/Hashtable;
    goto :goto_0

    #@2a
    .line 598
    .restart local v2    # "name":[Ljava/lang/String;
    :cond_3
    const/4 v6, 0x3

    #@2b
    new-array v2, v6, [Ljava/lang/String;

    #@2d
    .line 599
    const/16 v6, 0x3a

    #@2f
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    #@32
    move-result v0

    #@33
    .line 603
    .local v0, "index":I
    const/4 v6, -0x1

    #@34
    if-ne v0, v6, :cond_6

    #@36
    .line 604
    if-nez p2, :cond_4

    #@38
    iget-object v6, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    #@3a
    if-nez v6, :cond_5

    #@3c
    .line 605
    :cond_4
    const-string/jumbo v6, ""

    #@3f
    aput-object v6, v2, v8

    #@41
    .line 609
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@44
    move-result-object v6

    #@45
    aput-object v6, v2, v9

    #@47
    .line 610
    aget-object v6, v2, v9

    #@49
    aput-object v6, v2, v10

    #@4b
    .line 632
    :goto_2
    aget-object v6, v2, v10

    #@4d
    invoke-virtual {v4, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    .line 633
    iput-boolean v9, p0, Lorg/apache/xml/utils/Context2;->tablesDirty:Z

    #@52
    .line 634
    return-object v2

    #@53
    .line 607
    :cond_5
    iget-object v6, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    #@55
    aput-object v6, v2, v8

    #@57
    goto :goto_1

    #@58
    .line 615
    :cond_6
    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    .line 616
    .local v3, "prefix":Ljava/lang/String;
    add-int/lit8 v6, v0, 0x1

    #@5e
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    .line 618
    .local v1, "local":Ljava/lang/String;
    const-string/jumbo v6, ""

    #@65
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v6

    #@69
    if-eqz v6, :cond_7

    #@6b
    .line 619
    iget-object v5, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    #@6d
    .line 623
    .local v5, "uri":Ljava/lang/String;
    :goto_3
    if-nez v5, :cond_8

    #@6f
    .line 624
    return-object v7

    #@70
    .line 621
    .end local v5    # "uri":Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    #@72
    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    move-result-object v5

    #@76
    check-cast v5, Ljava/lang/String;

    #@78
    .restart local v5    # "uri":Ljava/lang/String;
    goto :goto_3

    #@79
    .line 626
    :cond_8
    aput-object v5, v2, v8

    #@7b
    .line 627
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@7e
    move-result-object v6

    #@7f
    aput-object v6, v2, v9

    #@81
    .line 628
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@84
    move-result-object v6

    #@85
    aput-object v6, v2, v10

    #@87
    goto :goto_2
.end method

.method setParent(Lorg/apache/xml/utils/Context2;)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/xml/utils/Context2;

    #@0
    .prologue
    .line 516
    iput-object p1, p0, Lorg/apache/xml/utils/Context2;->parent:Lorg/apache/xml/utils/Context2;

    #@2
    .line 517
    iput-object p0, p1, Lorg/apache/xml/utils/Context2;->child:Lorg/apache/xml/utils/Context2;

    #@4
    .line 518
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    #@7
    .line 519
    iget-object v0, p1, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    #@9
    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    #@b
    .line 520
    iget-object v0, p1, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    #@d
    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    #@f
    .line 521
    iget-object v0, p1, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    #@11
    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    #@13
    .line 522
    iget-object v0, p1, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    #@15
    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    #@17
    .line 523
    iget-object v0, p1, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    #@19
    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    #@1b
    .line 524
    const/4 v0, 0x0

    #@1c
    iput-boolean v0, p0, Lorg/apache/xml/utils/Context2;->tablesDirty:Z

    #@1e
    .line 514
    return-void
.end method
