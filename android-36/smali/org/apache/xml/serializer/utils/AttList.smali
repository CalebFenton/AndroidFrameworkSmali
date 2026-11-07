.class public final Lorg/apache/xml/serializer/utils/AttList;
.super Ljava/lang/Object;
.source "AttList.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# instance fields
.field greylist m_attrs:Lorg/w3c/dom/NamedNodeMap;

.field greylist m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

.field greylist m_lastIndex:I


# direct methods
.method public constructor greylist <init>(Lorg/w3c/dom/NamedNodeMap;Lorg/apache/xml/serializer/utils/DOM2Helper;)V
    .registers 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    .line 82
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/xml/serializer/utils/AttList;->m_lastIndex:I

    .line 83
    iput-object p2, p0, Lorg/apache/xml/serializer/utils/AttList;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    return-void
.end method


# virtual methods
.method public whitelist test-api getIndex(Ljava/lang/String;)I
    .registers 4

    .line 255
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1e

    .line 257
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 258
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    return v0

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    const/4 p0, -0x1

    return p0
.end method

.method public whitelist test-api getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 234
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2d

    .line 236
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {v1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 237
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    if-nez p1, :cond_2a

    goto :goto_1f

    .line 238
    :cond_19
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 240
    :goto_1f
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    return v0

    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2d
    const/4 p0, -0x1

    return p0
.end method

.method public whitelist test-api getLength()I
    .registers 1

    .line 94
    iget-object p0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {p0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result p0

    return p0
.end method

.method public whitelist test-api getLocalName(I)Ljava/lang/String;
    .registers 3

    .line 123
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    iget-object p0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-virtual {v0, p0}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getQName(I)Ljava/lang/String;
    .registers 2

    .line 136
    iget-object p0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getType(I)Ljava/lang/String;
    .registers 2

    .line 149
    const-string p0, "CDATA"

    return-object p0
.end method

.method public whitelist test-api getType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 175
    const-string p0, "CDATA"

    return-object p0
.end method

.method public whitelist test-api getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 190
    const-string p0, "CDATA"

    return-object p0
.end method

.method public whitelist test-api getURI(I)Ljava/lang/String;
    .registers 3

    .line 107
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_dh:Lorg/apache/xml/serializer/utils/DOM2Helper;

    iget-object p0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-virtual {v0, p0}, Lorg/apache/xml/serializer/utils/DOM2Helper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_12

    .line 109
    const-string p0, ""

    :cond_12
    return-object p0
.end method

.method public whitelist test-api getValue(I)Ljava/lang/String;
    .registers 2

    .line 162
    iget-object p0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 203
    iget-object p0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    if-eqz p0, :cond_f

    .line 205
    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 219
    iget-object p0, p0, Lorg/apache/xml/serializer/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    invoke-interface {p0, p1, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 220
    :cond_a
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
