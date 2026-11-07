.class final Lorg/apache/xml/utils/Context2;
.super Ljava/lang/Object;
.source "NamespaceSupport2.java"


# static fields
.field private static final greylist EMPTY_ENUMERATION:Ljava/util/Enumeration;


# instance fields
.field greylist attributeNameTable:Ljava/util/Hashtable;

.field private greylist child:Lorg/apache/xml/utils/Context2;

.field private greylist declarations:Ljava/util/Vector;

.field greylist defaultNS:Ljava/lang/String;

.field greylist elementNameTable:Ljava/util/Hashtable;

.field private greylist parent:Lorg/apache/xml/utils/Context2;

.field greylist prefixTable:Ljava/util/Hashtable;

.field private greylist tablesDirty:Z

.field greylist uriTable:Ljava/util/Hashtable;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 450
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 451
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/utils/Context2;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-void
.end method

.method constructor greylist <init>(Lorg/apache/xml/utils/Context2;)V
    .registers 4

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 461
    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    .line 467
    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    const/4 v1, 0x0

    .line 468
    iput-boolean v1, p0, Lorg/apache/xml/utils/Context2;->tablesDirty:Z

    .line 469
    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->parent:Lorg/apache/xml/utils/Context2;

    .line 470
    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->child:Lorg/apache/xml/utils/Context2;

    if-nez p1, :cond_24

    .line 479
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    .line 480
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    .line 481
    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    .line 482
    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    return-void

    .line 485
    :cond_24
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/Context2;->setParent(Lorg/apache/xml/utils/Context2;)V

    return-void
.end method

.method private greylist copyTables()V
    .registers 2

    .line 731
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    .line 732
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    .line 739
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_1f

    .line 740
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    .line 741
    :cond_1f
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_2a

    .line 742
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    :cond_2a
    const/4 v0, 0x1

    .line 743
    iput-boolean v0, p0, Lorg/apache/xml/utils/Context2;->tablesDirty:Z

    return-void
.end method


# virtual methods
.method greylist declarePrefix(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 538
    iget-boolean v0, p0, Lorg/apache/xml/utils/Context2;->tablesDirty:Z

    if-nez v0, :cond_7

    .line 539
    invoke-direct {p0}, Lorg/apache/xml/utils/Context2;->copyTables()V

    .line 541
    :cond_7
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    if-nez v0, :cond_12

    .line 542
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    .line 545
    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 546
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 547
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 548
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 p2, 0x0

    .line 549
    iput-object p2, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    goto :goto_39

    .line 551
    :cond_2c
    iput-object p2, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    goto :goto_39

    .line 554
    :cond_2f
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :goto_39
    iget-object p0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method greylist getChild()Lorg/apache/xml/utils/Context2;
    .registers 1

    .line 495
    iget-object p0, p0, Lorg/apache/xml/utils/Context2;->child:Lorg/apache/xml/utils/Context2;

    return-object p0
.end method

.method greylist getDeclaredPrefixes()Ljava/util/Enumeration;
    .registers 1

    .line 686
    iget-object p0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    if-nez p0, :cond_7

    .line 687
    sget-object p0, Lorg/apache/xml/utils/Context2;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-object p0

    .line 689
    :cond_7
    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method greylist getParent()Lorg/apache/xml/utils/Context2;
    .registers 1

    .line 504
    iget-object p0, p0, Lorg/apache/xml/utils/Context2;->parent:Lorg/apache/xml/utils/Context2;

    return-object p0
.end method

.method greylist getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 670
    iget-object p0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 673
    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method greylist getPrefixes()Ljava/util/Enumeration;
    .registers 1

    .line 705
    iget-object p0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    if-nez p0, :cond_7

    .line 706
    sget-object p0, Lorg/apache/xml/utils/Context2;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-object p0

    .line 708
    :cond_7
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method greylist getURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 648
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 649
    iget-object p0, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    return-object p0

    .line 650
    :cond_b
    iget-object p0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    if-nez p0, :cond_11

    const/4 p0, 0x0

    return-object p0

    .line 653
    :cond_11
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method greylist processName(Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 11

    if-eqz p2, :cond_10

    .line 579
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    if-nez v0, :cond_d

    .line 580
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    .line 581
    :cond_d
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    goto :goto_1d

    .line 583
    :cond_10
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    if-nez v0, :cond_1b

    .line 584
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    .line 585
    :cond_1b
    iget-object v0, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    .line 591
    :goto_1d
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_26

    return-object v1

    :cond_26
    const/4 v1, 0x3

    .line 598
    new-array v1, v1, [Ljava/lang/String;

    const/16 v2, 0x3a

    .line 599
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    .line 603
    const-string v4, ""

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v3, :cond_4c

    if-nez p2, :cond_41

    .line 604
    iget-object p2, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    if-nez p2, :cond_3e

    goto :goto_41

    .line 607
    :cond_3e
    aput-object p2, v1, v7

    goto :goto_43

    .line 605
    :cond_41
    :goto_41
    aput-object v4, v1, v7

    .line 609
    :goto_43
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    .line 610
    aput-object p1, v1, v5

    goto :goto_78

    .line 615
    :cond_4c
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    add-int/2addr v2, v6

    .line 616
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 618
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 619
    iget-object p2, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    goto :goto_66

    .line 621
    :cond_5e
    iget-object v3, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :goto_66
    if-nez p2, :cond_6a

    const/4 p0, 0x0

    return-object p0

    .line 626
    :cond_6a
    aput-object p2, v1, v7

    .line 627
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v6

    .line 628
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    .line 632
    :goto_78
    aget-object p1, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    iput-boolean v6, p0, Lorg/apache/xml/utils/Context2;->tablesDirty:Z

    return-object v1
.end method

.method greylist setParent(Lorg/apache/xml/utils/Context2;)V
    .registers 3

    .line 516
    iput-object p1, p0, Lorg/apache/xml/utils/Context2;->parent:Lorg/apache/xml/utils/Context2;

    .line 517
    iput-object p0, p1, Lorg/apache/xml/utils/Context2;->child:Lorg/apache/xml/utils/Context2;

    const/4 v0, 0x0

    .line 518
    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->declarations:Ljava/util/Vector;

    .line 519
    iget-object v0, p1, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->prefixTable:Ljava/util/Hashtable;

    .line 520
    iget-object v0, p1, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->uriTable:Ljava/util/Hashtable;

    .line 521
    iget-object v0, p1, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->elementNameTable:Ljava/util/Hashtable;

    .line 522
    iget-object v0, p1, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/xml/utils/Context2;->attributeNameTable:Ljava/util/Hashtable;

    .line 523
    iget-object p1, p1, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xml/utils/Context2;->defaultNS:Ljava/lang/String;

    const/4 p1, 0x0

    .line 524
    iput-boolean p1, p0, Lorg/apache/xml/utils/Context2;->tablesDirty:Z

    return-void
.end method
