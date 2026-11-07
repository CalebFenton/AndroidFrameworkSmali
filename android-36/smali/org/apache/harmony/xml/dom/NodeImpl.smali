.class public abstract Lorg/apache/harmony/xml/dom/NodeImpl;
.super Ljava/lang/Object;
.source "NodeImpl.java"

# interfaces
.implements Lorg/w3c/dom/Node;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_LIST:Lorg/w3c/dom/NodeList;

.field static final blacklist NULL_TYPE_INFO:Lorg/w3c/dom/TypeInfo;


# instance fields
.field blacklist document:Lorg/apache/harmony/xml/dom/DocumentImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    sput-object v0, Lorg/apache/harmony/xml/dom/NodeImpl;->EMPTY_LIST:Lorg/w3c/dom/NodeList;

    .line 51
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeImpl$1;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeImpl$1;-><init>()V

    sput-object v0, Lorg/apache/harmony/xml/dom/NodeImpl;->NULL_TYPE_INFO:Lorg/w3c/dom/TypeInfo;

    return-void
.end method

.method constructor blacklist <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V
    .registers 2
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    .line 72
    return-void
.end method

.method private static blacklist createEqualityKey(Lorg/w3c/dom/Node;)Ljava/util/List;
    .registers 4
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .local v1, "child":Lorg/w3c/dom/Node;
    :goto_37
    if-eqz v1, :cond_41

    .line 609
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_37

    .line 612
    .end local v1    # "child":Lorg/w3c/dom/Node;
    :cond_41
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    sparse-switch v1, :sswitch_data_7c

    goto :goto_7a

    .line 614
    :sswitch_49
    move-object v1, p0

    check-cast v1, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;

    .line 615
    .local v1, "doctype":Lorg/apache/harmony/xml/dom/DocumentTypeImpl;
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/DocumentTypeImpl;->getNotations()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    goto :goto_7a

    .line 623
    .end local v1    # "doctype":Lorg/apache/harmony/xml/dom/DocumentTypeImpl;
    :sswitch_70
    move-object v1, p0

    check-cast v1, Lorg/w3c/dom/Element;

    .line 624
    .local v1, "element":Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    .end local v1    # "element":Lorg/w3c/dom/Element;
    :goto_7a
    return-object v0

    nop

    :sswitch_data_7c
    .sparse-switch
        0x1 -> :sswitch_70
        0xa -> :sswitch_49
    .end sparse-switch
.end method

.method private blacklist getContainingElement()Lorg/apache/harmony/xml/dom/NodeImpl;
    .registers 4

    .line 482
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, "p":Lorg/w3c/dom/Node;
    :goto_4
    if-eqz v0, :cond_16

    .line 483
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 484
    move-object v1, v0

    check-cast v1, Lorg/apache/harmony/xml/dom/NodeImpl;

    return-object v1

    .line 482
    :cond_11
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_4

    .line 487
    .end local v0    # "p":Lorg/w3c/dom/Node;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getNamespacingElement()Lorg/apache/harmony/xml/dom/NodeImpl;
    .registers 4

    .line 449
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_42

    .line 473
    new-instance v0, Lorg/w3c/dom/DOMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported node type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 474
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 454
    :pswitch_26
    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    return-object v0

    .line 460
    :pswitch_30
    const/4 v0, 0x0

    return-object v0

    .line 470
    :pswitch_32
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getContainingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v0

    return-object v0

    .line 463
    :pswitch_37
    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    return-object v0

    .line 451
    :pswitch_41
    return-object p0

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_41
        :pswitch_37
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_30
        :pswitch_32
        :pswitch_32
        :pswitch_26
        :pswitch_30
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method

