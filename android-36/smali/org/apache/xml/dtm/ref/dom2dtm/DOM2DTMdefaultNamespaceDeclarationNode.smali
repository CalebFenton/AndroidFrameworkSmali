.class public Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;
.super Ljava/lang/Object;
.source "DOM2DTMdefaultNamespaceDeclarationNode.java"

# interfaces
.implements Lorg/w3c/dom/Attr;
.implements Lorg/w3c/dom/TypeInfo;


# instance fields
.field final greylist NOT_SUPPORTED_ERR:Ljava/lang/String;

.field greylist handle:I

.field greylist nodename:Ljava/lang/String;

.field greylist prefix:Ljava/lang/String;

.field greylist pseudoparent:Lorg/w3c/dom/Element;

.field greylist uri:Ljava/lang/String;


# direct methods
.method constructor greylist <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "Unsupported operation on pseudonode"

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->NOT_SUPPORTED_ERR:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->pseudoparent:Lorg/w3c/dom/Element;

    .line 63
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->prefix:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->uri:Ljava/lang/String;

    .line 65
    iput p4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->handle:I

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "xmlns:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->nodename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 2

    .line 95
    new-instance p0, Lorg/apache/xml/dtm/DTMException;

    const-string p1, "Unsupported operation on pseudonode"

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api cloneNode(Z)Lorg/w3c/dom/Node;
    .registers 2

    .line 98
    new-instance p0, Lorg/apache/xml/dtm/DTMException;

    const-string p1, "Unsupported operation on pseudonode"

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getBaseURI()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getChildNodes()Lorg/w3c/dom/NodeList;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 188
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getFirstChild()Lorg/w3c/dom/Node;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getHandleOfNode()I
    .registers 1

    .line 107
    iget p0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->handle:I

    return p0
.end method

.method public whitelist test-api getLastChild()Lorg/w3c/dom/Node;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getLocalName()Ljava/lang/String;
    .registers 1

    .line 72
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 1

    .line 69
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->nodename:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getNamespaceURI()Ljava/lang/String;
    .registers 1

    .line 70
    const-string p0, "http://www.w3.org/2000/xmlns/"

    return-object p0
.end method

.method public whitelist test-api getNextSibling()Lorg/w3c/dom/Node;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->nodename:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getNodeType()S
    .registers 1

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public whitelist test-api getNodeValue()Ljava/lang/String;
    .registers 1

    .line 73
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getOwnerDocument()Lorg/w3c/dom/Document;
    .registers 1

    .line 97
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->pseudoparent:Lorg/w3c/dom/Element;

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getOwnerElement()Lorg/w3c/dom/Element;
    .registers 1

    .line 75
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->pseudoparent:Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public whitelist test-api getParentNode()Lorg/w3c/dom/Node;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getPrefix()Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api getPreviousSibling()Lorg/w3c/dom/Node;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .registers 1

    .line 0
    return-object p0
.end method

.method public whitelist test-api getSpecified()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api getTextContent()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 636
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getTypeName()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getTypeNamespace()Ljava/lang/String;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 162
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getValue()Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hasAttributes()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hasChildNodes()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3

    .line 93
    new-instance p0, Lorg/apache/xml/dtm/DTMException;

    const-string p1, "Unsupported operation on pseudonode"

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api isDefaultNamespace(Ljava/lang/String;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api isEqualNode(Lorg/w3c/dom/Node;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 237
    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeType()S

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    return v3

    .line 242
    :cond_10
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 243
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    return v3

    .line 247
    :cond_1d
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v3

    .line 251
    :cond_2c
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getLocalName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_39

    .line 252
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_48

    return v3

    .line 256
    :cond_39
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    return v3

    .line 260
    :cond_48
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_55

    .line 261
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_64

    return v3

    .line 265
    :cond_55
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v3

    .line 269
    :cond_64
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_71

    .line 270
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_80

    return v3

    .line 274
    :cond_71
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    return v3

    .line 278
    :cond_80
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8d

    .line 279
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9c

    return v3

    .line 283
    :cond_8d
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9c

    return v3

    :cond_9c
    return v0
.end method

.method public whitelist test-api isId()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api isSameNode(Lorg/w3c/dom/Node;)Z
    .registers 2

    .line 0
    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 310
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeType()S

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_20

    const/4 v3, 0x2

    if-eq v0, v3, :cond_c

    return-object v1

    .line 372
    :cond_c
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v0

    if-ne v0, v2, :cond_1f

    .line 373
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    return-object v1

    .line 314
    :cond_20
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_38

    if-nez p1, :cond_2f

    if-ne v2, p1, :cond_2f

    goto :goto_37

    :cond_2f
    if-eqz v2, :cond_38

    .line 321
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    :goto_37
    return-object v0

    .line 326
    :cond_38
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 327
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    .line 328
    invoke-interface {p0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    const/4 v2, 0x0

    :goto_47
    if-ge v2, v0, :cond_88

    .line 330
    invoke-interface {p0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 331
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 332
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 333
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_85

    .line 334
    const-string v7, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 336
    const-string v6, "xmlns"

    if-nez p1, :cond_72

    .line 337
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    goto :goto_84

    :cond_72
    if-eqz v4, :cond_85

    .line 341
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 342
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    :goto_84
    return-object v5

    :cond_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_88
    return-object v1
.end method

.method public whitelist test-api lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 482
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    return-object v0

    .line 503
    :cond_c
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    .line 504
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    return-object v0
.end method

.method public whitelist test-api normalize()V
    .registers 1

    .line 0
    return-void
.end method

.method public whitelist test-api removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 2

    .line 96
    new-instance p0, Lorg/apache/xml/dtm/DTMException;

    const-string p1, "Unsupported operation on pseudonode"

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3

    .line 94
    new-instance p0, Lorg/apache/xml/dtm/DTMException;

    const-string p1, "Unsupported operation on pseudonode"

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api setNodeValue(Ljava/lang/String;)V
    .registers 2

    .line 90
    new-instance p0, Lorg/apache/xml/dtm/DTMException;

    const-string p1, "Unsupported operation on pseudonode"

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api setPrefix(Ljava/lang/String;)V
    .registers 2

    .line 92
    new-instance p0, Lorg/apache/xml/dtm/DTMException;

    const-string p1, "Unsupported operation on pseudonode"

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api setTextContent(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 587
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->setNodeValue(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .registers 4

    .line 149
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/w3c/dom/Document;->setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api setValue(Ljava/lang/String;)V
    .registers 2

    .line 91
    new-instance p0, Lorg/apache/xml/dtm/DTMException;

    const-string p1, "Unsupported operation on pseudonode"

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
