.class public abstract Lorg/apache/harmony/xml/dom/NodeImpl;
.super Ljava/lang/Object;
.source "NodeImpl.java"

# interfaces
.implements Lorg/w3c/dom/Node;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/dom/NodeImpl$UserData;,
        Lorg/apache/harmony/xml/dom/NodeImpl$1;
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lorg/w3c/dom/NodeList;

.field static final NULL_TYPE_INFO:Lorg/w3c/dom/TypeInfo;


# instance fields
.field document:Lorg/apache/harmony/xml/dom/DocumentImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    #@2
    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    #@5
    sput-object v0, Lorg/apache/harmony/xml/dom/NodeImpl;->EMPTY_LIST:Lorg/w3c/dom/NodeList;

    #@7
    .line 51
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeImpl$1;

    #@9
    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeImpl$1;-><init>()V

    #@c
    sput-object v0, Lorg/apache/harmony/xml/dom/NodeImpl;->NULL_TYPE_INFO:Lorg/w3c/dom/TypeInfo;

    #@e
    .line 47
    return-void
.end method

.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V
    .locals 0
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@5
    .line 70
    return-void
.end method

.method private static createEqualityKey(Lorg/w3c/dom/Node;)Ljava/util/List;
    .locals 5
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 601
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 602
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    #@8
    move-result v4

    #@9
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@c
    move-result-object v4

    #@d
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10
    .line 603
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17
    .line 604
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1e
    .line 605
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    .line 606
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c
    .line 607
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@33
    .line 608
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    #@36
    move-result-object v0

    #@37
    .local v0, "child":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v0, :cond_0

    #@39
    .line 609
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3c
    .line 608
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@3f
    move-result-object v0

    #@40
    goto :goto_0

    #@41
    .line 612
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    #@44
    move-result v4

    #@45
    sparse-switch v4, :sswitch_data_0

    #@48
    .line 628
    :goto_1
    return-object v3

    #@49
    :sswitch_0
    move-object v1, p0

    #@4a
    .line 614
    check-cast v1, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;

    #@4c
    .line 615
    .local v1, "doctype":Lorg/apache/harmony/xml/dom/DocumentTypeImpl;
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@53
    .line 616
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5a
    .line 617
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    #@5d
    move-result-object v4

    #@5e
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@61
    .line 618
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    #@64
    move-result-object v4

    #@65
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@68
    .line 619
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getNotations()Lorg/w3c/dom/NamedNodeMap;

    #@6b
    move-result-object v4

    #@6c
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@6f
    goto :goto_1

    #@70
    .end local v1    # "doctype":Lorg/apache/harmony/xml/dom/DocumentTypeImpl;
    :sswitch_1
    move-object v2, p0

    #@71
    .line 623
    check-cast v2, Lorg/w3c/dom/Element;

    #@73
    .line 624
    .local v2, "element":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@76
    move-result-object v4

    #@77
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7a
    goto :goto_1

    #@7b
    .line 612
    nop

    #@7c
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private getContainingElement()Lorg/apache/harmony/xml/dom/NodeImpl;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 482
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentNode()Lorg/w3c/dom/Node;

    #@4
    move-result-object v0

    #@5
    .local v0, "p":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v0, :cond_1

    #@7
    .line 483
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    #@a
    move-result v1

    #@b
    const/4 v2, 0x1

    #@c
    if-ne v1, v2, :cond_0

    #@e
    .line 484
    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    #@10
    .end local v0    # "p":Lorg/w3c/dom/Node;
    return-object v0

    #@11
    .line 482
    .restart local v0    # "p":Lorg/w3c/dom/Node;
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    #@14
    move-result-object v0

    #@15
    goto :goto_0

    #@16
    .line 487
    :cond_1
    return-object v3
.end method

