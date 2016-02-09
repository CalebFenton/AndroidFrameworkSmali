.class public final Lorg/apache/harmony/xml/dom/AttrImpl;
.super Lorg/apache/harmony/xml/dom/NodeImpl;
.source "AttrImpl.java"

# interfaces
.implements Lorg/w3c/dom/Attr;


# instance fields
.field isId:Z

.field localName:Ljava/lang/String;

.field namespaceAware:Z

.field namespaceURI:Ljava/lang/String;

.field ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

.field prefix:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .locals 1
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    #@3
    .line 46
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->value:Ljava/lang/String;

    #@8
    .line 55
    invoke-static {p0, p2}, Lorg/apache/harmony/xml/dom/AttrImpl;->setName(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;)V

    #@b
    .line 53
    return-void
.end method

.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "qualifiedName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    #@3
    .line 46
    const-string/jumbo v0, ""

    #@6
    iput-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->value:Ljava/lang/String;

    #@8
    .line 50
    invoke-static {p0, p2, p3}, Lorg/apache/harmony/xml/dom/AttrImpl;->setNameNS(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 48
    return-void
.end method


# virtual methods
.method public getLocalName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->prefix:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->prefix:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, ":"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 64
    :goto_0
    return-object v0

    #@21
    .line 66
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->localName:Ljava/lang/String;

    #@23
    goto :goto_0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceURI:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    #@0
    .prologue
    .line 80
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getValue()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    #@2
    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->prefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    #@0
    .prologue
    .line 116
    sget-object v0, Lorg/apache/harmony/xml/dom/AttrImpl;->NULL_TYPE_INFO:Lorg/w3c/dom/TypeInfo;

    #@2
    return-object v0
.end method

.method public getSpecified()Z
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->value:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->value:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isId()Z
    .locals 1

    #@0
    .prologue
    .line 120
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->isId:Z

    #@2
    return v0
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceAware:Z

    #@2
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->namespaceURI:Ljava/lang/String;

    #@4
    invoke-static {p1, v0, v1}, Lorg/apache/harmony/xml/dom/AttrImpl;->validatePrefix(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->prefix:Ljava/lang/String;

    #@a
    .line 106
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 111
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/AttrImpl;->value:Ljava/lang/String;

    #@2
    .line 110
    return-void
.end method
