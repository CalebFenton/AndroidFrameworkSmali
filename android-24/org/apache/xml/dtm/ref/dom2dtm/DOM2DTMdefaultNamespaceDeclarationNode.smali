.class public Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;
.super Ljava/lang/Object;
.source "DOM2DTMdefaultNamespaceDeclarationNode.java"

# interfaces
.implements Lorg/w3c/dom/Attr;
.implements Lorg/w3c/dom/TypeInfo;


# instance fields
.field final NOT_SUPPORTED_ERR:Ljava/lang/String;

.field handle:I

.field nodename:Ljava/lang/String;

.field prefix:Ljava/lang/String;

.field pseudoparent:Lorg/w3c/dom/Element;

.field uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "pseudoparent"    # Lorg/w3c/dom/Element;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "handle"    # I

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    const-string/jumbo v0, "Unsupported operation on pseudonode"

    #@6
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->NOT_SUPPORTED_ERR:Ljava/lang/String;

    #@8
    .line 62
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->pseudoparent:Lorg/w3c/dom/Element;

    #@a
    .line 63
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->prefix:Ljava/lang/String;

    #@c
    .line 64
    iput-object p3, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->uri:Ljava/lang/String;

    #@e
    .line 65
    iput p4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->handle:I

    #@10
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v1, "xmlns:"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->nodename:Ljava/lang/String;

    #@26
    .line 60
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "a"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 95
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    #@2
    const-string/jumbo v1, "Unsupported operation on pseudonode"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "deep"    # Z

    #@0
    .prologue
    .line 98
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    #@2
    const-string/jumbo v1, "Unsupported operation on pseudonode"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
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
    .line 648
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    #@0
    .prologue
    .line 88
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 676
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 1

    #@0
    .prologue
    .line 87
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    #@0
    .prologue
    .line 188
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .end local p0    # "this":Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;
    :goto_0
    return-object p0

    #@7
    .restart local p0    # "this":Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;
    :cond_0
    const/4 p0, 0x0

    #@8
    goto :goto_0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 81
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getHandleOfNode()I
    .locals 1

    #@0
    .prologue
    .line 107
    iget v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->handle:I

    #@2
    return v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 82
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->prefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->nodename:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 70
    const-string/jumbo v0, "http://www.w3.org/2000/xmlns/"

    #@3
    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 84
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->nodename:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    #@0
    .prologue
    .line 89
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->uri:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->pseudoparent:Lorg/w3c/dom/Element;

    #@2
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->pseudoparent:Lorg/w3c/dom/Element;

    #@2
    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 80
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->prefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 0

    #@0
    .prologue
    .line 129
    return-object p0
.end method

.method public getSpecified()Z
    .locals 1

    #@0
    .prologue
    .line 85
    const/4 v0, 0x0

    #@1
    return v0
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
    .line 636
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeValue()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 115
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 120
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->uri:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    #@0
    .prologue
    .line 79
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    #@0
    .prologue
    .line 78
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "a"    # Lorg/w3c/dom/Node;
    .param p2, "b"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 93
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    #@2
    const-string/jumbo v1, "Unsupported operation on pseudonode"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;

    #@0
    .prologue
    .line 461
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "derivationMethod"    # I

    #@0
    .prologue
    .line 126
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 4
    .param p1, "arg"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 234
    if-ne p1, p0, :cond_0

    #@4
    .line 235
    return v3

    #@5
    .line 237
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@8
    move-result v0

    #@9
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeType()S

    #@c
    move-result v1

    #@d
    if-eq v0, v1, :cond_1

    #@f
    .line 238
    return v2

    #@10
    .line 242
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeName()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    if-nez v0, :cond_2

    #@16
    .line 243
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    if-eqz v0, :cond_3

    #@1c
    .line 244
    return v2

    #@1d
    .line 247
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeName()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v0

    #@29
    if-nez v0, :cond_3

    #@2b
    .line 248
    return v2

    #@2c
    .line 251
    :cond_3
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getLocalName()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    if-nez v0, :cond_4

    #@32
    .line 252
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    if-eqz v0, :cond_5

    #@38
    .line 253
    return v2

    #@39
    .line 256
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getLocalName()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v0

    #@45
    if-nez v0, :cond_5

    #@47
    .line 257
    return v2

    #@48
    .line 260
    :cond_5
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNamespaceURI()Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    if-nez v0, :cond_6

    #@4e
    .line 261
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    if-eqz v0, :cond_7

    #@54
    .line 262
    return v2

    #@55
    .line 265
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNamespaceURI()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v0

    #@61
    if-nez v0, :cond_7

    #@63
    .line 266
    return v2

    #@64
    .line 269
    :cond_7
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getPrefix()Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    if-nez v0, :cond_8

    #@6a
    .line 270
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    if-eqz v0, :cond_9

    #@70
    .line 271
    return v2

    #@71
    .line 274
    :cond_8
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getPrefix()Ljava/lang/String;

    #@74
    move-result-object v0

    #@75
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v0

    #@7d
    if-nez v0, :cond_9

    #@7f
    .line 275
    return v2

    #@80
    .line 278
    :cond_9
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeValue()Ljava/lang/String;

    #@83
    move-result-object v0

    #@84
    if-nez v0, :cond_a

    #@86
    .line 279
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@89
    move-result-object v0

    #@8a
    if-eqz v0, :cond_b

    #@8c
    .line 280
    return v2

    #@8d
    .line 283
    :cond_a
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeValue()Ljava/lang/String;

    #@90
    move-result-object v0

    #@91
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@94
    move-result-object v1

    #@95
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v0

    #@99
    if-nez v0, :cond_b

    #@9b
    .line 284
    return v2

    #@9c
    .line 297
    :cond_b
    return v3
