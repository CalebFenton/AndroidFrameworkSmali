.class public Lorg/apache/harmony/xml/dom/ElementImpl;
.super Lorg/apache/harmony/xml/dom/InnerNodeImpl;
.source "ElementImpl.java"

# interfaces
.implements Lorg/w3c/dom/Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;
    }
.end annotation


# instance fields
.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/xml/dom/AttrImpl;",
            ">;"
        }
    .end annotation
.end field

.field localName:Ljava/lang/String;

.field namespaceAware:Z

.field namespaceURI:Ljava/lang/String;

.field prefix:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lorg/apache/harmony/xml/dom/ElementImpl;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lorg/apache/harmony/xml/dom/ElementImpl;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lorg/apache/harmony/xml/dom/ElementImpl;Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .locals 1
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    #@3
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    #@a
    .line 56
    invoke-static {p0, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->setName(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;)V

    #@d
    .line 54
    return-void
.end method

.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "qualifiedName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    #@3
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    #@a
    .line 51
    invoke-static {p0, p2, p3}, Lorg/apache/harmony/xml/dom/ElementImpl;->setNameNS(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 49
    return-void
.end method

.method private indexOfAttribute(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 60
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    #@3
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@6
    move-result v2

    #@7
    if-ge v1, v2, :cond_1

    #@9
    .line 61
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    #@b
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    #@11
    .line 62
    .local v0, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-static {p1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 63
    return v1

    #@1c
    .line 60
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 67
    .end local v0    # "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    :cond_1
    const/4 v2, -0x1

    #@20
    return v2
.end method

.method private indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 71
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    #@3
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@6
    move-result v2

    #@7
    if-ge v1, v2, :cond_1

    #@9
    .line 72
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    #@b
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    #@11
    .line 73
    .local v0, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-static {p1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 74
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {p2, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    .line 73
    if-eqz v2, :cond_0

    #@25
    .line 75
    return v1

    #@26
    .line 71
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 79
    .end local v0    # "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    :cond_1
    const/4 v2, -0x1

    #@2a
    return v2
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    #@3
    move-result-object v0

    #@4
    .line 85
    .local v0, "attr":Lorg/w3c/dom/Attr;
    if-nez v0, :cond_0

    #@6
    .line 86
    const-string/jumbo v1, ""

    #@9
    return-object v1

    #@a
    .line 89
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    #@3
    move-result-object v0

    #@4
    .line 95
    .local v0, "attr":Lorg/w3c/dom/Attr;
    if-nez v0, :cond_0

    #@6
    .line 96
    const-string/jumbo v1, ""

    #@9
    return-object v1

    #@a
    .line 99
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 103
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 105
    .local v0, "i":I
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 106
    const/4 v1, 0x0

    #@8
    return-object v1

    #@9
    .line 109
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    #@b
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lorg/apache/harmony/xml/dom/AttrImpl;

    #@11
    return-object v1
.end method

.method public bridge synthetic getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 115
    .local v0, "i":I
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 116
    const/4 v1, 0x0

    #@8
    return-object v1

    #@9
    .line 119
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    #@b
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lorg/apache/harmony/xml/dom/AttrImpl;

    #@11
    return-object v1
.end method

.method public bridge synthetic getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    #@0
    .prologue
    .line 124
    new-instance v0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;

    #@2
    invoke-direct {v0, p0}, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;-><init>(Lorg/apache/harmony/xml/dom/ElementImpl;)V

    #@5
    return-object v0
.end method

.method getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 133
    iget-object v5, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    #@3
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "attr$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v5

    #@b
    if-eqz v5, :cond_1

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    #@13
    .line 134
    .local v0, "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->isId()Z

    #@16
    move-result v5

    #@17
    if-eqz v5, :cond_0

    #@19
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v5

    #@21
    if-eqz v5, :cond_0

    #@23
    .line 135
    return-object p0

    #@24
    .line 145
    .end local v0    # "attr":Lorg/w3c/dom/Attr;
    :cond_1
    const-string/jumbo v5, "id"

    #@27
    invoke-virtual {p0, v5}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_2

    #@31
    .line 146
    return-object p0

    #@32
    .line 149
    :cond_2
    iget-object v5, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->children:Ljava/util/List;

    #@34
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v4

    #@38
    .local v4, "node$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v5

    #@3c
    if-eqz v5, :cond_4

    #@3e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v3

    #@42
    check-cast v3, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    #@44
    .line 150
    .local v3, "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v3}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    #@47
    move-result v5

    #@48
    const/4 v6, 0x1

    #@49
    if-ne v5, v6, :cond_3

    #@4b
    .line 151
    check-cast v3, Lorg/apache/harmony/xml/dom/ElementImpl;

    #@4d
    .end local v3    # "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v3, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    #@50
    move-result-object v2

    #@51
    .line 152
    .local v2, "element":Lorg/w3c/dom/Element;
    if-eqz v2, :cond_3

    #@53
    .line 153
    return-object v2

    #@54
    .line 158
    .end local v2    # "element":Lorg/w3c/dom/Element;
    :cond_4
    return-object v7
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 162
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    #@2
    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    #@5
    .line 163
    .local v0, "result":Lorg/apache/harmony/xml/dom/NodeListImpl;
    invoke-virtual {p0, v0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementsByTagName(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;)V

    #@8
    .line 164
    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 168
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    #@2
    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    #@5
    .line 169
    .local v0, "result":Lorg/apache/harmony/xml/dom/NodeListImpl;
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementsByTagNameNS(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 170
    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 175
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceURI:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 185
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/ElementImpl;->getTagName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    #@0
    .prologue
    .line 189
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    #@0
    .prologue
    .line 390
    sget-object v0, Lorg/apache/harmony/xml/dom/ElementImpl;->NULL_TYPE_INFO:Lorg/w3c/dom/TypeInfo;

    #@2
    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 198
    :goto_0
    return-object v0

    #@21
    .line 200
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    #@23
    goto :goto_0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 204
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public hasAttributes()Z
    .locals 1

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 217
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 219
    .local v0, "i":I
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 220
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    #@9
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@c
    .line 216
    :cond_0
    return-void
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    .line 228
    .local v0, "i":I
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 229
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    #@9
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@c
    .line 225
    :cond_0
    return-void
.end method

.method public removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 4
    .param p1, "oldAttr"    # Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    move-object v0, p1

    #@2
    .line 234
    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    #@4
    .line 236
    .local v0, "oldAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    #@7
    move-result-object v1

    #@8
    if-eq v1, p0, :cond_0

    #@a
    .line 237
    new-instance v1, Lorg/w3c/dom/DOMException;

    #@c
    const/16 v2, 0x8

    #@e
    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 240
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    #@14
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@17
    .line 241
    iput-object v3, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    #@19
    .line 243
    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    #@3
    move-result-object v0

    #@4
    .line 249
    .local v0, "attr":Lorg/w3c/dom/Attr;
    if-nez v0, :cond_0

    #@6
    .line 250
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@8
    invoke-virtual {v1, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    #@b
    move-result-object v0

    #@c
    .line 251
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    #@f
    .line 254
    :cond_0
    invoke-interface {v0, p2}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    #@12
    .line 246
    return-void
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 259
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    #@3
    move-result-object v0

    #@4
    .line 261
    .local v0, "attr":Lorg/w3c/dom/Attr;
    if-nez v0, :cond_0

    #@6
    .line 262
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@8
    invoke-virtual {v1, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    #@b
    move-result-object v0

    #@c
    .line 263
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    #@f
    .line 266
    :cond_0
    invoke-interface {v0, p3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    #@12
    .line 258
    return-void
.end method

.method public setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 6
    .param p1, "newAttr"    # Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    move-object v1, p1

    #@2
    .line 270
    check-cast v1, Lorg/apache/harmony/xml/dom/AttrImpl;

    #@4
    .line 272
    .local v1, "newAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-object v3, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@6
    iget-object v4, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@8
    if-eq v3, v4, :cond_0

    #@a
    .line 273
    new-instance v3, Lorg/w3c/dom/DOMException;

    #@c
    const/4 v4, 0x4

    #@d
    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 276
    :cond_0
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    #@14
    move-result-object v3

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 277
    new-instance v3, Lorg/w3c/dom/DOMException;

    #@19
    const/16 v4, 0xa

    #@1b
    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@1e
    throw v3

    #@1f
    .line 280
    :cond_1
    const/4 v2, 0x0

    #@20
    .line 282
    .local v2, "oldAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-direct {p0, v3}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    #@27
    move-result v0

    #@28
    .line 283
    .local v0, "i":I
    const/4 v3, -0x1

    #@29
    if-eq v0, v3, :cond_2

    #@2b
    .line 284
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    #@2d
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@30
    move-result-object v2

    #@31
    .end local v2    # "oldAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    check-cast v2, Lorg/apache/harmony/xml/dom/AttrImpl;

    #@33
    .line 285
    .local v2, "oldAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    #@35
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@38
    .line 288
    .end local v2    # "oldAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    :cond_2
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    #@3a
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3d
    .line 289
    iput-object p0, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    #@3f
    .line 291
    return-object v2
.end method

.method public setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 6
    .param p1, "newAttr"    # Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    move-object v1, p1

    #@2
    .line 295
    check-cast v1, Lorg/apache/harmony/xml/dom/AttrImpl;

    #@4
    .line 297
    .local v1, "newAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-object v3, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@6
    iget-object v4, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@8
    if-eq v3, v4, :cond_0

    #@a
    .line 298
    new-instance v3, Lorg/w3c/dom/DOMException;

    #@c
    const/4 v4, 0x4

    #@d
    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 301
    :cond_0
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    #@14
    move-result-object v3

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 302
    new-instance v3, Lorg/w3c/dom/DOMException;

    #@19
    const/16 v4, 0xa

    #@1b
    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@1e
    throw v3

    #@1f
    .line 305
    :cond_1
    const/4 v2, 0x0

    #@20
    .line 307
    .local v2, "oldAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    move-result v0

    #@2c
    .line 308
    .local v0, "i":I
    const/4 v3, -0x1

    #@2d
    if-eq v0, v3, :cond_2

    #@2f
    .line 309
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    #@31
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    .end local v2    # "oldAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    check-cast v2, Lorg/apache/harmony/xml/dom/AttrImpl;

    #@37
    .line 310
    .local v2, "oldAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    #@39
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@3c
    .line 313
    .end local v2    # "oldAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    :cond_2
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    #@3e
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@41
    .line 314
    iput-object p0, v1, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    #@43
    .line 316
    return-object v2
.end method

.method public setIdAttribute(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isId"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    #@3
    move-result-object v0

    #@4
    .line 395
    .local v0, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    if-nez v0, :cond_0

    #@6
    .line 396
    new-instance v1, Lorg/w3c/dom/DOMException;

    #@8
    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "No such attribute: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 396
    const/16 v3, 0x8

    #@1e
    invoke-direct {v1, v3, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 399
    :cond_0
    iput-boolean p2, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->isId:Z

    #@24
    .line 393
    return-void
.end method

.method public setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "isId"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 404
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    #@3
    move-result-object v0

    #@4
    .line 405
    .local v0, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    if-nez v0, :cond_0

    #@6
    .line 406
    new-instance v1, Lorg/w3c/dom/DOMException;

    #@8
    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "No such attribute: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, " "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 406
    const/16 v3, 0x8

    #@29
    invoke-direct {v1, v3, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 409
    :cond_0
    iput-boolean p3, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->isId:Z

    #@2f
    .line 403
    return-void
.end method

.method public setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .locals 0
    .param p1, "idAttr"    # Lorg/w3c/dom/Attr;
    .param p2, "isId"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 413
    check-cast p1, Lorg/apache/harmony/xml/dom/AttrImpl;

    #@2
    .end local p1    # "idAttr":Lorg/w3c/dom/Attr;
    iput-boolean p2, p1, Lorg/apache/harmony/xml/dom/AttrImpl;->isId:Z

    #@4
    .line 412
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 321
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    #@2
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceURI:Ljava/lang/String;

    #@4
    invoke-static {p1, v0, v1}, Lorg/apache/harmony/xml/dom/ElementImpl;->validatePrefix(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    #@a
    .line 320
    return-void
.end method
