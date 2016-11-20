.class public final Lorg/apache/harmony/xml/dom/DocumentImpl;
.super Lorg/apache/harmony/xml/dom/InnerNodeImpl;
.source "DocumentImpl.java"

# interfaces
.implements Lorg/w3c/dom/Document;


# instance fields
.field private documentUri:Ljava/lang/String;

.field private domConfiguration:Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

.field private domImplementation:Lorg/w3c/dom/DOMImplementation;

.field private inputEncoding:Ljava/lang/String;

.field private nodeToUserData:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/xml/dom/NodeImpl$UserData;",
            ">;>;"
        }
    .end annotation
.end field

.field private strictErrorChecking:Z

.field private xmlEncoding:Ljava/lang/String;

.field private xmlStandalone:Z

.field private xmlVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xml/dom/DOMImplementationImpl;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;Ljava/lang/String;)V
    .locals 1
    .param p1, "impl"    # Lorg/apache/harmony/xml/dom/DOMImplementationImpl;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "qualifiedName"    # Ljava/lang/String;
    .param p4, "doctype"    # Lorg/w3c/dom/DocumentType;
    .param p5, "inputEncoding"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 78
    invoke-direct {p0, v0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    #@4
    .line 60
    const-string/jumbo v0, "1.0"

    #@7
    iput-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlVersion:Ljava/lang/String;

    #@9
    .line 61
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlStandalone:Z

    #@c
    .line 62
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->strictErrorChecking:Z

    #@f
    .line 79
    iput-object p0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@11
    .line 80
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domImplementation:Lorg/w3c/dom/DOMImplementation;

    #@13
    .line 81
    iput-object p5, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->inputEncoding:Ljava/lang/String;

    #@15
    .line 83
    if-eqz p4, :cond_0

    #@17
    .line 84
    invoke-virtual {p0, p4}, Lorg/apache/harmony/xml/dom/DocumentImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@1a
    .line 87
    :cond_0
    if-eqz p3, :cond_1

    #@1c
    .line 88
    invoke-virtual {p0, p2, p3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@23
    .line 77
    :cond_1
    return-void
.end method

.method private changeDocumentToThis(Lorg/apache/harmony/xml/dom/NodeImpl;)V
    .locals 6
    .param p1, "node"    # Lorg/apache/harmony/xml/dom/NodeImpl;

    #@0
    .prologue
    .line 292
    iget-object v4, p1, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@2
    invoke-virtual {v4, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMapForRead(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    #@5
    move-result-object v3

    #@6
    .line 293
    .local v3, "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    #@9
    move-result v4

    #@a
    if-nez v4, :cond_0

    #@c
    .line 294
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMap(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    #@f
    move-result-object v4

    #@10
    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@13
    .line 296
    :cond_0
    iput-object p0, p1, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@15
    .line 299
    invoke-virtual {p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@18
    move-result-object v2

    #@19
    .line 300
    .local v2, "list":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    #@1a
    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    #@1d
    move-result v4

    #@1e
    if-ge v1, v4, :cond_1

    #@20
    .line 301
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@23
    move-result-object v4

    #@24
    check-cast v4, Lorg/apache/harmony/xml/dom/NodeImpl;

    #@26
    invoke-direct {p0, v4}, Lorg/apache/harmony/xml/dom/DocumentImpl;->changeDocumentToThis(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    #@29
    .line 300
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 305
    :cond_1
    invoke-virtual {p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    #@2f
    move-result v4

    #@30
    const/4 v5, 0x1

    #@31
    if-ne v4, v5, :cond_2

    #@33
    .line 306
    invoke-virtual {p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@36
    move-result-object v0

    #@37
    .line 307
    .local v0, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v1, 0x0

    #@38
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@3b
    move-result v4

    #@3c
    if-ge v1, v4, :cond_2

    #@3e
    .line 308
    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@41
    move-result-object v4

    #@42
    check-cast v4, Lorg/apache/harmony/xml/dom/AttrImpl;

    #@44
    invoke-direct {p0, v4}, Lorg/apache/harmony/xml/dom/DocumentImpl;->changeDocumentToThis(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    #@47
    .line 307
    add-int/lit8 v1, v1, 0x1

    #@49
    goto :goto_1

    #@4a
    .line 291
    .end local v0    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    :cond_2
    return-void
.end method

.method static isXMLIdentifier(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 102
    return v2

    #@8
    .line 105
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v1

    #@c
    invoke-static {v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifierStart(C)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_1

    #@12
    .line 106
    return v2

    #@13
    .line 109
    :cond_1
    const/4 v0, 0x1

    #@14
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@17
    move-result v1

    #@18
    if-ge v0, v1, :cond_3

    #@1a
    .line 110
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v1

    #@1e
    invoke-static {v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifierPart(C)Z

    #@21
    move-result v1

    #@22
    if-nez v1, :cond_2

    #@24
    .line 111
    return v2

    #@25
    .line 109
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 115
    :cond_3
    const/4 v1, 0x1

    #@29
    return v1
.end method

.method private static isXMLIdentifierPart(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 97
    invoke-static {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifierStart(C)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/16 v1, 0x30

    #@9
    if-lt p0, v1, :cond_1

    #@b
    const/16 v1, 0x39

    #@d
    if-gt p0, v1, :cond_1

    #@f
    :cond_0
    :goto_0
    return v0

    #@10
    :cond_1
    const/16 v1, 0x2d

    #@12
    if-eq p0, v1, :cond_0

    #@14
    const/16 v1, 0x2e

    #@16
    if-eq p0, v1, :cond_0

    #@18
    const/4 v0, 0x0

    #@19
    goto :goto_0
.end method

.method private static isXMLIdentifierStart(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 93
    const/16 v1, 0x41

    #@3
    if-lt p0, v1, :cond_1

    #@5
    const/16 v1, 0x5a

    #@7
    if-gt p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/16 v1, 0x61

    #@c
    if-lt p0, v1, :cond_2

    #@e
    const/16 v1, 0x7a

    #@10
    if-le p0, v1, :cond_0

    #@12
    :cond_2
    const/16 v1, 0x5f

    #@14
    if-eq p0, v1, :cond_0

    #@16
    const/4 v0, 0x0

    #@17
    goto :goto_0
.end method

.method private static notifyUserDataHandlers(SLorg/w3c/dom/Node;Lorg/apache/harmony/xml/dom/NodeImpl;)V
    .locals 10
    .param p0, "operation"    # S
    .param p1, "source"    # Lorg/w3c/dom/Node;
    .param p2, "destination"    # Lorg/apache/harmony/xml/dom/NodeImpl;

    #@0
    .prologue
    .line 531
    instance-of v0, p1, Lorg/apache/harmony/xml/dom/NodeImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 532
    return-void

    #@5
    :cond_0
    move-object v8, p1

    #@6
    .line 535
    check-cast v8, Lorg/apache/harmony/xml/dom/NodeImpl;

    #@8
    .line 536
    .local v8, "srcImpl":Lorg/apache/harmony/xml/dom/NodeImpl;
    iget-object v0, v8, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 537
    return-void

    #@d
    .line 541
    :cond_1
    iget-object v0, v8, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@f
    invoke-virtual {v0, v8}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMapForRead(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    #@12
    move-result-object v0

    #@13
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@16
    move-result-object v0

    #@17
    .line 540
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v7

    #@1b
    .local v7, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_3

    #@21
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v6

    #@25
    check-cast v6, Ljava/util/Map$Entry;

    #@27
    .line 542
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2a
    move-result-object v9

    #@2b
    check-cast v9, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    #@2d
    .line 543
    .local v9, "userData":Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    iget-object v0, v9, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->handler:Lorg/w3c/dom/UserDataHandler;

    #@2f
    if-eqz v0, :cond_2

    #@31
    .line 544
    iget-object v0, v9, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->handler:Lorg/w3c/dom/UserDataHandler;

    #@33
    .line 545
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@36
    move-result-object v2

    #@37
    check-cast v2, Ljava/lang/String;

    #@39
    iget-object v3, v9, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->value:Ljava/lang/Object;

    #@3b
    move v1, p0

    #@3c
    move-object v4, p1

    #@3d
    move-object v5, p2

    #@3e
    .line 544
    invoke-interface/range {v0 .. v5}, Lorg/w3c/dom/UserDataHandler;->handle(SLjava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    #@41
    goto :goto_0

    #@42
    .line 530
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    .end local v9    # "userData":Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    :cond_3
    return-void
.end method

.method private shallowCopy(SLorg/w3c/dom/Node;)Lorg/apache/harmony/xml/dom/NodeImpl;
    .locals 13
    .param p1, "operation"    # S
    .param p2, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/16 v12, 0x9

    #@2
    .line 130
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    #@5
    move-result v9

    #@6
    packed-switch v9, :pswitch_data_0

    #@9
    .line 204
    new-instance v9, Lorg/w3c/dom/DOMException;

    #@b
    .line 205
    new-instance v10, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v11, "Unsupported node type "

    #@13
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v10

    #@17
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    #@1a
    move-result v11

    #@1b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v10

    #@1f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v10

    #@23
    .line 204
    invoke-direct {v9, v12, v10}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@26
    throw v9

    #@27
    :pswitch_0
    move-object v0, p2

    #@28
    .line 132
    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    #@2a
    .line 134
    .local v0, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-boolean v9, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    #@2c
    if-eqz v9, :cond_0

    #@2e
    .line 135
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    #@31
    move-result-object v9

    #@32
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    #@35
    move-result-object v10

    #@36
    invoke-virtual {p0, v9, v10}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    #@39
    move-result-object v1

    #@3a
    .line 136
    .local v1, "attrCopy":Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getPrefix()Ljava/lang/String;

    #@3d
    move-result-object v9

    #@3e
    invoke-virtual {v1, v9}, Lorg/apache/harmony/xml/dom/AttrImpl;->setPrefix(Ljava/lang/String;)V

    #@41
    .line 140
    :goto_0
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getValue()Ljava/lang/String;

    #@44
    move-result-object v9

    #@45
    invoke-virtual {v1, v9}, Lorg/apache/harmony/xml/dom/AttrImpl;->setNodeValue(Ljava/lang/String;)V

    #@48
    .line 141
    return-object v1

    #@49
    .line 138
    .end local v1    # "attrCopy":Lorg/apache/harmony/xml/dom/AttrImpl;
    :cond_0
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getName()Ljava/lang/String;

    #@4c
    move-result-object v9

    #@4d
    invoke-virtual {p0, v9}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    #@50
    move-result-object v1

    #@51
    .restart local v1    # "attrCopy":Lorg/apache/harmony/xml/dom/AttrImpl;
    goto :goto_0

    #@52
    .line 144
    .end local v0    # "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    .end local v1    # "attrCopy":Lorg/apache/harmony/xml/dom/AttrImpl;
    :pswitch_1
    check-cast p2, Lorg/w3c/dom/CharacterData;

    #@54
    .end local p2    # "node":Lorg/w3c/dom/Node;
    invoke-interface {p2}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    #@57
    move-result-object v9

    #@58
    invoke-virtual {p0, v9}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createCDATASection(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    #@5b
    move-result-object v9

    #@5c
    return-object v9

    #@5d
    .line 147
    .restart local p2    # "node":Lorg/w3c/dom/Node;
    :pswitch_2
    check-cast p2, Lorg/w3c/dom/Comment;

    #@5f
    .end local p2    # "node":Lorg/w3c/dom/Node;
    invoke-interface {p2}, Lorg/w3c/dom/Comment;->getData()Ljava/lang/String;

    #@62
    move-result-object v9

    #@63
    invoke-virtual {p0, v9}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createComment(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CommentImpl;

    #@66
    move-result-object v9

    #@67
    return-object v9

    #@68
    .line 150
    .restart local p2    # "node":Lorg/w3c/dom/Node;
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createDocumentFragment()Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;

    #@6b
    move-result-object v9

    #@6c
    return-object v9

    #@6d
    .line 154
    :pswitch_4
    new-instance v9, Lorg/w3c/dom/DOMException;

    #@6f
    .line 155
    new-instance v10, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v11, "Cannot copy node of type "

    #@77
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v10

    #@7b
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    #@7e
    move-result v11

    #@7f
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@82
    move-result-object v10

    #@83
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v10

    #@87
    .line 154
    invoke-direct {v9, v12, v10}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@8a
    throw v9

    #@8b
    :pswitch_5
    move-object v3, p2

    #@8c
    .line 158
    check-cast v3, Lorg/apache/harmony/xml/dom/ElementImpl;

    #@8e
    .line 160
    .local v3, "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    iget-boolean v9, v3, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    #@90
    if-eqz v9, :cond_1

    #@92
    .line 161
    invoke-virtual {v3}, Lorg/apache/harmony/xml/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    #@95
    move-result-object v9

    #@96
    invoke-virtual {v3}, Lorg/apache/harmony/xml/dom/ElementImpl;->getLocalName()Ljava/lang/String;

    #@99
    move-result-object v10

    #@9a
    invoke-virtual {p0, v9, v10}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    #@9d
    move-result-object v6

    #@9e
    .line 162
    .local v6, "elementCopy":Lorg/apache/harmony/xml/dom/ElementImpl;
    invoke-virtual {v3}, Lorg/apache/harmony/xml/dom/ElementImpl;->getPrefix()Ljava/lang/String;

    #@a1
    move-result-object v9

    #@a2
    invoke-virtual {v6, v9}, Lorg/apache/harmony/xml/dom/ElementImpl;->setPrefix(Ljava/lang/String;)V

    #@a5
    .line 167
    :goto_1
    invoke-virtual {v3}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@a8
    move-result-object v2

    #@a9
    .line 168
    .local v2, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v7, 0x0

    #@aa
    .local v7, "i":I
    :goto_2
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@ad
    move-result v9

    #@ae
    if-ge v7, v9, :cond_3

    #@b0
    .line 169
    invoke-interface {v2, v7}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@b3
    move-result-object v4

    #@b4
    check-cast v4, Lorg/apache/harmony/xml/dom/AttrImpl;

    #@b6
    .line 170
    .local v4, "elementAttr":Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-direct {p0, p1, v4}, Lorg/apache/harmony/xml/dom/DocumentImpl;->shallowCopy(SLorg/w3c/dom/Node;)Lorg/apache/harmony/xml/dom/NodeImpl;

    #@b9
    move-result-object v5

    #@ba
    check-cast v5, Lorg/apache/harmony/xml/dom/AttrImpl;

    #@bc
    .line 171
    .local v5, "elementAttrCopy":Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-static {p1, v4, v5}, Lorg/apache/harmony/xml/dom/DocumentImpl;->notifyUserDataHandlers(SLorg/w3c/dom/Node;Lorg/apache/harmony/xml/dom/NodeImpl;)V

    #@bf
    .line 172
    iget-boolean v9, v4, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    #@c1
    if-eqz v9, :cond_2

    #@c3
    .line 173
    invoke-virtual {v6, v5}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    #@c6
    .line 168
    :goto_3
    add-int/lit8 v7, v7, 0x1

    #@c8
    goto :goto_2

    #@c9
    .line 164
    .end local v2    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v4    # "elementAttr":Lorg/apache/harmony/xml/dom/AttrImpl;
    .end local v5    # "elementAttrCopy":Lorg/apache/harmony/xml/dom/AttrImpl;
    .end local v6    # "elementCopy":Lorg/apache/harmony/xml/dom/ElementImpl;
    .end local v7    # "i":I
    :cond_1
    invoke-virtual {v3}, Lorg/apache/harmony/xml/dom/ElementImpl;->getTagName()Ljava/lang/String;

    #@cc
    move-result-object v9

    #@cd
    invoke-virtual {p0, v9}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElement(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    #@d0
    move-result-object v6

    #@d1
    .restart local v6    # "elementCopy":Lorg/apache/harmony/xml/dom/ElementImpl;
    goto :goto_1

    #@d2
    .line 175
    .restart local v2    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .restart local v4    # "elementAttr":Lorg/apache/harmony/xml/dom/AttrImpl;
    .restart local v5    # "elementAttrCopy":Lorg/apache/harmony/xml/dom/AttrImpl;
    .restart local v7    # "i":I
    :cond_2
    invoke-virtual {v6, v5}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    #@d5
    goto :goto_3

    #@d6
    .line 178
    .end local v4    # "elementAttr":Lorg/apache/harmony/xml/dom/AttrImpl;
    .end local v5    # "elementAttrCopy":Lorg/apache/harmony/xml/dom/AttrImpl;
    :cond_3
    return-object v6

    #@d7
    .line 183
    .end local v2    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v3    # "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    .end local v6    # "elementCopy":Lorg/apache/harmony/xml/dom/ElementImpl;
    .end local v7    # "i":I
    :pswitch_6
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    #@d9
    invoke-direct {v9}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@dc
    throw v9

    #@dd
    .line 194
    :pswitch_7
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@e0
    move-result-object v9

    #@e1
    invoke-virtual {p0, v9}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createEntityReference(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/EntityReferenceImpl;

    #@e4
    move-result-object v9

    #@e5
    return-object v9

    #@e6
    :pswitch_8
    move-object v8, p2

    #@e7
    .line 197
    check-cast v8, Lorg/w3c/dom/ProcessingInstruction;

    #@e9
    .line 198
    .local v8, "pi":Lorg/w3c/dom/ProcessingInstruction;
    invoke-interface {v8}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    #@ec
    move-result-object v9

    #@ed
    invoke-interface {v8}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    #@f0
    move-result-object v10

    #@f1
    invoke-virtual {p0, v9, v10}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;

    #@f4
    move-result-object v9

    #@f5
    return-object v9

    #@f6
    .line 201
    .end local v8    # "pi":Lorg/w3c/dom/ProcessingInstruction;
    :pswitch_9
    check-cast p2, Lorg/w3c/dom/Text;

    #@f8
    .end local p2    # "node":Lorg/w3c/dom/Node;
    invoke-interface {p2}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    #@fb
    move-result-object v9

    #@fc
    invoke-virtual {p0, v9}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/TextImpl;

    #@ff
    move-result-object v9

    #@100
    return-object v9

    #@101
    .line 130
    nop

    #@102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 7
    .param p1, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/16 v6, 0x9

    #@2
    const/4 v4, 0x0

    #@3
    .line 243
    instance-of v3, p1, Lorg/apache/harmony/xml/dom/NodeImpl;

    #@5
    if-nez v3, :cond_0

    #@7
    .line 244
    return-object v4

    #@8
    :cond_0
    move-object v1, p1

    #@9
    .line 246
    check-cast v1, Lorg/apache/harmony/xml/dom/NodeImpl;

    #@b
    .line 247
    .local v1, "nodeImpl":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    #@e
    move-result v3

    #@f
    packed-switch v3, :pswitch_data_0

    #@12
    .line 272
    new-instance v3, Lorg/w3c/dom/DOMException;

    #@14
    .line 273
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v5, "Unsupported node type "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@23
    move-result v5

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    .line 272
    invoke-direct {v3, v6, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@2f
    throw v3

    #@30
    :pswitch_0
    move-object v0, p1

    #@31
    .line 249
    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    #@33
    .line 250
    .local v0, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-object v3, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    #@35
    if-eqz v3, :cond_1

    #@37
    .line 251
    iget-object v3, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    #@39
    invoke-virtual {v3, v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    #@3c
    .line 276
    .end local v0    # "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    :cond_1
    :pswitch_1
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentNode()Lorg/w3c/dom/Node;

    #@3f
    move-result-object v2

    #@40
    .line 277
    .local v2, "parent":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_2

    #@42
    .line 278
    invoke-interface {v2, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@45
    .line 281
    :cond_2
    invoke-direct {p0, v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->changeDocumentToThis(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    #@48
    .line 282
    const/4 v3, 0x5

    #@49
    invoke-static {v3, p1, v4}, Lorg/apache/harmony/xml/dom/DocumentImpl;->notifyUserDataHandlers(SLorg/w3c/dom/Node;Lorg/apache/harmony/xml/dom/NodeImpl;)V

    #@4c
    .line 283
    return-object v1

    #@4d
    .line 268
    .end local v2    # "parent":Lorg/w3c/dom/Node;
    :pswitch_2
    new-instance v3, Lorg/w3c/dom/DOMException;

    #@4f
    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v5, "Cannot adopt nodes of type "

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    #@5e
    move-result v5

    #@5f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    .line 268
    invoke-direct {v3, v6, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@6a
    throw v3

    #@6b
    .line 247
    nop

    #@6c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method cloneOrImportNode(SLorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 4
    .param p1, "operation"    # S
    .param p2, "node"    # Lorg/w3c/dom/Node;
    .param p3, "deep"    # Z

    #@0
    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->shallowCopy(SLorg/w3c/dom/Node;)Lorg/apache/harmony/xml/dom/NodeImpl;

    #@3
    move-result-object v0

    #@4
    .line 222
    .local v0, "copy":Lorg/apache/harmony/xml/dom/NodeImpl;
    if-eqz p3, :cond_0

    #@6
    .line 223
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@9
    move-result-object v2

    #@a
    .line 224
    .local v2, "list":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    #@e
    move-result v3

    #@f
    if-ge v1, v3, :cond_0

    #@11
    .line 225
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {p0, p1, v3, p3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->cloneOrImportNode(SLorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v0, v3}, Lorg/apache/harmony/xml/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@1c
    .line 224
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 229
    .end local v1    # "i":I
    .end local v2    # "list":Lorg/w3c/dom/NodeList;
    :cond_0
    invoke-static {p1, p2, v0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->notifyUserDataHandlers(SLorg/w3c/dom/Node;Lorg/apache/harmony/xml/dom/NodeImpl;)V

    #@22
    .line 230
    return-object v0
.end method

.method public createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 324
    new-instance v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    #@2
    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/AttrImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 328
    new-instance v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lorg/apache/harmony/xml/dom/AttrImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 327
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createCDATASection(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CDATASectionImpl;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 332
    new-instance v0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    #@2
    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createCDATASection(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CommentImpl;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 336
    new-instance v0, Lorg/apache/harmony/xml/dom/CommentImpl;

    #@2
    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/CommentImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 335
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createComment(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CommentImpl;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createDocumentFragment()Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;
    .locals 1

    #@0
    .prologue
    .line 340
    new-instance v0, Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;

    #@2
    invoke-direct {v0, p0}, Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .locals 1

    #@0
    .prologue
    .line 339
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createDocumentFragment()Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 344
    new-instance v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    #@2
    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 343
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElement(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 348
    new-instance v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 347
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createEntityReference(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/EntityReferenceImpl;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 352
    new-instance v0, Lorg/apache/harmony/xml/dom/EntityReferenceImpl;

    #@2
    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/EntityReferenceImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createEntityReference(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/EntityReferenceImpl;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 356
    new-instance v0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 355
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createTextNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/TextImpl;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 360
    new-instance v0, Lorg/apache/harmony/xml/dom/TextImpl;

    #@2
    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/TextImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 359
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/TextImpl;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDoctype()Lorg/w3c/dom/DocumentType;
    .locals 3

    #@0
    .prologue
    .line 364
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->children:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    #@12
    .line 365
    .local v0, "child":Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    instance-of v2, v0, Lorg/w3c/dom/DocumentType;

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 366
    check-cast v0, Lorg/w3c/dom/DocumentType;

    #@18
    .end local v0    # "child":Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    return-object v0

    #@19
    .line 370
    :cond_1
    const/4 v2, 0x0

    #@1a
    return-object v2
.end method

.method public getDocumentElement()Lorg/w3c/dom/Element;
    .locals 3

    #@0
    .prologue
    .line 374
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->children:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "child$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    #@12
    .line 375
    .local v0, "child":Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    instance-of v2, v0, Lorg/w3c/dom/Element;

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 376
    check-cast v0, Lorg/w3c/dom/Element;

    #@18
    .end local v0    # "child":Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    return-object v0

    #@19
    .line 380
    :cond_1
    const/4 v2, 0x0

    #@1a
    return-object v2
.end method

.method public getDocumentURI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 468
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->documentUri:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .locals 1

    #@0
    .prologue
    .line 476
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domConfiguration:Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 477
    new-instance v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    #@6
    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domConfiguration:Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    #@b
    .line 479
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domConfiguration:Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    #@d
    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2
    .param p1, "elementId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 384
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    #@7
    .line 386
    .local v0, "root":Lorg/apache/harmony/xml/dom/ElementImpl;
    if-nez v0, :cond_0

    #@9
    :goto_0
    return-object v1

    #@a
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@d
    move-result-object v1

    #@e
    goto :goto_0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 390
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    #@2
    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    #@5
    .line 391
    .local v0, "result":Lorg/apache/harmony/xml/dom/NodeListImpl;
    invoke-virtual {p0, v0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getElementsByTagName(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;)V

    #@8
    .line 392
    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 396
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    #@2
    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    #@5
    .line 397
    .local v0, "result":Lorg/apache/harmony/xml/dom/NodeListImpl;
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getElementsByTagNameNS(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 398
    return-object v0
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    #@0
    .prologue
    .line 402
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domImplementation:Lorg/w3c/dom/DOMImplementation;

    #@2
    return-object v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 436
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->inputEncoding:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 407
    const-string/jumbo v0, "#document"

    #@3
    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    #@0
    .prologue
    .line 412
    const/16 v0, 0x9

    #@2
    return v0
.end method

.method public getStrictErrorChecking()Z
    .locals 1

    #@0
    .prologue
    .line 460
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->strictErrorChecking:Z

    #@2
    return v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 432
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method getUserDataMap(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;
    .locals 2
    .param p1, "node"    # Lorg/apache/harmony/xml/dom/NodeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/xml/dom/NodeImpl$UserData;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 496
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 497
    new-instance v1, Ljava/util/WeakHashMap;

    #@6
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    #@9
    iput-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    #@b
    .line 499
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    #@d
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Ljava/util/Map;

    #@13
    .line 500
    .local v0, "userDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    if-nez v0, :cond_1

    #@15
    .line 501
    new-instance v0, Ljava/util/HashMap;

    #@17
    .end local v0    # "userDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1a
    .line 502
    .restart local v0    # "userDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    #@1c
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 504
    :cond_1
    return-object v0
.end method

.method getUserDataMapForRead(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;
    .locals 2
    .param p1, "node"    # Lorg/apache/harmony/xml/dom/NodeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/xml/dom/NodeImpl$UserData;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 512
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 513
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@7
    move-result-object v1

    #@8
    return-object v1

    #@9
    .line 515
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    #@b
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/util/Map;

    #@11
    .line 516
    .local v0, "userDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    if-nez v0, :cond_1

    #@13
    .line 517
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@16
    move-result-object v0

    #@17
    .line 516
    .end local v0    # "userDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    :cond_1
    return-object v0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 440
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlEncoding:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getXmlStandalone()Z
    .locals 1

    #@0
    .prologue
    .line 444
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlStandalone:Z

    #@2
    return v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 452
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "importedNode"    # Lorg/w3c/dom/Node;
    .param p2, "deep"    # Z

    #@0
    .prologue
    .line 234
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->cloneOrImportNode(SLorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "toInsert"    # Lorg/w3c/dom/Node;
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    .line 420
    instance-of v0, p1, Lorg/w3c/dom/Element;

    #@3
    if-eqz v0, :cond_0

    #@5
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 421
    new-instance v0, Lorg/w3c/dom/DOMException;

    #@d
    .line 422
    const-string/jumbo v1, "Only one root element allowed"

    #@10
    .line 421
    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 424
    :cond_0
    instance-of v0, p1, Lorg/w3c/dom/DocumentType;

    #@16
    if-eqz v0, :cond_1

    #@18
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDoctype()Lorg/w3c/dom/DocumentType;

    #@1b
    move-result-object v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 425
    new-instance v0, Lorg/w3c/dom/DOMException;

    #@20
    .line 426
    const-string/jumbo v1, "Only one DOCTYPE element allowed"

    #@23
    .line 425
    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 428
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method

.method public normalizeDocument()V
    .locals 2

    #@0
    .prologue
    .line 483
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    #@3
    move-result-object v0

    #@4
    .line 484
    .local v0, "root":Lorg/w3c/dom/Element;
    if-nez v0, :cond_0

    #@6
    .line 485
    return-void

    #@7
    .line 488
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDomConfig()Lorg/w3c/dom/DOMConfiguration;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    #@d
    invoke-virtual {v1, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->normalize(Lorg/w3c/dom/Node;)V

    #@10
    .line 482
    return-void
.end method

.method public renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "qualifiedName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x4

    #@2
    .line 314
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@5
    move-result-object v0

    #@6
    if-eq v0, p0, :cond_0

    #@8
    .line 315
    new-instance v0, Lorg/w3c/dom/DOMException;

    #@a
    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_0
    move-object v0, p1

    #@f
    .line 318
    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    #@11
    invoke-static {v0, p2, p3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->setNameNS(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 319
    invoke-static {v1, p1, v2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->notifyUserDataHandlers(SLorg/w3c/dom/Node;Lorg/apache/harmony/xml/dom/NodeImpl;)V

    #@17
    .line 320
    return-object p1
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "documentUri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 472
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->documentUri:Ljava/lang/String;

    #@2
    .line 471
    return-void
.end method

.method public setStrictErrorChecking(Z)V
    .locals 0
    .param p1, "strictErrorChecking"    # Z

    #@0
    .prologue
    .line 464
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->strictErrorChecking:Z

    #@2
    .line 463
    return-void
.end method

.method public setXmlStandalone(Z)V
    .locals 0
    .param p1, "xmlStandalone"    # Z

    #@0
    .prologue
    .line 448
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlStandalone:Z

    #@2
    .line 447
    return-void
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "xmlVersion"    # Ljava/lang/String;

    #@0
    .prologue
    .line 456
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlVersion:Ljava/lang/String;

    #@2
    .line 455
    return-void
.end method