.end method

.method public isId()Z
    .locals 1

    #@0
    .prologue
    .line 131
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 1
    .param p1, "other"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 537
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
    .line 77
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "specifiedPrefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 310
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeType()S

    #@4
    move-result v7

    #@5
    .line 311
    .local v7, "type":S
    packed-switch v7, :pswitch_data_0

    #@8
    .line 385
    :pswitch_0
    return-object v11

    #@9
    .line 314
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNamespaceURI()Ljava/lang/String;

    #@c
    move-result-object v5

    #@d
    .line 315
    .local v5, "namespace":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getPrefix()Ljava/lang/String;

    #@10
    move-result-object v6

    #@11
    .line 316
    .local v6, "prefix":Ljava/lang/String;
    if-eqz v5, :cond_1

    #@13
    .line 318
    if-nez p1, :cond_0

    #@15
    if-ne v6, p1, :cond_0

    #@17
    .line 320
    return-object v5

    #@18
    .line 321
    :cond_0
    if-eqz v6, :cond_1

    #@1a
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v9

    #@1e
    if-eqz v9, :cond_1

    #@20
    .line 323
    return-object v5

    #@21
    .line 326
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->hasAttributes()Z

    #@24
    move-result v9

    #@25
    if-eqz v9, :cond_4

    #@27
    .line 327
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@2a
    move-result-object v4

    #@2b
    .line 328
    .local v4, "map":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@2e
    move-result v3

    #@2f
    .line 329
    .local v3, "length":I
    const/4 v2, 0x0

    #@30
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    #@32
    .line 330
    invoke-interface {v4, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@35
    move-result-object v0

    #@36
    .line 331
    .local v0, "attr":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    .line 332
    .local v1, "attrPrefix":Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@3d
    move-result-object v8

    #@3e
    .line 333
    .local v8, "value":Ljava/lang/String;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    .line 334
    if-eqz v5, :cond_3

    #@44
    const-string/jumbo v9, "http://www.w3.org/2000/xmlns/"

    #@47
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v9

    #@4b
    if-eqz v9, :cond_3

    #@4d
    .line 336
    if-nez p1, :cond_2

    #@4f
    .line 337
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@52
    move-result-object v9

    #@53
    const-string/jumbo v10, "xmlns"

    #@56
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v9

    #@5a
    .line 336
    if-eqz v9, :cond_2

    #@5c
    .line 339
    return-object v8

    #@5d
    .line 340
    :cond_2
    if-eqz v1, :cond_3

    #@5f
    .line 341
    const-string/jumbo v9, "xmlns"

    #@62
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v9

    #@66
    .line 340
    if-eqz v9, :cond_3

    #@68
    .line 342
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@6b
    move-result-object v9

    #@6c
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v9

    #@70
    .line 340
    if-eqz v9, :cond_3

    #@72
    .line 344
    return-object v8

    #@73
    .line 329
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@75
    goto :goto_0

    #@76
    .line 356
    .end local v0    # "attr":Lorg/w3c/dom/Node;
    .end local v1    # "attrPrefix":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    return-object v11

    #@77
    .line 370
    .end local v5    # "namespace":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_2
    return-object v11

    #@78
    .line 372
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerElement()Lorg/w3c/dom/Element;

    #@7b
    move-result-object v9

    #@7c
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeType()S

    #@7f
    move-result v9

    #@80
    const/4 v10, 0x1

    #@81
    if-ne v9, v10, :cond_5

    #@83
    .line 373
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerElement()Lorg/w3c/dom/Element;

    #@86
    move-result-object v9

    #@87
    invoke-interface {v9, p1}, Lorg/w3c/dom/Element;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    #@8a
    move-result-object v9

    #@8b
    return-object v9

    #@8c
    .line 376
    :cond_5
    return-object v11

    #@8d
    .line 311
    nop

    #@8e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "namespaceURI"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 478
    if-nez p1, :cond_0

    #@3
    .line 479
    return-object v3

    #@4
    .line 482
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeType()S

    #@7
    move-result v0

    #@8
    .line 484
    .local v0, "type":S
    packed-switch v0, :pswitch_data_0

    #@b
    .line 516
    :pswitch_0
    return-object v3

    #@c
    .line 501
    :pswitch_1
    return-object v3

    #@d
    .line 503
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerElement()Lorg/w3c/dom/Element;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeType()S

    #@14
    move-result v1

    #@15
    const/4 v2, 0x1

    #@16
    if-ne v1, v2, :cond_1

    #@18
    .line 504
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerElement()Lorg/w3c/dom/Element;

    #@1b
    move-result-object v1

    #@1c
    invoke-interface {v1, p1}, Lorg/w3c/dom/Element;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    return-object v1

    #@21
    .line 507
    :cond_1
    return-object v3

    #@22
    .line 484
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public normalize()V
    .locals 0

    #@0
    .prologue
    .line 86
    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "a"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 96
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    #@2
    const-string/jumbo v1, "Unsupported operation on pseudonode"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "a"    # Lorg/w3c/dom/Node;
    .param p2, "b"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 94
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    #@2
    const-string/jumbo v1, "Unsupported operation on pseudonode"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    #@2
    const-string/jumbo v1, "Unsupported operation on pseudonode"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 92
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    #@2
    const-string/jumbo v1, "Unsupported operation on pseudonode"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "textContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 587
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->setNodeValue(Ljava/lang/String;)V

    #@3
    .line 586
    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "handler"    # Lorg/w3c/dom/UserDataHandler;

    #@0
    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0, p1, p2, p3}, Lorg/w3c/dom/Document;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    #@2
    const-string/jumbo v1, "Unsupported operation on pseudonode"

    #@5
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
