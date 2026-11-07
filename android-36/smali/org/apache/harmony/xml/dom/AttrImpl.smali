.class public final Lorg/apache/harmony/xml/dom/AttrImpl;
.super Lorg/apache/harmony/xml/dom/NodeImpl;
.source "AttrImpl.java"

# interfaces
.implements Lorg/w3c/dom/Attr;


# instance fields
.field blacklist isId:Z

.field blacklist localName:Ljava/lang/String;

.field blacklist namespaceAware:Z

.field blacklist namespaceURI:Ljava/lang/String;

.field blacklist ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

.field blacklist prefix:Ljava/lang/String;

.field private blacklist value:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .registers 4
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->value:Ljava/lang/String;

    .line 55
    invoke-static {p0, p2}, Lorg/apache/harmony/xml/dom/AttrImpl;->setName(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method constructor blacklist <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "qualifiedName"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->value:Ljava/lang/String;

    .line 50
    invoke-static {p0, p2, p3}, Lorg/apache/harmony/xml/dom/AttrImpl;->setNameNS(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method public whitelist test-api getLocalName()Ljava/lang/String;
    .registers 2

    .line 60
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 3

    .line 64
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 66
    :cond_20
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    .line 64
    :goto_22
    return-object v0
.end method

.method public whitelist test-api getNamespaceURI()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 2

    .line 76
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNodeType()S
    .registers 2

    .line 80
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist test-api getNodeValue()Ljava/lang/String;
    .registers 2

    .line 85
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getOwnerElement()Lorg/w3c/dom/Element;
    .registers 2

    .line 89
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    return-object v0
.end method

.method public whitelist test-api getPrefix()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .registers 2

    .line 116
    sget-object v0, Lorg/apache/harmony/xml/dom/AttrImpl;->NULL_TYPE_INFO:Lorg/w3c/dom/TypeInfo;

    return-object v0
.end method

.method public whitelist test-api getSpecified()Z
    .registers 2

    .line 98
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->value:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api getValue()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->value:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api isId()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->isId:Z

    return v0
.end method

.method public whitelist test-api setPrefix(Ljava/lang/String;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;

    .line 107
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceURI:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lorg/apache/harmony/xml/dom/AttrImpl;->validatePrefix(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->prefix:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public whitelist test-api setValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->value:Ljava/lang/String;

    .line 112
    return-void
.end method