.method private getNamespacingElement()Lorg/apache/harmony/xml/dom/NodeImpl;
    .locals 3

    #@0
    .prologue
    .line 449
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 473
    new-instance v0, Lorg/w3c/dom/DOMException;

    #@9
    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Unsupported node type "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    #@18
    move-result v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 473
    const/16 v2, 0x9

    #@23
    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 451
    :pswitch_0
    return-object p0

    #@28
    .line 454
    :pswitch_1
    check-cast p0, Lorg/w3c/dom/Document;

    #@2a
    .end local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    #@30
    return-object v0

    #@31
    .line 460
    .restart local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    :pswitch_2
    const/4 v0, 0x0

    #@32
    return-object v0

    #@33
    .line 463
    :pswitch_3
    check-cast p0, Lorg/w3c/dom/Attr;

    #@35
    .end local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    #@3b
    return-object v0

    #@3c
    .line 470
    .restart local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    :pswitch_4
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getContainingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    #@3f
    move-result-object v0

    #@40
    return-object v0

    #@41
    .line 449
    nop

    #@42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getParentBaseUri()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 370
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentNode()Lorg/w3c/dom/Node;

    #@4
    move-result-object v0

    #@5
    .line 371
    .local v0, "parentNode":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    #@7
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getBaseURI()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    :cond_0
    return-object v1
.end method

