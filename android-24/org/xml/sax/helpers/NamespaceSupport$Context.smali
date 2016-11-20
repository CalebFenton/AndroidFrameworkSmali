.class final Lorg/xml/sax/helpers/NamespaceSupport$Context;
.super Ljava/lang/Object;
.source "NamespaceSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xml/sax/helpers/NamespaceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Context"
.end annotation


# instance fields
.field attributeNameTable:Ljava/util/Hashtable;

.field private declSeen:Z

.field private declarations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field declsOK:Z

.field defaultNS:Ljava/lang/String;

.field elementNameTable:Ljava/util/Hashtable;

.field private parent:Lorg/xml/sax/helpers/NamespaceSupport$Context;

.field prefixTable:Ljava/util/Hashtable;

.field final synthetic this$0:Lorg/xml/sax/helpers/NamespaceSupport;

.field uriTable:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Lorg/xml/sax/helpers/NamespaceSupport;)V
    .locals 2
    .param p1, "this$0"    # Lorg/xml/sax/helpers/NamespaceSupport;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 547
    iput-object p1, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->this$0:Lorg/xml/sax/helpers/NamespaceSupport;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 817
    iput-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    #@8
    .line 818
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declsOK:Z

    #@b
    .line 826
    iput-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarations:Ljava/util/ArrayList;

    #@d
    .line 827
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declSeen:Z

    #@10
    .line 828
    iput-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->parent:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@12
    .line 549
    invoke-direct {p0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->copyTables()V

    #@15
    .line 547
    return-void
.end method

.method private copyTables()V
    .locals 1

    #@0
    .prologue
    .line 792
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 793
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    #@6
    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/Hashtable;

    #@c
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    #@e
    .line 797
    :goto_0
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 798
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    #@14
    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/util/Hashtable;

    #@1a
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    #@1c
    .line 802
    :goto_1
    new-instance v0, Ljava/util/Hashtable;

    #@1e
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@21
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->elementNameTable:Ljava/util/Hashtable;

    #@23
    .line 803
    new-instance v0, Ljava/util/Hashtable;

    #@25
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@28
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->attributeNameTable:Ljava/util/Hashtable;

    #@2a
    .line 804
    const/4 v0, 0x1

    #@2b
    iput-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declSeen:Z

    #@2d
    .line 790
    return-void

    #@2e
    .line 795
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    #@30
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@33
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    #@35
    goto :goto_0

    #@36
    .line 800
    :cond_1
    new-instance v0, Ljava/util/Hashtable;

    #@38
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@3b
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    #@3d
    goto :goto_1
.end method


# virtual methods
.method clear()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 581
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->parent:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@3
    .line 582
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    #@5
    .line 583
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    #@7
    .line 584
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->elementNameTable:Ljava/util/Hashtable;

    #@9
    .line 585
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->attributeNameTable:Ljava/util/Hashtable;

    #@b
    .line 586
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    #@d
    .line 579
    return-void
.end method

.method declarePrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 599
    iget-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declsOK:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 600
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "can\'t declare any more prefixes in this context"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 602
    :cond_0
    iget-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declSeen:Z

    #@10
    if-nez v0, :cond_1

    #@12
    .line 603
    invoke-direct {p0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->copyTables()V

    #@15
    .line 605
    :cond_1
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarations:Ljava/util/ArrayList;

    #@17
    if-nez v0, :cond_2

    #@19
    .line 606
    new-instance v0, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1e
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarations:Ljava/util/ArrayList;

    #@20
    .line 609
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@23
    move-result-object p1

    #@24
    .line 610
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@27
    move-result-object p2

    #@28
    .line 611
    const-string/jumbo v0, ""

    #@2b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_4

    #@31
    .line 612
    const-string/jumbo v0, ""

    #@34
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_3

    #@3a
    .line 613
    iput-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    #@3c
    .line 621
    :goto_0
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarations:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    .line 597
    return-void

    #@42
    .line 615
    :cond_3
    iput-object p2, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    #@44
    goto :goto_0

    #@45
    .line 618
    :cond_4
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    #@47
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    .line 619
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    #@4c
    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    goto :goto_0
.end method

.method getDeclaredPrefixes()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 755
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarations:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-static {}, Lorg/xml/sax/helpers/NamespaceSupport;->-get0()Ljava/util/Enumeration;

    #@7
    move-result-object v0

    #@8
    :goto_0
    return-object v0

    #@9
    :cond_0
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarations:Ljava/util/ArrayList;

    #@b
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    #@e
    move-result-object v0

    #@f
    goto :goto_0
.end method

.method getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 740
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 741
    return-object v1

    #@6
    .line 743
    :cond_0
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

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
    .line 770
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 771
    invoke-static {}, Lorg/xml/sax/helpers/NamespaceSupport;->-get0()Ljava/util/Enumeration;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 773
    :cond_0
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    #@b
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 718
    const-string/jumbo v0, ""

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 719
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    #@c
    return-object v0

    #@d
    .line 720
    :cond_0
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    #@f
    if-nez v0, :cond_1

    #@11
    .line 721
    return-object v1

    #@12
    .line 723
    :cond_1
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

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
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x2

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v7, 0x0

    #@4
    .line 642
    iput-boolean v7, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declsOK:Z

    #@6
    .line 645
    if-eqz p2, :cond_0

    #@8
    .line 646
    iget-object v4, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->attributeNameTable:Ljava/util/Hashtable;

    #@a
    .line 654
    .local v4, "table":Ljava/util/Hashtable;
    :goto_0
    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, [Ljava/lang/String;

    #@10
    .line 655
    .local v2, "name":[Ljava/lang/String;
    if-eqz v2, :cond_1

    #@12
    .line 656
    return-object v2

    #@13
    .line 648
    .end local v2    # "name":[Ljava/lang/String;
    .end local v4    # "table":Ljava/util/Hashtable;
    :cond_0
    iget-object v4, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->elementNameTable:Ljava/util/Hashtable;

    #@15
    .restart local v4    # "table":Ljava/util/Hashtable;
    goto :goto_0

    #@16
    .line 663
    .restart local v2    # "name":[Ljava/lang/String;
    :cond_1
    const/4 v6, 0x3

    #@17
    new-array v2, v6, [Ljava/lang/String;

    #@19
    .line 664
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@1c
    move-result-object v6

    #@1d
    aput-object v6, v2, v9

    #@1f
    .line 665
    const/16 v6, 0x3a

    #@21
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    #@24
    move-result v0

    #@25
    .line 669
    .local v0, "index":I
    const/4 v6, -0x1

    #@26
    if-ne v0, v6, :cond_5

    #@28
    .line 670
    if-eqz p2, :cond_3

    #@2a
    .line 671
    const-string/jumbo v6, "xmlns"

    #@2d
    if-ne p1, v6, :cond_2

    #@2f
    iget-object v6, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->this$0:Lorg/xml/sax/helpers/NamespaceSupport;

    #@31
    invoke-static {v6}, Lorg/xml/sax/helpers/NamespaceSupport;->-get1(Lorg/xml/sax/helpers/NamespaceSupport;)Z

    #@34
    move-result v6

    #@35
    if-eqz v6, :cond_2

    #@37
    .line 672
    const-string/jumbo v6, "http://www.w3.org/xmlns/2000/"

    #@3a
    aput-object v6, v2, v7

    #@3c
    .line 680
    :goto_1
    aget-object v6, v2, v9

    #@3e
    aput-object v6, v2, v10

    #@40
    .line 703
    :goto_2
    aget-object v6, v2, v9

    #@42
    invoke-virtual {v4, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    .line 704
    return-object v2

    #@46
    .line 674
    :cond_2
    const-string/jumbo v6, ""

    #@49
    aput-object v6, v2, v7

    #@4b
    goto :goto_1

    #@4c
    .line 675
    :cond_3
    iget-object v6, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    #@4e
    if-nez v6, :cond_4

    #@50
    .line 676
    const-string/jumbo v6, ""

    #@53
    aput-object v6, v2, v7

    #@55
    goto :goto_1

    #@56
    .line 678
    :cond_4
    iget-object v6, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    #@58
    aput-object v6, v2, v7

    #@5a
    goto :goto_1

    #@5b
    .line 685
    :cond_5
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    .line 686
    .local v3, "prefix":Ljava/lang/String;
    add-int/lit8 v6, v0, 0x1

    #@61
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    .line 688
    .local v1, "local":Ljava/lang/String;
    const-string/jumbo v6, ""

    #@68
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v6

    #@6c
    if-eqz v6, :cond_7

    #@6e
    .line 689
    iget-object v5, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    #@70
    .line 693
    .local v5, "uri":Ljava/lang/String;
    :goto_3
    if-eqz v5, :cond_6

    #@72
    .line 694
    if-nez p2, :cond_8

    #@74
    const-string/jumbo v6, "xmlns"

    #@77
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v6

    #@7b
    .line 693
    if-eqz v6, :cond_8

    #@7d
    .line 695
    :cond_6
    return-object v8

    #@7e
    .line 691
    .end local v5    # "uri":Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    #@80
    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@83
    move-result-object v5

    #@84
    check-cast v5, Ljava/lang/String;

    #@86
    .restart local v5    # "uri":Ljava/lang/String;
    goto :goto_3

    #@87
    .line 697
    :cond_8
    aput-object v5, v2, v7

    #@89
    .line 698
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@8c
    move-result-object v6

    #@8d
    aput-object v6, v2, v10

    #@8f
    goto :goto_2
.end method

.method setParent(Lorg/xml/sax/helpers/NamespaceSupport$Context;)V
    .locals 1
    .param p1, "parent"    # Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@0
    .prologue
    .line 562
    iput-object p1, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->parent:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    #@2
    .line 563
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarations:Ljava/util/ArrayList;

    #@5
    .line 564
    iget-object v0, p1, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    #@7
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    #@9
    .line 565
    iget-object v0, p1, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    #@b
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    #@d
    .line 566
    iget-object v0, p1, Lorg/xml/sax/helpers/NamespaceSupport$Context;->elementNameTable:Ljava/util/Hashtable;

    #@f
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->elementNameTable:Ljava/util/Hashtable;

    #@11
    .line 567
    iget-object v0, p1, Lorg/xml/sax/helpers/NamespaceSupport$Context;->attributeNameTable:Ljava/util/Hashtable;

    #@13
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->attributeNameTable:Ljava/util/Hashtable;

    #@15
    .line 568
    iget-object v0, p1, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    #@17
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    #@19
    .line 569
    const/4 v0, 0x0

    #@1a
    iput-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declSeen:Z

    #@1c
    .line 570
    const/4 v0, 0x1

    #@1d
    iput-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declsOK:Z

    #@1f
    .line 560
    return-void
.end method
