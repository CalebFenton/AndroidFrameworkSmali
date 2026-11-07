.class public final Lorg/apache/harmony/xml/dom/DocumentImpl;
.super Lorg/apache/harmony/xml/dom/InnerNodeImpl;
.source "DocumentImpl.java"

# interfaces
.implements Lorg/w3c/dom/Document;


# instance fields
.field private blacklist documentUri:Ljava/lang/String;

.field private blacklist domConfiguration:Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

.field private blacklist domImplementation:Lorg/w3c/dom/DOMImplementation;

.field private blacklist inputEncoding:Ljava/lang/String;

.field private blacklist nodeToUserData:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/xml/dom/NodeImpl$UserData;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist strictErrorChecking:Z

.field private blacklist xmlStandalone:Z

.field private blacklist xmlVersion:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Lorg/apache/harmony/xml/dom/DOMImplementationImpl;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;Ljava/lang/String;)V
    .registers 7
    .param p1, "impl"    # Lorg/apache/harmony/xml/dom/DOMImplementationImpl;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "qualifiedName"    # Ljava/lang/String;
    .param p4, "doctype"    # Lorg/w3c/dom/DocumentType;
    .param p5, "inputEncoding"    # Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 59
    const-string v0, "1.0"

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlVersion:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlStandalone:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->strictErrorChecking:Z

    .line 78
    iput-object p0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    .line 79
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domImplementation:Lorg/w3c/dom/DOMImplementation;

    .line 80
    iput-object p5, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->inputEncoding:Ljava/lang/String;

    .line 82
    if-eqz p4, :cond_19

    .line 83
    invoke-virtual {p0, p4}, Lorg/apache/harmony/xml/dom/DocumentImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 86
    :cond_19
    if-eqz p3, :cond_22

    .line 87
    invoke-virtual {p0, p2, p3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 89
    :cond_22
    return-void
.end method

.method private blacklist changeDocumentToThis(Lorg/apache/harmony/xml/dom/NodeImpl;)V
    .registers 7
    .param p1, "node"    # Lorg/apache/harmony/xml/dom/NodeImpl;

    .line 291
    iget-object v0, p1, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMapForRead(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    move-result-object v0

    .line 292
    .local v0, "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 293
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMap(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 295
    :cond_13
    iput-object p0, p1, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    .line 298
    invoke-virtual {p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 299
    .local v1, "list":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 300
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/xml/dom/NodeImpl;

    invoke-direct {p0, v3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->changeDocumentToThis(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 299
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 304
    .end local v2    # "i":I
    :cond_2c
    invoke-virtual {p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4a

    .line 305
    invoke-virtual {p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 306
    .local v2, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_38
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_4a

    .line 307
    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/apache/harmony/xml/dom/AttrImpl;

    invoke-direct {p0, v4}, Lorg/apache/harmony/xml/dom/DocumentImpl;->changeDocumentToThis(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 310
    .end local v2    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v3    # "i":I
    :cond_4a
    return-void
.end method

.method static blacklist isXMLIdentifier(Ljava/lang/String;)Z
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 101
    return v1

    .line 104
    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_13

    .line 105
    return v1

    .line 108
    :cond_13
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_28

    .line 109
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_25

    .line 110
    return v1

    .line 108
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 114
    .end local v0    # "i":I
    :cond_28
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist isXMLIdentifierPart(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 96
    invoke-static {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->isXMLIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_19

    const/16 v0, 0x30

    if-lt p0, v0, :cond_e

    const/16 v0, 0x39

    if-le p0, v0, :cond_19

    :cond_e
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_19

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method private static blacklist isXMLIdentifierStart(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 92
    const/16 v0, 0x41

    if-lt p0, v0, :cond_8

    const/16 v0, 0x5a

    if-le p0, v0, :cond_14

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x7a

    if-le p0, v0, :cond_14

    :cond_10
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private static blacklist notifyUserDataHandlers(SLorg/w3c/dom/Node;Lorg/apache/harmony/xml/dom/NodeImpl;)V
    .registers 14
    .param p0, "operation"    # S
    .param p1, "source"    # Lorg/w3c/dom/Node;
    .param p2, "destination"    # Lorg/apache/harmony/xml/dom/NodeImpl;

    .line 530
    instance-of v0, p1, Lorg/apache/harmony/xml/dom/NodeImpl;

    if-nez v0, :cond_5

    .line 531
    return-void

    .line 534
    :cond_5
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    .line 535
    .local v0, "srcImpl":Lorg/apache/harmony/xml/dom/NodeImpl;
    iget-object v1, v0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-nez v1, :cond_d

    .line 536
    return-void

    .line 540
    :cond_d
    iget-object v1, v0, Lorg/apache/harmony/xml/dom/NodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getUserDataMapForRead(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 541
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;

    .line 542
    .local v3, "userData":Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    iget-object v4, v3, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->handler:Lorg/w3c/dom/UserDataHandler;

    if-eqz v4, :cond_43

    .line 543
    iget-object v5, v3, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->handler:Lorg/w3c/dom/UserDataHandler;

    .line 544
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    iget-object v8, v3, Lorg/apache/harmony/xml/dom/NodeImpl$UserData;->value:Ljava/lang/Object;

    .line 543
    move v6, p0

    move-object v9, p1

    move-object v10, p2

    .end local p0    # "operation":S
    .end local p1    # "source":Lorg/w3c/dom/Node;
    .end local p2    # "destination":Lorg/apache/harmony/xml/dom/NodeImpl;
    .local v6, "operation":S
    .local v9, "source":Lorg/w3c/dom/Node;
    .local v10, "destination":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-interface/range {v5 .. v10}, Lorg/w3c/dom/UserDataHandler;->handle(SLjava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    goto :goto_46

    .line 542
    .end local v6    # "operation":S
    .end local v9    # "source":Lorg/w3c/dom/Node;
    .end local v10    # "destination":Lorg/apache/harmony/xml/dom/NodeImpl;
    .restart local p0    # "operation":S
    .restart local p1    # "source":Lorg/w3c/dom/Node;
    .restart local p2    # "destination":Lorg/apache/harmony/xml/dom/NodeImpl;
    :cond_43
    move v6, p0

    move-object v9, p1

    move-object v10, p2

    .line 546
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    .end local v3    # "userData":Lorg/apache/harmony/xml/dom/NodeImpl$UserData;
    .end local p0    # "operation":S
    .end local p1    # "source":Lorg/w3c/dom/Node;
    .end local p2    # "destination":Lorg/apache/harmony/xml/dom/NodeImpl;
    .restart local v6    # "operation":S
    .restart local v9    # "source":Lorg/w3c/dom/Node;
    .restart local v10    # "destination":Lorg/apache/harmony/xml/dom/NodeImpl;
    :goto_46
    move p0, v6

    move-object p1, v9

    move-object p2, v10

    goto :goto_1b

    .line 547
    .end local v6    # "operation":S
    .end local v9    # "source":Lorg/w3c/dom/Node;
    .end local v10    # "destination":Lorg/apache/harmony/xml/dom/NodeImpl;
    .restart local p0    # "operation":S
    .restart local p1    # "source":Lorg/w3c/dom/Node;
    .restart local p2    # "destination":Lorg/apache/harmony/xml/dom/NodeImpl;
    :cond_4a
    return-void
.end method

.method private blacklist shallowCopy(SLorg/w3c/dom/Node;)Lorg/apache/harmony/xml/dom/NodeImpl;
    .registers 10
    .param p1, "operation"    # S
    .param p2, "node"    # Lorg/w3c/dom/Node;

    .line 129
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    packed-switch v0, :pswitch_data_102

    .line 203
    new-instance v0, Lorg/w3c/dom/DOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported node type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 204
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 149
    :pswitch_26
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createDocumentFragment()Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;

    move-result-object v0

    return-object v0

    .line 153
    :pswitch_2b
    new-instance v0, Lorg/w3c/dom/DOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot copy node of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 154
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 146
    :pswitch_48
    move-object v0, p2

    check-cast v0, Lorg/w3c/dom/Comment;

    invoke-interface {v0}, Lorg/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createComment(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CommentImpl;

    move-result-object v0

    return-object v0

    .line 196
    :pswitch_54
    move-object v0, p2

    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    .line 197
    .local v0, "pi":Lorg/w3c/dom/ProcessingInstruction;
    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;

    move-result-object v1

    return-object v1

    .line 182
    .end local v0    # "pi":Lorg/w3c/dom/ProcessingInstruction;
    :pswitch_64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 193
    :pswitch_6a
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createEntityReference(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/EntityReferenceImpl;

    move-result-object v0

    return-object v0

    .line 143
    :pswitch_73
    move-object v0, p2

    check-cast v0, Lorg/w3c/dom/CharacterData;

    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createCDATASection(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    move-result-object v0

    return-object v0

    .line 200
    :pswitch_7f
    move-object v0, p2

    check-cast v0, Lorg/w3c/dom/Text;

    invoke-interface {v0}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v0

    return-object v0

    .line 131
    :pswitch_8b
    move-object v0, p2

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 133
    .local v0, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-boolean v1, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    if-eqz v1, :cond_a6

    .line 134
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v1

    .line 135
    .local v1, "attrCopy":Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xml/dom/AttrImpl;->setPrefix(Ljava/lang/String;)V

    goto :goto_ae

    .line 137
    .end local v1    # "attrCopy":Lorg/apache/harmony/xml/dom/AttrImpl;
    :cond_a6
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v1

    .line 139
    .restart local v1    # "attrCopy":Lorg/apache/harmony/xml/dom/AttrImpl;
    :goto_ae
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xml/dom/AttrImpl;->setNodeValue(Ljava/lang/String;)V

    .line 140
    return-object v1

    .line 157
    .end local v0    # "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    .end local v1    # "attrCopy":Lorg/apache/harmony/xml/dom/AttrImpl;
    :pswitch_b6
    move-object v0, p2

    check-cast v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 159
    .local v0, "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    iget-boolean v1, v0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    if-eqz v1, :cond_d1

    .line 160
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    move-result-object v1

    .line 161
    .local v1, "elementCopy":Lorg/apache/harmony/xml/dom/ElementImpl;
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xml/dom/ElementImpl;->setPrefix(Ljava/lang/String;)V

    goto :goto_d9

    .line 163
    .end local v1    # "elementCopy":Lorg/apache/harmony/xml/dom/ElementImpl;
    :cond_d1
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElement(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    move-result-object v1

    .line 166
    .restart local v1    # "elementCopy":Lorg/apache/harmony/xml/dom/ElementImpl;
    :goto_d9
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 167
    .local v2, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_de
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_101

    .line 168
    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 169
    .local v4, "elementAttr":Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-direct {p0, p1, v4}, Lorg/apache/harmony/xml/dom/DocumentImpl;->shallowCopy(SLorg/w3c/dom/Node;)Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v5

    check-cast v5, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 170
    .local v5, "elementAttrCopy":Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-static {p1, v4, v5}, Lorg/apache/harmony/xml/dom/DocumentImpl;->notifyUserDataHandlers(SLorg/w3c/dom/Node;Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 171
    iget-boolean v6, v4, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    if-eqz v6, :cond_fb

    .line 172
    invoke-virtual {v1, v5}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    goto :goto_fe

    .line 174
    :cond_fb
    invoke-virtual {v1, v5}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 167
    .end local v4    # "elementAttr":Lorg/apache/harmony/xml/dom/AttrImpl;
    .end local v5    # "elementAttrCopy":Lorg/apache/harmony/xml/dom/AttrImpl;
    :goto_fe
    add-int/lit8 v3, v3, 0x1

    goto :goto_de

    .line 177
    .end local v3    # "i":I
    :cond_101
    return-object v1

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_b6
        :pswitch_8b
        :pswitch_7f
        :pswitch_73
        :pswitch_6a
        :pswitch_64
        :pswitch_54
        :pswitch_48
        :pswitch_2b
        :pswitch_2b
        :pswitch_26
        :pswitch_64
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 7
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .line 242
    instance-of v0, p1, Lorg/apache/harmony/xml/dom/NodeImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 243
    return-object v1

    .line 245
    :cond_6
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    .line 246
    .local v0, "nodeImpl":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    packed-switch v2, :pswitch_data_6c

    .line 271
    new-instance v1, Lorg/w3c/dom/DOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported node type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 272
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 267
    :pswitch_2f
    new-instance v1, Lorg/w3c/dom/DOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot adopt nodes of type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 268
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 248
    :pswitch_4c
    move-object v2, p1

    check-cast v2, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 249
    .local v2, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-object v3, v2, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    if-eqz v3, :cond_5a

    .line 250
    iget-object v3, v2, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-virtual {v3, v2}, Lorg/apache/harmony/xml/dom/ElementImpl;->removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    goto :goto_5a

    .line 261
    .end local v2    # "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    :pswitch_59
    nop

    .line 275
    :cond_5a
    :goto_5a
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/NodeImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 276
    .local v2, "parent":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_63

    .line 277
    invoke-interface {v2, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 280
    :cond_63
    invoke-direct {p0, v0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->changeDocumentToThis(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 281
    const/4 v3, 0x5

    invoke-static {v3, p1, v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->notifyUserDataHandlers(SLorg/w3c/dom/Node;Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 282
    return-object v0

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_59
        :pswitch_4c
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_2f
        :pswitch_59
        :pswitch_59
        :pswitch_2f
        :pswitch_2f
        :pswitch_59
        :pswitch_2f
    .end packed-switch
.end method

.method blacklist cloneOrImportNode(SLorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .registers 8
    .param p1, "operation"    # S
    .param p2, "node"    # Lorg/w3c/dom/Node;
    .param p3, "deep"    # Z

    .line 219
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->shallowCopy(SLorg/w3c/dom/Node;)Lorg/apache/harmony/xml/dom/NodeImpl;

    move-result-object v0

    .line 221
    .local v0, "copy":Lorg/apache/harmony/xml/dom/NodeImpl;
    if-eqz p3, :cond_1f

    .line 222
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 223
    .local v1, "list":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1f

    .line 224
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p0, p1, v3, p3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->cloneOrImportNode(SLorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/harmony/xml/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 228
    .end local v1    # "list":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    :cond_1f
    invoke-static {p1, p2, v0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->notifyUserDataHandlers(SLorg/w3c/dom/Node;Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 229
    return-object v0
.end method

.method public blacklist createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 323
    new-instance v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/AttrImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;
    .registers 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .line 327
    new-instance v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/harmony/xml/dom/AttrImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createCDATASection(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CDATASectionImpl;
    .registers 3
    .param p1, "data"    # Ljava/lang/String;

    .line 331
    new-instance v0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createCDATASection(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createComment(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CommentImpl;
    .registers 3
    .param p1, "data"    # Ljava/lang/String;

    .line 335
    new-instance v0, Lorg/apache/harmony/xml/dom/CommentImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/CommentImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createComment(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/CommentImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createDocumentFragment()Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;
    .registers 2

    .line 339
    new-instance v0, Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .registers 2

    .line 48
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createDocumentFragment()Lorg/apache/harmony/xml/dom/DocumentFragmentImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createElement(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;
    .registers 3
    .param p1, "tagName"    # Ljava/lang/String;

    .line 343
    new-instance v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElement(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;
    .registers 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .line 347
    new-instance v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ElementImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createEntityReference(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/EntityReferenceImpl;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 351
    new-instance v0, Lorg/apache/harmony/xml/dom/EntityReferenceImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/EntityReferenceImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createEntityReference(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/EntityReferenceImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;
    .registers 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 355
    new-instance v0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createTextNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/TextImpl;
    .registers 3
    .param p1, "data"    # Ljava/lang/String;

    .line 359
    new-instance v0, Lorg/apache/harmony/xml/dom/TextImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/harmony/xml/dom/TextImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api getDoctype()Lorg/w3c/dom/DocumentType;
    .registers 4

    .line 363
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    .line 364
    .local v1, "child":Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    instance-of v2, v1, Lorg/w3c/dom/DocumentType;

    if-eqz v2, :cond_1a

    .line 365
    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/DocumentType;

    return-object v0

    .line 367
    .end local v1    # "child":Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    :cond_1a
    goto :goto_6

    .line 369
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getDocumentElement()Lorg/w3c/dom/Element;
    .registers 4

    .line 373
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    .line 374
    .local v1, "child":Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    instance-of v2, v1, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_1a

    .line 375
    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    return-object v0

    .line 377
    .end local v1    # "child":Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    :cond_1a
    goto :goto_6

    .line 379
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getDocumentURI()Ljava/lang/String;
    .registers 2

    .line 467
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->documentUri:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .registers 2

    .line 475
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domConfiguration:Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    if-nez v0, :cond_b

    .line 476
    new-instance v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domConfiguration:Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    .line 478
    :cond_b
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domConfiguration:Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    return-object v0
.end method

.method public whitelist test-api getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 4
    .param p1, "elementId"    # Ljava/lang/String;

    .line 383
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 385
    .local v0, "root":Lorg/apache/harmony/xml/dom/ElementImpl;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    :goto_e
    return-object v1
.end method

.method public whitelist test-api getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 389
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    .line 390
    .local v0, "result":Lorg/apache/harmony/xml/dom/NodeListImpl;
    invoke-virtual {p0, v0, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getElementsByTagName(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;)V

    .line 391
    return-object v0
.end method

.method public whitelist test-api getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 395
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    .line 396
    .local v0, "result":Lorg/apache/harmony/xml/dom/NodeListImpl;
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getElementsByTagNameNS(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-object v0
.end method

.method public whitelist test-api getImplementation()Lorg/w3c/dom/DOMImplementation;
    .registers 2

    .line 401
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->domImplementation:Lorg/w3c/dom/DOMImplementation;

    return-object v0
.end method

.method public whitelist test-api getInputEncoding()Ljava/lang/String;
    .registers 2

    .line 435
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->inputEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 2

    .line 406
    const-string v0, "#document"

    return-object v0
.end method

.method public whitelist test-api getNodeType()S
    .registers 2

    .line 411
    const/16 v0, 0x9

    return v0
.end method

.method public whitelist test-api getStrictErrorChecking()Z
    .registers 2

    .line 459
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->strictErrorChecking:Z

    return v0
.end method

.method public whitelist test-api getTextContent()Ljava/lang/String;
    .registers 2

    .line 431
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getUserDataMap(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;
    .registers 4
    .param p1, "node"    # Lorg/apache/harmony/xml/dom/NodeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/xml/dom/NodeImpl$UserData;",
            ">;"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    if-nez v0, :cond_b

    .line 496
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    .line 498
    :cond_b
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 499
    .local v0, "userDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    if-nez v0, :cond_20

    .line 500
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 501
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    :cond_20
    return-object v0
.end method

.method blacklist getUserDataMapForRead(Lorg/apache/harmony/xml/dom/NodeImpl;)Ljava/util/Map;
    .registers 4
    .param p1, "node"    # Lorg/apache/harmony/xml/dom/NodeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/xml/dom/NodeImpl;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/xml/dom/NodeImpl$UserData;",
            ">;"
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    if-nez v0, :cond_9

    .line 512
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 514
    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->nodeToUserData:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 515
    .local v0, "userDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/harmony/xml/dom/NodeImpl$UserData;>;"
    if-nez v0, :cond_18

    .line 516
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_19

    .line 517
    :cond_18
    move-object v1, v0

    .line 515
    :goto_19
    return-object v1
.end method

.method public whitelist test-api getXmlEncoding()Ljava/lang/String;
    .registers 2

    .line 439
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getXmlStandalone()Z
    .registers 2

    .line 443
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlStandalone:Z

    return v0
.end method

.method public whitelist test-api getXmlVersion()Ljava/lang/String;
    .registers 2

    .line 451
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .registers 4
    .param p1, "importedNode"    # Lorg/w3c/dom/Node;
    .param p2, "deep"    # Z

    .line 233
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->cloneOrImportNode(SLorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public blacklist insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;
    .registers 6
    .param p1, "toInsert"    # Lorg/w3c/dom/Node;
    .param p2, "index"    # I

    .line 419
    instance-of v0, p1, Lorg/w3c/dom/Element;

    const/4 v1, 0x3

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_14

    .line 420
    :cond_c
    new-instance v0, Lorg/w3c/dom/DOMException;

    const-string v2, "Only one root element allowed"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 423
    :cond_14
    :goto_14
    instance-of v0, p1, Lorg/w3c/dom/DocumentType;

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    if-nez v0, :cond_1f

    goto :goto_27

    .line 424
    :cond_1f
    new-instance v0, Lorg/w3c/dom/DOMException;

    const-string v2, "Only one DOCTYPE element allowed"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 427
    :cond_27
    :goto_27
    invoke-super {p0, p1, p2}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api normalizeDocument()V
    .registers 3

    .line 482
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 483
    .local v0, "root":Lorg/w3c/dom/Element;
    if-nez v0, :cond_7

    .line 484
    return-void

    .line 487
    :cond_7
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/DocumentImpl;->getDomConfig()Lorg/w3c/dom/DOMConfiguration;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->normalize(Lorg/w3c/dom/Node;)V

    .line 488
    return-void
.end method

.method public whitelist test-api renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 7
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "qualifiedName"    # Ljava/lang/String;

    .line 313
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, p0, :cond_12

    .line 317
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/NodeImpl;

    invoke-static {v0, p2, p3}, Lorg/apache/harmony/xml/dom/DocumentImpl;->setNameNS(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {v2, p1, v1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->notifyUserDataHandlers(SLorg/w3c/dom/Node;Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 319
    return-object p1

    .line 314
    :cond_12
    new-instance v0, Lorg/w3c/dom/DOMException;

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setDocumentURI(Ljava/lang/String;)V
    .registers 2
    .param p1, "documentUri"    # Ljava/lang/String;

    .line 471
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->documentUri:Ljava/lang/String;

    .line 472
    return-void
.end method

.method public whitelist test-api setStrictErrorChecking(Z)V
    .registers 2
    .param p1, "strictErrorChecking"    # Z

    .line 463
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->strictErrorChecking:Z

    .line 464
    return-void
.end method

.method public whitelist test-api setXmlStandalone(Z)V
    .registers 2
    .param p1, "xmlStandalone"    # Z

    .line 447
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlStandalone:Z

    .line 448
    return-void
.end method

.method public whitelist test-api setXmlVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "xmlVersion"    # Ljava/lang/String;

    .line 455
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DocumentImpl;->xmlVersion:Ljava/lang/String;

    .line 456
    return-void
.end method