.method private blacklist getParentBaseUri()Ljava/lang/String;
    .registers 3

    .line 370
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 371
    .local v0, "parentNode":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_b

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getBaseURI()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method private blacklist namedNodeMapsEqual(Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/NamedNodeMap;)Z
    .registers 8
    .param p1, "a"    # Lorg/w3c/dom/NamedNodeMap;
    .param p2, "b"    # Lorg/w3c/dom/NamedNodeMap;

    .line 679
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    invoke-interface {p2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 680
    return v2

    .line 682
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 683
    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 684
    .local v1, "aNode":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_26

    .line 685
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_32

    .line 686
    :cond_26
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    :goto_32
    nop

    .line 687
    .local v3, "bNode":Lorg/w3c/dom/Node;
    if-eqz v3, :cond_3f

    invoke-interface {v1, v3}, Lorg/w3c/dom/Node;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-nez v4, :cond_3c

    goto :goto_3f

    .line 682
    .end local v1    # "aNode":Lorg/w3c/dom/Node;
    .end local v3    # "bNode":Lorg/w3c/dom/Node;
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 688
    .restart local v1    # "aNode":Lorg/w3c/dom/Node;
    .restart local v3    # "bNode":Lorg/w3c/dom/Node;
    :cond_3f
    :goto_3f
    return v2

    .line 691
    .end local v0    # "i":I
    .end local v1    # "aNode":Lorg/w3c/dom/Node;
    .end local v3    # "bNode":Lorg/w3c/dom/Node;
    :cond_40
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist sanitizeUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;

    .line 378
    const/4 v0, 0x0

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_16

    .line 382
    :cond_a
    :try_start_a
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_13} :catch_14

    return-object v0

    .line 383
    :catch_14
    move-exception v1

    .line 384
    .local v1, "e":Ljava/net/URISyntaxException;
    return-object v0

    .line 379
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :cond_16
    :goto_16
    return-object v0
.end method

