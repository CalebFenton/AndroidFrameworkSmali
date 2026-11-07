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
.field greylist-max-o attributeNameTable:Ljava/util/Hashtable;

.field private greylist-max-o declSeen:Z

.field private greylist-max-o declarations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o declsOK:Z

.field greylist-max-o defaultNS:Ljava/lang/String;

.field greylist-max-o elementNameTable:Ljava/util/Hashtable;

.field private greylist-max-o parent:Lorg/xml/sax/helpers/NamespaceSupport$Context;

.field greylist-max-o prefixTable:Ljava/util/Hashtable;

.field final synthetic blacklist this$0:Lorg/xml/sax/helpers/NamespaceSupport;

.field greylist-max-o uriTable:Ljava/util/Hashtable;


# direct methods
.method constructor greylist <init>(Lorg/xml/sax/helpers/NamespaceSupport;)V
    .registers 4
    .param p1, "this$0"    # Lorg/xml/sax/helpers/NamespaceSupport;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 555
    iput-object p1, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->this$0:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 824
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    .line 825
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declsOK:Z

    .line 833
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarations:Ljava/util/ArrayList;

    .line 834
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declSeen:Z

    .line 835
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->parent:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 556
    invoke-direct {p0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->copyTables()V

    .line 557
    return-void
.end method

.method private greylist-max-o copyTables()V
    .registers 2

    .line 799
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_f

    .line 800
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    goto :goto_16

    .line 802
    :cond_f
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    .line 804
    :goto_16
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_25

    .line 805
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    goto :goto_2c

    .line 807
    :cond_25
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    .line 809
    :goto_2c
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->elementNameTable:Ljava/util/Hashtable;

    .line 810
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->attributeNameTable:Ljava/util/Hashtable;

    .line 811
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declSeen:Z

    .line 812
    return-void
.end method


# virtual methods
.method greylist-max-o clear()V
    .registers 2

    .line 588
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->parent:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 589
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    .line 590
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    .line 591
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->elementNameTable:Ljava/util/Hashtable;

    .line 592
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->attributeNameTable:Ljava/util/Hashtable;

    .line 593
    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    .line 594
    return-void
.end method

.method greylist-max-o declarePrefix(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 606
    iget-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declsOK:Z

    if-eqz v0, :cond_43

    .line 609
    iget-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declSeen:Z

    if-nez v0, :cond_b

    .line 610
    invoke-direct {p0}, Lorg/xml/sax/helpers/NamespaceSupport$Context;->copyTables()V

    .line 612
    :cond_b
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarations:Ljava/util/ArrayList;

    if-nez v0, :cond_16

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarations:Ljava/util/ArrayList;

    .line 616
    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 617
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 618
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 619
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    goto :goto_3d

    .line 622
    :cond_30
    iput-object p2, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    goto :goto_3d

    .line 625
    :cond_33
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    :goto_3d
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    return-void

    .line 607
    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t declare any more prefixes in this context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o getDeclaredPrefixes()Ljava/util/Enumeration;
    .registers 2

    .line 762
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarations:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    invoke-static {}, Lorg/xml/sax/helpers/NamespaceSupport;->-$$Nest$sfgetEMPTY_ENUMERATION()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarations:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method greylist-max-o getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .line 747
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    if-nez v0, :cond_6

    .line 748
    const/4 v0, 0x0

    return-object v0

    .line 750
    :cond_6
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getPrefixes()Ljava/util/Enumeration;
    .registers 2

    .line 777
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    if-nez v0, :cond_9

    .line 778
    invoke-static {}, Lorg/xml/sax/helpers/NamespaceSupport;->-$$Nest$sfgetEMPTY_ENUMERATION()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 780
    :cond_9
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;

    .line 725
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 726
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    return-object v0

    .line 727
    :cond_b
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    if-nez v0, :cond_11

    .line 728
    const/4 v0, 0x0

    return-object v0

    .line 730
    :cond_11
    iget-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o processName(Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 13
    .param p1, "qName"    # Ljava/lang/String;
    .param p2, "isAttribute"    # Z

    .line 649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declsOK:Z

    .line 652
    if-eqz p2, :cond_8

    .line 653
    iget-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->attributeNameTable:Ljava/util/Hashtable;

    .local v1, "table":Ljava/util/Hashtable;
    goto :goto_a

    .line 655
    .end local v1    # "table":Ljava/util/Hashtable;
    :cond_8
    iget-object v1, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->elementNameTable:Ljava/util/Hashtable;

    .line 661
    .restart local v1    # "table":Ljava/util/Hashtable;
    :goto_a
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 662
    .local v2, "name":[Ljava/lang/String;
    if-eqz v2, :cond_13

    .line 663
    return-object v2

    .line 670
    :cond_13
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    .line 671
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 672
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 676
    .local v3, "index":I
    const/4 v5, -0x1

    const-string v6, "xmlns"

    const-string v7, ""

    const/4 v8, 0x1

    if-ne v3, v5, :cond_4f

    .line 677
    if-eqz p2, :cond_3f

    .line 678
    if-ne p1, v6, :cond_3c

    iget-object v5, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->this$0:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-static {v5}, Lorg/xml/sax/helpers/NamespaceSupport;->-$$Nest$fgetnamespaceDeclUris(Lorg/xml/sax/helpers/NamespaceSupport;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 679
    const-string v5, "http://www.w3.org/xmlns/2000/"

    aput-object v5, v2, v0

    goto :goto_4a

    .line 681
    :cond_3c
    aput-object v7, v2, v0

    goto :goto_4a

    .line 682
    :cond_3f
    iget-object v5, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    if-nez v5, :cond_46

    .line 683
    aput-object v7, v2, v0

    goto :goto_4a

    .line 685
    :cond_46
    iget-object v5, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    aput-object v5, v2, v0

    .line 687
    :goto_4a
    aget-object v0, v2, v4

    aput-object v0, v2, v8

    goto :goto_7d

    .line 692
    :cond_4f
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 693
    .local v5, "prefix":Ljava/lang/String;
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 695
    .local v9, "local":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 696
    iget-object v7, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    .local v7, "uri":Ljava/lang/String;
    goto :goto_6a

    .line 698
    .end local v7    # "uri":Ljava/lang/String;
    :cond_62
    iget-object v7, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    invoke-virtual {v7, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 700
    .restart local v7    # "uri":Ljava/lang/String;
    :goto_6a
    if-eqz v7, :cond_83

    if-nez p2, :cond_75

    .line 701
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    goto :goto_83

    .line 704
    :cond_75
    aput-object v7, v2, v0

    .line 705
    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    .line 710
    .end local v5    # "prefix":Ljava/lang/String;
    .end local v7    # "uri":Ljava/lang/String;
    .end local v9    # "local":Ljava/lang/String;
    :goto_7d
    aget-object v0, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    return-object v2

    .line 702
    .restart local v5    # "prefix":Ljava/lang/String;
    .restart local v7    # "uri":Ljava/lang/String;
    .restart local v9    # "local":Ljava/lang/String;
    :cond_83
    :goto_83
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o setParent(Lorg/xml/sax/helpers/NamespaceSupport$Context;)V
    .registers 3
    .param p1, "parent"    # Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 569
    iput-object p1, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->parent:Lorg/xml/sax/helpers/NamespaceSupport$Context;

    .line 570
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declarations:Ljava/util/ArrayList;

    .line 571
    iget-object v0, p1, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->prefixTable:Ljava/util/Hashtable;

    .line 572
    iget-object v0, p1, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->uriTable:Ljava/util/Hashtable;

    .line 573
    iget-object v0, p1, Lorg/xml/sax/helpers/NamespaceSupport$Context;->elementNameTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->elementNameTable:Ljava/util/Hashtable;

    .line 574
    iget-object v0, p1, Lorg/xml/sax/helpers/NamespaceSupport$Context;->attributeNameTable:Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->attributeNameTable:Ljava/util/Hashtable;

    .line 575
    iget-object v0, p1, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    iput-object v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->defaultNS:Ljava/lang/String;

    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declSeen:Z

    .line 577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xml/sax/helpers/NamespaceSupport$Context;->declsOK:Z

    .line 578
    return-void
.end method
