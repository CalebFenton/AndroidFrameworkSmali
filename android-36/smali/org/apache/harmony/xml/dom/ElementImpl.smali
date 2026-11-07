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
.field private blacklist attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/harmony/xml/dom/AttrImpl;",
            ">;"
        }
    .end annotation
.end field

.field greylist localName:Ljava/lang/String;

.field blacklist namespaceAware:Z

.field blacklist namespaceURI:Ljava/lang/String;

.field blacklist prefix:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetattributes(Lorg/apache/harmony/xml/dom/ElementImpl;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mindexOfAttribute(Lorg/apache/harmony/xml/dom/ElementImpl;Ljava/lang/String;)I
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mindexOfAttributeNS(Lorg/apache/harmony/xml/dom/ElementImpl;Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;)V
    .registers 4
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    .line 60
    invoke-static {p0, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->setName(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method constructor blacklist <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "qualifiedName"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    .line 55
    invoke-static {p0, p2, p3}, Lorg/apache/harmony/xml/dom/ElementImpl;->setNameNS(Lorg/apache/harmony/xml/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private blacklist indexOfAttribute(Ljava/lang/String;)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 65
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 66
    .local v1, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 67
    return v0

    .line 64
    .end local v1    # "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 76
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 77
    .local v1, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 78
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 79
    return v0

    .line 75
    .end local v1    # "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    .end local v0    # "i":I
    :cond_29
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public whitelist test-api getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 87
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 89
    .local v0, "attr":Lorg/w3c/dom/Attr;
    if-nez v0, :cond_9

    .line 90
    const-string v1, ""

    return-object v1

    .line 93
    :cond_9
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 99
    .local v0, "attr":Lorg/w3c/dom/Attr;
    if-nez v0, :cond_9

    .line 100
    const-string v1, ""

    return-object v1

    .line 103
    :cond_9
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 110
    const/4 v1, 0x0

    return-object v1

    .line 113
    :cond_9
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/AttrImpl;

    return-object v1
.end method

.method public bridge synthetic whitelist test-api getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;
    .registers 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 117
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 119
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 120
    const/4 v1, 0x0

    return-object v1

    .line 123
    :cond_9
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/AttrImpl;

    return-object v1
.end method

.method public bridge synthetic whitelist test-api getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
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

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .registers 2

    .line 128
    new-instance v0, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xml/dom/ElementImpl$ElementAttrNamedNodeMapImpl;-><init>(Lorg/apache/harmony/xml/dom/ElementImpl;)V

    return-object v0
.end method

.method blacklist getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Attr;

    .line 138
    .local v1, "attr":Lorg/w3c/dom/Attr;
    invoke-interface {v1}, Lorg/w3c/dom/Attr;->isId()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 139
    return-object p0

    .line 141
    .end local v1    # "attr":Lorg/w3c/dom/Attr;
    :cond_23
    goto :goto_6

    .line 149
    :cond_24
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 150
    return-object p0

    .line 153
    :cond_31
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/NodeImpl;

    .line 154
    .local v1, "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_54

    .line 155
    move-object v2, v1

    check-cast v2, Lorg/apache/harmony/xml/dom/ElementImpl;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 156
    .local v2, "element":Lorg/w3c/dom/Element;
    if-eqz v2, :cond_54

    .line 157
    return-object v2

    .line 160
    .end local v1    # "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    .end local v2    # "element":Lorg/w3c/dom/Element;
    :cond_54
    goto :goto_37

    .line 162
    :cond_55
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 166
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    .line 167
    .local v0, "result":Lorg/apache/harmony/xml/dom/NodeListImpl;
    invoke-virtual {p0, v0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementsByTagName(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;)V

    .line 168
    return-object v0
.end method

.method public whitelist test-api getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 172
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    .line 173
    .local v0, "result":Lorg/apache/harmony/xml/dom/NodeListImpl;
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementsByTagNameNS(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-object v0
.end method

.method public whitelist test-api getLocalName()Ljava/lang/String;
    .registers 2

    .line 179
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public whitelist test-api getNamespaceURI()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getNodeName()Ljava/lang/String;
    .registers 2

    .line 189
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNodeType()S
    .registers 2

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api getPrefix()Ljava/lang/String;
    .registers 2

    .line 198
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .registers 2

    .line 394
    sget-object v0, Lorg/apache/harmony/xml/dom/ElementImpl;->NULL_TYPE_INFO:Lorg/w3c/dom/TypeInfo;

    return-object v0
.end method

.method public whitelist test-api getTagName()Ljava/lang/String;
    .registers 3

    .line 202
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 204
    :cond_20
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->localName:Ljava/lang/String;

    .line 202
    :goto_22
    return-object v0
.end method

.method public whitelist test-api hasAttribute(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 208
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 212
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist test-api hasAttributes()Z
    .registers 2

    .line 217
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api removeAttribute(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 221
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    move-result v0

    .line 223
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 224
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 226
    :cond_c
    return-void
.end method

.method public whitelist test-api removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 230
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 232
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 233
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 235
    :cond_c
    return-void
.end method

.method public whitelist test-api removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 6
    .param p1, "oldAttr"    # Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 238
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 240
    .local v0, "oldAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v1, p0, :cond_12

    .line 244
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 245
    iput-object v2, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 247
    return-object v0

    .line 241
    :cond_12
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v3, 0x8

    invoke-direct {v1, v3, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 251
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 253
    .local v0, "attr":Lorg/w3c/dom/Attr;
    if-nez v0, :cond_f

    .line 254
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 255
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 258
    :cond_f
    invoke-interface {v0, p2}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public whitelist test-api setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 263
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 265
    .local v0, "attr":Lorg/w3c/dom/Attr;
    if-nez v0, :cond_f

    .line 266
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    invoke-virtual {v1, p1, p2}, Lorg/apache/harmony/xml/dom/DocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 267
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 270
    :cond_f
    invoke-interface {v0, p3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public whitelist test-api setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 6
    .param p1, "newAttr"    # Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 274
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 276
    .local v0, "newAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-object v1, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3a

    .line 280
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    if-nez v1, :cond_32

    .line 284
    const/4 v1, 0x0

    .line 286
    .local v1, "oldAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttribute(Ljava/lang/String;)I

    move-result v2

    .line 287
    .local v2, "i":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2a

    .line 288
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 289
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 292
    :cond_2a
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iput-object p0, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 295
    return-object v1

    .line 281
    .end local v1    # "oldAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    .end local v2    # "i":I
    :cond_32
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 277
    :cond_3a
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .registers 6
    .param p1, "newAttr"    # Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 299
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 301
    .local v0, "newAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    iget-object v1, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    iget-object v2, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3e

    .line 305
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    if-nez v1, :cond_36

    .line 309
    const/4 v1, 0x0

    .line 311
    .local v1, "oldAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/xml/dom/ElementImpl;->indexOfAttributeNS(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 312
    .local v2, "i":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2e

    .line 313
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lorg/apache/harmony/xml/dom/AttrImpl;

    .line 314
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 317
    :cond_2e
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->attributes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iput-object p0, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->ownerElement:Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 320
    return-object v1

    .line 306
    .end local v1    # "oldAttrImpl":Lorg/apache/harmony/xml/dom/AttrImpl;
    .end local v2    # "i":I
    :cond_36
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 302
    :cond_3e
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api setIdAttribute(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isId"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 398
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 399
    .local v0, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    if-eqz v0, :cond_9

    .line 403
    iput-boolean p2, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->isId:Z

    .line 404
    return-void

    .line 400
    :cond_9
    new-instance v1, Lorg/w3c/dom/DOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {v1, v3, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "isId"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 408
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/xml/dom/AttrImpl;

    move-result-object v0

    .line 409
    .local v0, "attr":Lorg/apache/harmony/xml/dom/AttrImpl;
    if-eqz v0, :cond_9

    .line 413
    iput-boolean p3, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->isId:Z

    .line 414
    return-void

    .line 410
    :cond_9
    new-instance v1, Lorg/w3c/dom/DOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {v1, v3, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .registers 4
    .param p1, "idAttr"    # Lorg/w3c/dom/Attr;
    .param p2, "isId"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 417
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    iput-boolean p2, v0, Lorg/apache/harmony/xml/dom/AttrImpl;->isId:Z

    .line 418
    return-void
.end method

.method public whitelist test-api setPrefix(Ljava/lang/String;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;

    .line 325
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceAware:Z

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->namespaceURI:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lorg/apache/harmony/xml/dom/ElementImpl;->validatePrefix(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/ElementImpl;->prefix:Ljava/lang/String;

    .line 326
    return-void
.end method