.method static blacklist setName(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;)V
    .registers 8
    .param p0, "node"    # Lorg/apache/harmony/xml/dom/NodeImpl;
    .param p1, "name"    # Ljava/lang/String;

    .line 278
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 279
    .local v0, "prefixSeparator":I
    const/4 v1, -0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eq v0, v1, :cond_28

    .line 280
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "prefix":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, "localName":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-static {v4}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .end local v1    # "prefix":Ljava/lang/String;
    .end local v4    # "localName":Ljava/lang/String;
    goto :goto_2e

    .line 283
    .restart local v1    # "prefix":Ljava/lang/String;
    .restart local v4    # "localName":Ljava/lang/String;
    :cond_22
    new-instance v3, Lorg/w3c/dom/DOMException;

    invoke-direct {v3, v2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 285
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v4    # "localName":Ljava/lang/String;
    :cond_28
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    :goto_2e
    nop

    .line 289
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_6c

    .line 303
    new-instance v1, Lorg/w3c/dom/DOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot rename nodes of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 304
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    invoke-direct {v1, v3, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 291
    :pswitch_55
    move-object v1, p0

    check-cast v1, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 292
    .local v1, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    iput-boolean v3, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    .line 293
    iput-object p1, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    .line 294
    goto :goto_65

    .line 297
    .end local v1    # "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    :pswitch_5d
    move-object v1, p0

    check-cast v1, Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 298
    .local v1, "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    iput-boolean v3, v1, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    .line 299
    iput-object p1, v1, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    .line 300
    nop

    .line 306
    .end local v1    # "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    :goto_65
    return-void

    .line 286
    :cond_66
    new-instance v1, Lorg/w3c/dom/DOMException;

    invoke-direct {v1, v2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_55
    .end packed-switch
.end method

.method static blacklist setNameNS(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "node"    # Lorg/apache/harmony/xml/dom/NodeImpl;
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .line 229
    const/16 v0, 0xe

    if-eqz p2, :cond_81

    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, "prefix":Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 235
    .local v2, "p":I
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1e

    .line 236
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->validatePrefix(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 240
    :cond_1e
    invoke-static {p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 244
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v3

    packed-switch v3, :pswitch_data_88

    .line 267
    new-instance v0, Lorg/w3c/dom/DOMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot rename nodes of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 268
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    invoke-direct {v0, v4, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 246
    :pswitch_4a
    const-string v3, "xmlns"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 247
    const-string v3, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    goto :goto_61

    .line 248
    :cond_5b
    new-instance v3, Lorg/w3c/dom/DOMException;

    invoke-direct {v3, v0, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 251
    :cond_61
    :goto_61
    move-object v0, p0

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 252
    .local v0, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    iput-boolean v4, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    .line 253
    iput-object p1, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceURI:Ljava/lang/String;

    .line 254
    iput-object v1, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->prefix:Ljava/lang/String;

    .line 255
    iput-object p2, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    .line 256
    goto :goto_79

    .line 259
    .end local v0    # "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    :pswitch_6d
    move-object v0, p0

    check-cast v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 260
    .local v0, "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    iput-boolean v4, v0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    .line 261
    iput-object p1, v0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceURI:Ljava/lang/String;

    .line 262
    iput-object v1, v0, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    .line 263
    iput-object p2, v0, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    .line 264
    nop

    .line 270
    .end local v0    # "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    :goto_79
    return-void

    .line 241
    :cond_7a
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v3, 0x5

    invoke-direct {v0, v3, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 230
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "p":I
    :cond_81
    new-instance v1, Lorg/w3c/dom/DOMException;

    invoke-direct {v1, v0, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_4a
    .end packed-switch
.end method

.method static blacklist validatePrefix(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "namespaceAware"    # Z
    .param p2, "namespaceURI"    # Ljava/lang/String;

    .line 204
    const/16 v0, 0xe

    if-eqz p1, :cond_36

    .line 208
    if-eqz p0, :cond_35

    .line 209
    if-eqz p2, :cond_2f

    .line 210
    invoke-static {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 211
    const-string v1, "xml"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 212
    :cond_1e
    const-string v1, "xmlns"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_35

    .line 213
    :cond_2f
    new-instance v1, Lorg/w3c/dom/DOMException;

    invoke-direct {v1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 217
    :cond_35
    :goto_35
    return-object p0

    .line 205
    :cond_36
    new-instance v1, Lorg/w3c/dom/DOMException;

    invoke-direct {v1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 75
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api cloneNode(Z)Lorg/w3c/dom/Node;
    .registers 4
    .param p1, "deep"    # Z

    .line 79
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->cloneOrImportNode(SLorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .registers 3
    .param p1, "other"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .registers 2

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist test-api getBaseURI()Ljava/lang/String;
    .registers 6

    .line 309
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_78

    .line 364
    new-instance v0, Lorg/w3c/dom/DOMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported node type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 365
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 311
    :pswitch_27
    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentURI()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/xml/dom/NodeImpl;->sanitizeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 342
    :pswitch_33
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentBaseUri()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 348
    :pswitch_38
    return-object v1

    .line 353
    :pswitch_39
    return-object v1

    .line 361
    :pswitch_3a
    return-object v1

    .line 314
    :pswitch_3b
    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 315
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v2, "http://www.w3.org/XML/1998/namespace"

    const-string v3, "base"

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "uri":Ljava/lang/String;
    if-eqz v2, :cond_70

    :try_start_48
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4f

    goto :goto_70

    .line 325
    :cond_4f
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 326
    return-object v2

    .line 331
    :cond_5b
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentBaseUri()Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "parentUri":Ljava/lang/String;
    if-nez v3, :cond_62

    .line 333
    return-object v1

    .line 336
    :cond_62
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 321
    .end local v3    # "parentUri":Ljava/lang/String;
    :cond_70
    :goto_70
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentBaseUri()Ljava/lang/String;

    move-result-object v1
    :try_end_74
    .catch Ljava/net/URISyntaxException; {:try_start_48 .. :try_end_74} :catch_75

    return-object v1

    .line 337
    :catch_75
    move-exception v3

    .line 338
    .local v3, "e":Ljava/net/URISyntaxException;
    return-object v1

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_33
        :pswitch_3a
        :pswitch_27
        :pswitch_3a
        :pswitch_3a
        :pswitch_38
    .end packed-switch
.end method

.method public whitelist test-api getChildNodes()Lorg/w3c/dom/NodeList;
    .registers 2

    .line 87
    sget-object v0, Lorg/apache/harmony/xml/dom/NodeImpl;->EMPTY_LIST:Lorg/w3c/dom/NodeList;

    return-object v0
.end method

.method public final whitelist test-api getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 695
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/NodeImpl;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public whitelist test-api getFirstChild()Lorg/w3c/dom/Node;
    .registers 2

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getLastChild()Lorg/w3c/dom/Node;
    .registers 2

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getLocalName()Ljava/lang/String;
    .registers 2

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getNamespaceURI()Ljava/lang/String;
    .registers 2

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getNextSibling()Lorg/w3c/dom/Node;
    .registers 2

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 2

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist test-api getNodeType()S
.end method

.method public whitelist test-api getNodeValue()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist test-api getOwnerDocument()Lorg/w3c/dom/Document;
    .registers 2

    .line 121
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    :goto_8
    return-object v0
.end method

.method public whitelist test-api getParentNode()Lorg/w3c/dom/Node;
    .registers 2

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getPrefix()Ljava/lang/String;
    .registers 2

    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getPreviousSibling()Lorg/w3c/dom/Node;
    .registers 2

    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getTextContent()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getTextContent(Ljava/lang/StringBuilder;)V
    .registers 3
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 398
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 400
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :cond_9
    return-void
.end method

.method public final whitelist test-api getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 710
    if-eqz p1, :cond_15

    .line 713
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMapForRead(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    move-result-object v0

    .line 714
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    .line 715
    .local v1, "userData":Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    if-eqz v1, :cond_13

    iget-object v2, v1, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->value:Ljava/lang/Object;

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    return-object v2

    .line 711
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    .end local v1    # "userData":Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hasAttributes()Z
    .registers 2

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hasChildNodes()Z
    .registers 2

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 6
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "refChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 145
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api isDefaultNamespace(Ljava/lang/String;)Z
    .registers 4
    .param p1, "namespaceURI"    # Ljava/lang/String;

    .line 551
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "actual":Ljava/lang/String;
    if-nez p1, :cond_d

    .line 553
    if-nez v0, :cond_b

    const/4 v1, 0x1

    goto :goto_11

    :cond_b
    const/4 v1, 0x0

    goto :goto_11

    .line 554
    :cond_d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 552
    :goto_11
    return v1
.end method

.method public final whitelist test-api isEqualNode(Lorg/w3c/dom/Node;)Z
    .registers 11
    .param p1, "arg"    # Lorg/w3c/dom/Node;

    .line 632
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 633
    return v0

    .line 636
    :cond_4
    invoke-static {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->createEqualityKey(Lorg/w3c/dom/Node;)Ljava/util/List;

    move-result-object v1

    .line 637
    .local v1, "listA":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->createEqualityKey(Lorg/w3c/dom/Node;)Ljava/util/List;

    move-result-object v2

    .line 639
    .local v2, "listB":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_18

    .line 640
    return v5

    .line 643
    :cond_18
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_73

    .line 644
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 645
    .local v4, "a":Ljava/lang/Object;
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 647
    .local v6, "b":Ljava/lang/Object;
    if-ne v4, v6, :cond_2a

    .line 648
    goto :goto_6f

    .line 650
    :cond_2a
    if-eqz v4, :cond_72

    if-nez v6, :cond_2f

    goto :goto_72

    .line 653
    :cond_2f
    instance-of v7, v4, Ljava/lang/String;

    if-nez v7, :cond_68

    instance-of v7, v4, Ljava/lang/Short;

    if-eqz v7, :cond_38

    goto :goto_68

    .line 658
    :cond_38
    instance-of v7, v4, Lorg/w3c/dom/NamedNodeMap;

    if-eqz v7, :cond_4d

    .line 659
    instance-of v7, v6, Lorg/w3c/dom/NamedNodeMap;

    if-eqz v7, :cond_4c

    move-object v7, v4

    check-cast v7, Lorg/w3c/dom/NamedNodeMap;

    move-object v8, v6

    check-cast v8, Lorg/w3c/dom/NamedNodeMap;

    .line 660
    invoke-direct {p0, v7, v8}, Lorg/apache/harmony/xml/dom/NodeImpl;->namedNodeMapsEqual(Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/NamedNodeMap;)Z

    move-result v7

    if-nez v7, :cond_6f

    .line 661
    :cond_4c
    return v5

    .line 664
    :cond_4d
    instance-of v7, v4, Lorg/w3c/dom/Node;

    if-eqz v7, :cond_62

    .line 665
    instance-of v7, v6, Lorg/w3c/dom/Node;

    if-eqz v7, :cond_61

    move-object v7, v4

    check-cast v7, Lorg/w3c/dom/Node;

    move-object v8, v6

    check-cast v8, Lorg/w3c/dom/Node;

    .line 666
    invoke-interface {v7, v8}, Lorg/w3c/dom/Node;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-nez v7, :cond_6f

    .line 667
    :cond_61
    return v5

    .line 671
    :cond_62
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 654
    :cond_68
    :goto_68
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6f

    .line 655
    return v5

    .line 643
    .end local v4    # "a":Ljava/lang/Object;
    .end local v6    # "b":Ljava/lang/Object;
    :cond_6f
    :goto_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 651
    .restart local v4    # "a":Ljava/lang/Object;
    .restart local v6    # "b":Ljava/lang/Object;
    :cond_72
    :goto_72
    return v5

    .line 675
    .end local v3    # "i":I
    .end local v4    # "a":Ljava/lang/Object;
    .end local v6    # "b":Ljava/lang/Object;
    :cond_73
    return v0
.end method

.method blacklist isPrefixMappedToUri(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 542
    if-nez p1, :cond_4

    .line 543
    const/4 v0, 0x0

    return v0

    .line 546
    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "actual":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api isSameNode(Lorg/w3c/dom/Node;)Z
    .registers 3
    .param p1, "other"    # Lorg/w3c/dom/Node;

    .line 441
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public whitelist test-api isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 149
    invoke-static {}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->getInstance()Lorg/apache/harmony/xml/dom/DOMImplementationImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/xml/dom/DOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "prefix"    # Ljava/lang/String;

    .line 558
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespacingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v0

    .line 559
    .local v0, "target":Lorg/apache/harmony/xml/dom/NodeImpl;
    move-object v1, v0

    .local v1, "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    :goto_5
    const/4 v2, 0x0

    if-eqz v1, :cond_7d

    .line 561
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v3

    .line 562
    .local v3, "nodePrefix":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 563
    if-nez p1, :cond_17

    if-nez v3, :cond_22

    goto :goto_1d

    .line 565
    :cond_17
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 566
    :goto_1d
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 573
    :cond_22
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->hasAttributes()Z

    move-result v4

    if-nez v4, :cond_29

    .line 574
    goto :goto_78

    .line 576
    :cond_29
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 577
    .local v4, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    .local v6, "length":I
    :goto_32
    if-ge v5, v6, :cond_78

    .line 578
    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 579
    .local v7, "attr":Lorg/w3c/dom/Node;
    const-string v8, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_45

    .line 580
    goto :goto_75

    .line 582
    :cond_45
    const-string v8, "xmlns"

    if-nez p1, :cond_54

    .line 583
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_75

    goto :goto_69

    :cond_54
    nop

    .line 584
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_75

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 585
    :goto_69
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 586
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_74

    move-object v2, v8

    :cond_74
    return-object v2

    .line 577
    .end local v7    # "attr":Lorg/w3c/dom/Node;
    .end local v8    # "value":Ljava/lang/String;
    :cond_75
    :goto_75
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 559
    .end local v3    # "nodePrefix":Ljava/lang/String;
    .end local v4    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v5    # "i":I
    .end local v6    # "length":I
    :cond_78
    :goto_78
    invoke-direct {v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getContainingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v1

    goto :goto_5

    .line 591
    .end local v1    # "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    :cond_7d
    return-object v2
.end method

.method public final whitelist test-api lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "namespaceURI"    # Ljava/lang/String;

    .line 491
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 492
    return-object v0

    .line 498
    :cond_4
    invoke-direct {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespacingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v1

    .line 499
    .local v1, "target":Lorg/apache/harmony/xml/dom/NodeImpl;
    move-object v2, v1

    .local v2, "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    :goto_9
    if-eqz v2, :cond_74

    .line 501
    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 502
    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->isPrefixMappedToUri(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 503
    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 508
    :cond_24
    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/NodeImpl;->hasAttributes()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 509
    goto :goto_6f

    .line 511
    :cond_2b
    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/NodeImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 512
    .local v3, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    .local v5, "length":I
    :goto_34
    if-ge v4, v5, :cond_6f

    .line 513
    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 514
    .local v6, "attr":Lorg/w3c/dom/Node;
    const-string v7, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 515
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    const-string v8, "xmlns"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 516
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5d

    .line 517
    goto :goto_6c

    .line 519
    :cond_5d
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->isPrefixMappedToUri(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 520
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 512
    .end local v6    # "attr":Lorg/w3c/dom/Node;
    :cond_6c
    :goto_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 499
    .end local v3    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v4    # "i":I
    .end local v5    # "length":I
    :cond_6f
    :goto_6f
    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/NodeImpl;->getContainingElement()Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v2

    goto :goto_9

    .line 525
    .end local v2    # "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    :cond_74
    return-object v0
.end method

.method public whitelist test-api normalize()V
    .registers 1

    .line 153
    return-void
.end method

.method public whitelist test-api removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .param p1, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 156
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 6
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 160
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api setNodeValue(Ljava/lang/String;)V
    .registers 5
    .param p1, "nodeValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_3c

    .line 189
    new-instance v0, Lorg/w3c/dom/DOMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported node type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 190
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 172
    :pswitch_26
    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v0, p1}, Lorg/w3c/dom/ProcessingInstruction;->setData(Ljava/lang/String;)V

    .line 173
    return-void

    .line 168
    :pswitch_2d
    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/CharacterData;

    invoke-interface {v0, p1}, Lorg/w3c/dom/CharacterData;->setData(Ljava/lang/String;)V

    .line 169
    return-void

    .line 176
    :pswitch_34
    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 177
    return-void

    .line 186
    :pswitch_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_34
        :pswitch_2d
        :pswitch_2d
        :pswitch_3b
        :pswitch_3b
        :pswitch_26
        :pswitch_2d
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method public whitelist test-api setPrefix(Ljava/lang/String;)V
    .registers 2
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 195
    return-void
.end method

.method public final whitelist test-api setTextContent(Ljava/lang/String;)V
    .registers 5
    .param p1, "textContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 405
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_48

    .line 435
    new-instance v0, Lorg/w3c/dom/DOMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported node type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 436
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 408
    :pswitch_26
    return-void

    .line 431
    :pswitch_27
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->setNodeValue(Ljava/lang/String;)V

    .line 432
    return-void

    .line 416
    :goto_2b
    :pswitch_2b
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v1, v0

    .local v1, "child":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_36

    .line 417
    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2b

    .line 420
    :cond_36
    if-eqz p1, :cond_47

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_47

    .line 421
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 423
    :cond_47
    return-void

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_2b
        :pswitch_2b
        :pswitch_27
        :pswitch_27
        :pswitch_26
        :pswitch_26
        :pswitch_2b
        :pswitch_27
    .end packed-switch
.end method

.method public final whitelist test-api setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "handler"    # Lorg/w3c/dom/UserDataHandler;

    .line 699
    if-eqz p1, :cond_24

    .line 702
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMap(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    move-result-object v0

    .line 703
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    if-nez p2, :cond_11

    .line 704
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    goto :goto_1c

    .line 705
    :cond_11
    new-instance v1, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    invoke-direct {v1, p2, p3}, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;-><init>(Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    :goto_1c
    nop

    .line 706
    .local v1, "previous":Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    if-eqz v1, :cond_22

    iget-object v2, v1, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->value:Ljava/lang/Object;

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    return-object v2

    .line 700
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    .end local v1    # "previous":Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