.method private namedNodeMapsEqual(Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/NamedNodeMap;)Z
    .locals 6
    .param p1, "a"    # Lorg/w3c/dom/NamedNodeMap;
    .param p2, "b"    # Lorg/w3c/dom/NamedNodeMap;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 679
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@4
    move-result v3

    #@5
    invoke-interface {p2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@8
    move-result v4

    #@9
    if-eq v3, v4, :cond_0

    #@b
    .line 680
    return v5

    #@c
    .line 682
    :cond_0
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@10
    move-result v3

    #@11
    if-ge v2, v3, :cond_3

    #@13
    .line 683
    invoke-interface {p1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@16
    move-result-object v0

    #@17
    .line 684
    .local v0, "aNode":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    if-nez v3, :cond_1

    #@1d
    .line 685
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-interface {p2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    #@24
    move-result-object v1

    #@25
    .line 687
    .local v1, "bNode":Lorg/w3c/dom/Node;
    :goto_1
    if-eqz v1, :cond_2

    #@27
    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->isEqualNode(Lorg/w3c/dom/Node;)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_2

    #@2d
    .line 682
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 686
    .end local v1    # "bNode":Lorg/w3c/dom/Node;
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-interface {p2, v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    #@3b
    move-result-object v1

    #@3c
    .restart local v1    # "bNode":Lorg/w3c/dom/Node;
    goto :goto_1

    #@3d
    .line 688
    :cond_2
    return v5

    #@3e
    .line 691
    .end local v0    # "aNode":Lorg/w3c/dom/Node;
    .end local v1    # "bNode":Lorg/w3c/dom/Node;
    :cond_3
    const/4 v3, 0x1

    #@3f
    return v3
.end method

.method private sanitizeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 378
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_1

    #@9
    .line 379
    :cond_0
    return-object v2

    #@a
    .line 382
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URI;

    #@c
    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@f
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    move-result-object v1

    #@13
    return-object v1

    #@14
    .line 383
    :catch_0
    move-exception v0

    #@15
    .line 384
    .local v0, "e":Ljava/net/URISyntaxException;
    return-object v2
.end method

.method static setName(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;)V
    .locals 8
    .param p0, "node"    # Lorg/apache/harmony/xml/dom/NodeImpl;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x5

    #@1
    const/4 v6, 0x0

    #@2
    .line 278
    const-string/jumbo v5, ":"

    #@5
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@8
    move-result v4

    #@9
    .line 279
    .local v4, "prefixSeparator":I
    const/4 v5, -0x1

    #@a
    if-eq v4, v5, :cond_2

    #@c
    .line 280
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 281
    .local v3, "prefix":Ljava/lang/String;
    add-int/lit8 v5, v4, 0x1

    #@12
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 282
    .local v2, "localName":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_1

    #@1c
    invoke-static {v2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_1

    #@22
    .line 289
    .end local v2    # "localName":Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    #@25
    move-result v5

    #@26
    packed-switch v5, :pswitch_data_0

    #@29
    .line 303
    new-instance v5, Lorg/w3c/dom/DOMException;

    #@2b
    .line 304
    new-instance v6, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v7, "Cannot rename nodes of type "

    #@33
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    #@3a
    move-result v7

    #@3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v6

    #@43
    .line 303
    const/16 v7, 0x9

    #@45
    invoke-direct {v5, v7, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@48
    throw v5

    #@49
    .line 283
    .restart local v2    # "localName":Ljava/lang/String;
    .restart local v3    # "prefix":Ljava/lang/String;
    :cond_1
    new-instance v5, Lorg/w3c/dom/DOMException;

    #@4b
    invoke-direct {v5, v7, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@4e
    throw v5

    #@4f
    .line 285
    .end local v2    # "localName":Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    #@52
    move-result v5

    #@53
    if-nez v5, :cond_0

    #@55
    .line 286
    new-instance v5, Lorg/w3c/dom/DOMException;

    #@57
    invoke-direct {v5, v7, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@5a
    throw v5

    #@5b
    :pswitch_0
    move-object v0, p0

    #@5c
    .line 291
    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    #@5e
    .line 292
    .local v0, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    iput-boolean v6, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    #@60
    .line 293
    iput-object p1, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    #@62
    .line 277
    .end local v0    # "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    :goto_0
    return-void

    #@63
    :pswitch_1
    move-object v1, p0

    #@64
    .line 297
    check-cast v1, Lorg/apache/harmony/xml/dom/ElementImpl;

    #@66
    .line 298
    .local v1, "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    iput-boolean v6, v1, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    #@68
    .line 299
    iput-object p1, v1, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    #@6a
    goto :goto_0

    #@6b
    .line 289
    nop

    #@6c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static setNameNS(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "node"    # Lorg/apache/harmony/xml/dom/NodeImpl;
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v6, 0xe

    #@2
    const/4 v5, 0x1

    #@3
    .line 229
    if-nez p2, :cond_0

    #@5
    .line 230
    new-instance v4, Lorg/w3c/dom/DOMException;

    #@7
    invoke-direct {v4, v6, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 233
    :cond_0
    const/4 v3, 0x0

    #@c
    .line 234
    .local v3, "prefix":Ljava/lang/String;
    const-string/jumbo v4, ":"

    #@f
    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@12
    move-result v2

    #@13
    .line 235
    .local v2, "p":I
    const/4 v4, -0x1

    #@14
    if-eq v2, v4, :cond_1

    #@16
    .line 236
    const/4 v4, 0x0

    #@17
    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-static {v4, v5, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->validatePrefix(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 237
    .local v3, "prefix":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    #@21
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@24
    move-result-object p2

    #@25
    .line 240
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    #@28
    move-result v4

    #@29
    if-nez v4, :cond_2

    #@2b
    .line 241
    new-instance v4, Lorg/w3c/dom/DOMException;

    #@2d
    const/4 v5, 0x5

    #@2e
    invoke-direct {v4, v5, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@31
    throw v4

    #@32
    .line 244
    :cond_2
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    #@35
    move-result v4

    #@36
    packed-switch v4, :pswitch_data_0

    #@39
    .line 267
    new-instance v4, Lorg/w3c/dom/DOMException;

    #@3b
    .line 268
    new-instance v5, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v6, "Cannot rename nodes of type "

    #@43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    #@4a
    move-result v6

    #@4b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    .line 267
    const/16 v6, 0x9

    #@55
    invoke-direct {v4, v6, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@58
    throw v4

    #@59
    .line 246
    :pswitch_0
    const-string/jumbo v4, "xmlns"

    #@5c
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v4

    #@60
    if-eqz v4, :cond_3

    #@62
    .line 247
    const-string/jumbo v4, "http://www.w3.org/2000/xmlns/"

    #@65
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v4

    #@69
    if-eqz v4, :cond_4

    #@6b
    :cond_3
    move-object v0, p0

    #@6c
    .line 251
    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    #@6e
    .line 252
    .local v0, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    iput-boolean v5, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    #@70
    .line 253
    iput-object p1, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceURI:Ljava/lang/String;

    #@72
    .line 254
    iput-object v3, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->prefix:Ljava/lang/String;

    #@74
    .line 255
    iput-object p2, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    #@76
    .line 228
    .end local v0    # "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    :goto_0
    return-void

    #@77
    .line 248
    :cond_4
    new-instance v4, Lorg/w3c/dom/DOMException;

    #@79
    invoke-direct {v4, v6, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@7c
    throw v4

    #@7d
    :pswitch_1
    move-object v1, p0

    #@7e
    .line 259
    check-cast v1, Lorg/apache/harmony/xml/dom/ElementImpl;

    #@80
    .line 260
    .local v1, "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    iput-boolean v5, v1, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    #@82
    .line 261
    iput-object p1, v1, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceURI:Ljava/lang/String;

    #@84
    .line 262
    iput-object v3, v1, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    #@86
    .line 263
    iput-object p2, v1, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    #@88
    goto :goto_0

    #@89
    .line 244
    nop

    #@8a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static validatePrefix(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "namespaceAware"    # Z
    .param p2, "namespaceURI"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v1, 0xe

    #@2
    .line 204
    if-nez p1, :cond_0

    #@4
    .line 205
    new-instance v0, Lorg/w3c/dom/DOMException;

    #@6
    invoke-direct {v0, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@9
    throw v0

    #@a
    .line 208
    :cond_0
    if-eqz p0, :cond_2

    #@c
    .line 209
    if-eqz p2, :cond_3

    #@e
    .line 210
    invoke-static {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_3

    #@14
    .line 211
    const-string/jumbo v0, "xml"

    #@17
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    const-string/jumbo v0, "http://www.w3.org/XML/1998/namespace"

    #@20
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_3

    #@26
    .line 212
    :cond_1
    const-string/jumbo v0, "xmlns"

    #@29
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_2

    #@2f
    const-string/jumbo v0, "http://www.w3.org/2000/xmlns/"

    #@32
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_3

    #@38
    .line 217
    :cond_2
    return-object p0

    #@39
    .line 213
    :cond_3
    new-instance v0, Lorg/w3c/dom/DOMException;

    #@3b
    invoke-direct {v0, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@3e
    throw v0
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    new-instance v0, Lorg/w3c/dom/DOMException;

    #@2
    const/4 v1, 0x3

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@7
    throw v0
.end method

.method public final cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "deep"    # Z

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1, p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->cloneOrImportNode(SLorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 1
    .param p1, "other"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 390
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final getBaseURI()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 309
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    #@4
    move-result v4

    #@5
    packed-switch v4, :pswitch_data_0

    #@8
    .line 364
    new-instance v4, Lorg/w3c/dom/DOMException;

    #@a
    .line 365
    new-instance v5, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v6, "Unsupported node type "

    #@12
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v5

    #@16
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    #@19
    move-result v6

    #@1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v5

    #@1e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v5

    #@22
    .line 364
    const/16 v6, 0x9

    #@24
    invoke-direct {v4, v6, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@27
    throw v4

    #@28
    :pswitch_0
    move-object v4, p0

    #@29
    .line 311
    check-cast v4, Lorg/w3c/dom/Document;

    #@2b
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentURI()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-direct {p0, v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->sanitizeUri(Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    return-object v4

    #@34
    :pswitch_1
    move-object v1, p0

    #@35
    .line 314
    check-cast v1, Lorg/w3c/dom/Element;

    #@37
    .line 316
    .local v1, "element":Lorg/w3c/dom/Element;
    const-string/jumbo v4, "http://www.w3.org/XML/1998/namespace"

    #@3a
    const-string/jumbo v5, "base"

    #@3d
    .line 315
    invoke-interface {v1, v4, v5}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    .line 320
    .local v3, "uri":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@43
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@46
    move-result v4

    #@47
    if-eqz v4, :cond_1

    #@49
    .line 321
    :cond_0
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentBaseUri()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    return-object v4

    #@4e
    .line 325
    :cond_1
    new-instance v4, Ljava/net/URI;

    #@50
    invoke-direct {v4, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@53
    invoke-virtual {v4}, Ljava/net/URI;->isAbsolute()Z

    #@56
    move-result v4

    #@57
    if-eqz v4, :cond_2

    #@59
    .line 326
    return-object v3

    #@5a
    .line 331
    :cond_2
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentBaseUri()Ljava/lang/String;

    #@5d
    move-result-object v2

    #@5e
    .line 332
    .local v2, "parentUri":Ljava/lang/String;
    if-nez v2, :cond_3

    #@60
    .line 333
    return-object v6

    #@61
    .line 336
    :cond_3
    new-instance v4, Ljava/net/URI;

    #@63
    invoke-direct {v4, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@66
    invoke-virtual {v4, v3}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@6d
    move-result-object v4

    #@6e
    return-object v4

    #@6f
    .line 337
    .end local v2    # "parentUri":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@70
    .line 338
    .local v0, "e":Ljava/net/URISyntaxException;
    return-object v6

    #@71
    .line 342
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .end local v1    # "element":Lorg/w3c/dom/Element;
    .end local v3    # "uri":Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentBaseUri()Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    return-object v4

    #@76
    .line 348
    :pswitch_3
    return-object v6

    #@77
    .line 353
    :pswitch_4
    return-object v6

    #@78
    .line 361
    :pswitch_5
    return-object v6

    #@79
    .line 309
    nop

    #@7a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 1

    #@0
    .prologue
    .line 87
    sget-object v0, Lorg/apache/harmony/xml/dom/NodeImpl;->EMPTY_LIST:Lorg/w3c/dom/NodeList;

    #@2
    return-object v0
.end method

.method public final getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    #@0
    .prologue
    .line 695
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/NodeImpl;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .end local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    :goto_0
    return-object p0

    #@7
    .restart local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    :cond_0
    const/4 p0, 0x0

    #@8
    goto :goto_0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 91
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 95
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 99
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 103
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 107
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 111
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public abstract getNodeType()S
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@8
    goto :goto_0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 125
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 129
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 133
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 394
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method getTextContent(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 398
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 399
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 400
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9
    .line 397
    :cond_0
    return-void
.end method

.method public final getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 710
    if-nez p1, :cond_0

    #@3
    .line 711
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "key == null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 713
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@e
    invoke-virtual {v3, p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMapForRead(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    #@11
    move-result-object v0

    #@12
    .line 714
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    #@18
    .line 715
    .local v1, "userData":Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    if-eqz v1, :cond_1

    #@1a
    iget-object v2, v1, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->value:Ljava/lang/Object;

    #@1c
    :cond_1
    return-object v2
.end method

.method public hasAttributes()Z
    .locals 1

    #@0
    .prologue
    .line 137
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    #@0
    .prologue
    .line 141
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "refChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 145
    new-instance v0, Lorg/w3c/dom/DOMException;

    #@2
    const/4 v1, 0x3

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@7
    throw v0
.end method

.method public final isDefaultNamespace(Ljava/lang/String;)Z
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 551
    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 552
    .local v0, "actual":Ljava/lang/String;
    if-nez p1, :cond_1

    #@7
    .line 553
    if-nez v0, :cond_0

    #@9
    const/4 v1, 0x1

    #@a
    .line 552
    :goto_0
    return v1

    #@b
    .line 553
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0

    #@d
    .line 554
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    goto :goto_0
.end method

.method public final isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 9
    .param p1, "arg"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 632
    if-ne p1, p0, :cond_0

    #@4
    .line 633
    return v8

    #@5
    .line 636
    :cond_0
    invoke-static {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->createEqualityKey(Lorg/w3c/dom/Node;)Ljava/util/List;

    #@8
    move-result-object v3

    #@9
    .line 637
    .local v3, "listA":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->createEqualityKey(Lorg/w3c/dom/Node;)Ljava/util/List;

    #@c
    move-result-object v4

    #@d
    .line 639
    .local v4, "listB":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@10
    move-result v5

    #@11
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@14
    move-result v6

    #@15
    if-eq v5, v6, :cond_1

    #@17
    .line 640
    return v7

    #@18
    .line 643
    :cond_1
    const/4 v2, 0x0

    #@19
    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@1c
    move-result v5

    #@1d
    if-ge v2, v5, :cond_c

    #@1f
    .line 644
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    .line 645
    .local v0, "a":Ljava/lang/Object;
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    .line 647
    .local v1, "b":Ljava/lang/Object;
    if-ne v0, v1, :cond_3

    #@29
    .line 643
    .end local v0    # "a":Ljava/lang/Object;
    .end local v1    # "b":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 650
    .restart local v0    # "a":Ljava/lang/Object;
    .restart local v1    # "b":Ljava/lang/Object;
    :cond_3
    if-eqz v0, :cond_4

    #@2e
    if-nez v1, :cond_5

    #@30
    .line 651
    :cond_4
    return v7

    #@31
    .line 653
    :cond_5
    instance-of v5, v0, Ljava/lang/String;

    #@33
    if-nez v5, :cond_6

    #@35
    instance-of v5, v0, Ljava/lang/Short;

    #@37
    if-eqz v5, :cond_7

    #@39
    .line 654
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v5

    #@3d
    if-nez v5, :cond_2

    #@3f
    .line 655
    return v7

    #@40
    .line 658
    :cond_7
    instance-of v5, v0, Lorg/w3c/dom/NamedNodeMap;

    #@42
    if-eqz v5, :cond_9

    #@44
    .line 659
    instance-of v5, v1, Lorg/w3c/dom/NamedNodeMap;

    #@46
    if-eqz v5, :cond_8

    #@48
    .line 660
    check-cast v0, Lorg/w3c/dom/NamedNodeMap;

    #@4a
    .end local v0    # "a":Ljava/lang/Object;
    check-cast v1, Lorg/w3c/dom/NamedNodeMap;

    #@4c
    .end local v1    # "b":Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->namedNodeMapsEqual(Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/NamedNodeMap;)Z

    #@4f
    move-result v5

    #@50
    if-nez v5, :cond_2

    #@52
    .line 661
    :cond_8
    return v7

    #@53
    .line 664
    .restart local v0    # "a":Ljava/lang/Object;
    .restart local v1    # "b":Ljava/lang/Object;
    :cond_9
    instance-of v5, v0, Lorg/w3c/dom/Node;

    #@55
    if-eqz v5, :cond_b

    #@57
    .line 665
    instance-of v5, v1, Lorg/w3c/dom/Node;

    #@59
    if-eqz v5, :cond_a

    #@5b
    .line 666
    check-cast v0, Lorg/w3c/dom/Node;

    #@5d
    .end local v0    # "a":Ljava/lang/Object;
    check-cast v1, Lorg/w3c/dom/Node;

    #@5f
    .end local v1    # "b":Ljava/lang/Object;
    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->isEqualNode(Lorg/w3c/dom/Node;)Z

    #@62
    move-result v5

    #@63
    if-nez v5, :cond_2

    #@65
    .line 667
    :cond_a
    return v7

    #@66
    .line 671
    .restart local v0    # "a":Ljava/lang/Object;
    .restart local v1    # "b":Ljava/lang/Object;
    :cond_b
    new-instance v5, Ljava/lang/AssertionError;

    #@68
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@6b
    throw v5

    #@6c
    .line 675
    .end local v0    # "a":Ljava/lang/Object;
    .end local v1    # "b":Ljava/lang/Object;
    :cond_c
    return v8
.end method

.method isPrefixMappedToUri(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 542
    if-nez p1, :cond_0

    #@2
    .line 543
    const/4 v1, 0x0

    #@3
    return v1

    #@4
    .line 546
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 547
    .local v0, "actual":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    return v1
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 1
    .param p1, "other"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 441
    if-ne p0, p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    goto :goto_0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    #@0
    .prologue
    .line 149
    invoke-static {}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->getInstance()Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 558
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespacingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    #@4
    move-result-object v6

    #@5
    .line 559
    .local v6, "target":Lorg/apache/harmony/xml/dom/NodeImpl;
    move-object v4, v6

    #@6
    .local v4, "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    :goto_0
    if-eqz v4, :cond_9

    #@8
    .line 561
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    .line 562
    .local v5, "nodePrefix":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    #@f
    move-result-object v9

    #@10
    if-eqz v9, :cond_2

    #@12
    .line 563
    if-nez p1, :cond_1

    #@14
    .line 564
    if-nez v5, :cond_2

    #@16
    .line 566
    :cond_0
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    #@19
    move-result-object v8

    #@1a
    return-object v8

    #@1b
    .line 565
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v9

    #@1f
    .line 563
    if-nez v9, :cond_0

    #@21
    .line 573
    :cond_2
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->hasAttributes()Z

    #@24
    move-result v9

    #@25
    if-nez v9, :cond_4

    #@27
    .line 559
    :cond_3
    invoke-direct {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getContainingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    #@2a
    move-result-object v4

    #@2b
    goto :goto_0

    #@2c
    .line 576
    :cond_4
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@2f
    move-result-object v1

    #@30
    .line 577
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v2, 0x0

    #@31
    .local v2, "i":I
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@34
    move-result v3

    #@35
    .local v3, "length":I
    :goto_1
    if-ge v2, v3, :cond_3

    #@37
    .line 578
    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@3a
    move-result-object v0

    #@3b
    .line 579
    .local v0, "attr":Lorg/w3c/dom/Node;
    const-string/jumbo v9, "http://www.w3.org/2000/xmlns/"

    #@3e
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@41
    move-result-object v10

    #@42
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v9

    #@46
    if-nez v9, :cond_6

    #@48
    .line 577
    :cond_5
    add-int/lit8 v2, v2, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 582
    :cond_6
    if-nez p1, :cond_7

    #@4d
    .line 583
    const-string/jumbo v9, "xmlns"

    #@50
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@53
    move-result-object v10

    #@54
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v9

    #@58
    .line 582
    :goto_2
    if-eqz v9, :cond_5

    #@5a
    .line 585
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@5d
    move-result-object v7

    #@5e
    .line 586
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@61
    move-result v9

    #@62
    if-lez v9, :cond_8

    #@64
    .end local v7    # "value":Ljava/lang/String;
    :goto_3
    return-object v7

    #@65
    .line 584
    :cond_7
    const-string/jumbo v9, "xmlns"

    #@68
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    #@6b
    move-result-object v10

    #@6c
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v9

    #@70
    if-eqz v9, :cond_5

    #@72
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@75
    move-result-object v9

    #@76
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v9

    #@7a
    goto :goto_2

    #@7b
    .restart local v7    # "value":Ljava/lang/String;
    :cond_8
    move-object v7, v8

    #@7c
    .line 586
    goto :goto_3

    #@7d
    .line 591
    .end local v0    # "attr":Lorg/w3c/dom/Node;
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v5    # "nodePrefix":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_9
    return-object v8
.end method

.method public final lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "namespaceURI"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 491
    if-nez p1, :cond_0

    #@3
    .line 492
    return-object v8

    #@4
    .line 498
    :cond_0
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespacingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    #@7
    move-result-object v5

    #@8
    .line 499
    .local v5, "target":Lorg/apache/harmony/xml/dom/NodeImpl;
    move-object v4, v5

    #@9
    .local v4, "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    :goto_0
    if-eqz v4, :cond_5

    #@b
    .line 501
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v6

    #@13
    if-eqz v6, :cond_1

    #@15
    .line 502
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    #@18
    move-result-object v6

    #@19
    invoke-virtual {v5, v6, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->isPrefixMappedToUri(Ljava/lang/String;Ljava/lang/String;)Z

    #@1c
    move-result v6

    #@1d
    .line 501
    if-eqz v6, :cond_1

    #@1f
    .line 503
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    return-object v6

    #@24
    .line 508
    :cond_1
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->hasAttributes()Z

    #@27
    move-result v6

    #@28
    if-nez v6, :cond_3

    #@2a
    .line 499
    :cond_2
    invoke-direct {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getContainingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    #@2d
    move-result-object v4

    #@2e
    goto :goto_0

    #@2f
    .line 511
    :cond_3
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/NodeImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@32
    move-result-object v1

    #@33
    .line 512
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v2, 0x0

    #@34
    .local v2, "i":I
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@37
    move-result v3

    #@38
    .local v3, "length":I
    :goto_1
    if-ge v2, v3, :cond_2

    #@3a
    .line 513
    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@3d
    move-result-object v0

    #@3e
    .line 514
    .local v0, "attr":Lorg/w3c/dom/Node;
    const-string/jumbo v6, "http://www.w3.org/2000/xmlns/"

    #@41
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v6

    #@49
    if-eqz v6, :cond_4

    #@4b
    .line 515
    const-string/jumbo v6, "xmlns"

    #@4e
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    #@51
    move-result-object v7

    #@52
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v6

    #@56
    if-eqz v6, :cond_4

    #@58
    .line 516
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@5b
    move-result-object v6

    #@5c
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v6

    #@60
    if-eqz v6, :cond_4

    #@62
    .line 519
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v5, v6, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->isPrefixMappedToUri(Ljava/lang/String;Ljava/lang/String;)Z

    #@69
    move-result v6

    #@6a
    if-eqz v6, :cond_4

    #@6c
    .line 520
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@6f
    move-result-object v6

    #@70
    return-object v6

    #@71
    .line 512
    :cond_4
    add-int/lit8 v2, v2, 0x1

    #@73
    goto :goto_1

    #@74
    .line 525
    .end local v0    # "attr":Lorg/w3c/dom/Node;
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_5
    return-object v8
.end method

.method public normalize()V
    .locals 0

    #@0
    .prologue
    .line 152
    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 156
    new-instance v0, Lorg/w3c/dom/DOMException;

    #@2
    const/4 v1, 0x3

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@7
    throw v0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    new-instance v0, Lorg/w3c/dom/DOMException;

    #@2
    const/4 v1, 0x3

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@7
    throw v0
.end method

.method public final setNodeValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "nodeValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 189
    new-instance v0, Lorg/w3c/dom/DOMException;

    #@9
    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Unsupported node type "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    #@18
    move-result v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    .line 189
    const/16 v2, 0x9

    #@23
    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 168
    :pswitch_0
    check-cast p0, Lorg/w3c/dom/CharacterData;

    #@29
    .end local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-interface {p0, p1}, Lorg/w3c/dom/CharacterData;->setData(Ljava/lang/String;)V

    #@2c
    .line 169
    return-void

    #@2d
    .line 172
    .restart local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    :pswitch_1
    check-cast p0, Lorg/w3c/dom/ProcessingInstruction;

    #@2f
    .end local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-interface {p0, p1}, Lorg/w3c/dom/ProcessingInstruction;->setData(Ljava/lang/String;)V

    #@32
    .line 173
    return-void

    #@33
    .line 176
    .restart local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    :pswitch_2
    check-cast p0, Lorg/w3c/dom/Attr;

    #@35
    .end local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-interface {p0, p1}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    #@38
    .line 177
    return-void

    #@39
    .line 186
    .restart local p0    # "this":Lorg/apache/harmony/xml/dom/NodeImpl;
    :pswitch_3
    return-void

    #@3a
    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 194
    return-void
.end method

.method public final setTextContent(Ljava/lang/String;)V
    .locals 4
    .param p1, "textContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 405
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    #@3
    move-result v1

    #@4
    packed-switch v1, :pswitch_data_0

    #@7
    .line 435
    new-instance v1, Lorg/w3c/dom/DOMException;

    #@9
    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Unsupported node type "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    #@18
    move-result v3

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 435
    const/16 v3, 0x9

    #@23
    invoke-direct {v1, v3, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 408
    :pswitch_0
    return-void

    #@28
    .line 416
    :goto_0
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getFirstChild()Lorg/w3c/dom/Node;

    #@2b
    move-result-object v0

    #@2c
    .local v0, "child":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    #@2e
    .line 417
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/NodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@31
    goto :goto_0

    #@32
    .line 420
    :cond_0
    if-eqz p1, :cond_1

    #@34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_1

    #@3a
    .line 421
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@3c
    invoke-virtual {v1, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/TextImpl;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@43
    .line 423
    :cond_1
    return-void

    #@44
    .line 431
    .end local v0    # "child":Lorg/w3c/dom/Node;
    :pswitch_2
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->setNodeValue(Ljava/lang/String;)V

    #@47
    .line 432
    return-void

    #@48
    .line 405
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "handler"    # Lorg/w3c/dom/UserDataHandler;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 699
    if-nez p1, :cond_0

    #@3
    .line 700
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "key == null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 702
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@e
    invoke-virtual {v3, p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMap(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    #@11
    move-result-object v0

    #@12
    .line 703
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    if-nez p2, :cond_2

    #@14
    .line 704
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    #@1a
    .line 706
    .local v1, "previous":Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    :goto_0
    if-eqz v1, :cond_1

    #@1c
    iget-object v2, v1, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->value:Ljava/lang/Object;

    #@1e
    :cond_1
    return-object v2

    #@1f
    .line 705
    .end local v1    # "previous":Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    :cond_2
    new-instance v3, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    #@21
    invoke-direct {v3, p2, p3}, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;-><init>(Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)V

    #@24
    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    #@2a
    .restart local v1    # "previous":Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    goto :goto_0
.end method
