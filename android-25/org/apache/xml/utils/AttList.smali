.class public Lorg/apache/xml/utils/AttList;
.super Ljava/lang/Object;
.source "AttList.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# instance fields
.field m_attrs:Lorg/w3c/dom/NamedNodeMap;

.field m_dh:Lorg/apache/xml/utils/DOMHelper;

.field m_lastIndex:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/NamedNodeMap;Lorg/apache/xml/utils/DOMHelper;)V
    .locals 1
    .param p1, "attrs"    # Lorg/w3c/dom/NamedNodeMap;
    .param p2, "dh"    # Lorg/apache/xml/utils/DOMHelper;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    iput-object p1, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    #@5
    .line 73
    iget-object v0, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    #@7
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@a
    move-result v0

    #@b
    add-int/lit8 v0, v0, -0x1

    #@d
    iput v0, p0, Lorg/apache/xml/utils/AttList;->m_lastIndex:I

    #@f
    .line 74
    iput-object p2, p0, Lorg/apache/xml/utils/AttList;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    #@11
    .line 69
    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "qName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 246
    iget-object v2, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    #@2
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v1, v2, -0x1

    #@8
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@a
    .line 248
    iget-object v2, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    #@c
    invoke-interface {v2, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@f
    move-result-object v0

    #@10
    .line 249
    .local v0, "a":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 250
    return v1

    #@1b
    .line 246
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 252
    .end local v0    # "a":Lorg/w3c/dom/Node;
    :cond_1
    const/4 v2, -0x1

    #@1f
    return v2
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localPart"    # Ljava/lang/String;

    #@0
    .prologue
    .line 225
    iget-object v3, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    #@2
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@5
    move-result v3

    #@6
    add-int/lit8 v1, v3, -0x1

    #@8
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    #@a
    .line 227
    iget-object v3, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    #@c
    invoke-interface {v3, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@f
    move-result-object v0

    #@10
    .line 228
    .local v0, "a":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 229
    .local v2, "u":Ljava/lang/String;
    if-nez v2, :cond_1

    #@16
    if-nez p1, :cond_2

    #@18
    .line 231
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v3

    #@20
    .line 229
    if-eqz v3, :cond_2

    #@22
    .line 232
    return v1

    #@23
    .line 229
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_0

    #@29
    .line 225
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 234
    .end local v0    # "a":Lorg/w3c/dom/Node;
    .end local v2    # "u":Ljava/lang/String;
    :cond_3
    const/4 v3, -0x1

    #@2d
    return v3
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    #@2
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 114
    iget-object v1, p0, Lorg/apache/xml/utils/AttList;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    #@2
    iget-object v0, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    #@4
    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lorg/w3c/dom/Attr;

    #@a
    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/DOMHelper;->getLocalNameOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    #@2
    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/w3c/dom/Attr;

    #@8
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 140
    const-string/jumbo v0, "CDATA"

    #@3
    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 166
    const-string/jumbo v0, "CDATA"

    #@3
    return-object v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 181
    const-string/jumbo v0, "CDATA"

    #@3
    return-object v0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 98
    iget-object v2, p0, Lorg/apache/xml/utils/AttList;->m_dh:Lorg/apache/xml/utils/DOMHelper;

    #@2
    iget-object v1, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    #@4
    invoke-interface {v1, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Lorg/w3c/dom/Attr;

    #@a
    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/DOMHelper;->getNamespaceOfNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 99
    .local v0, "ns":Ljava/lang/String;
    if-nez v0, :cond_0

    #@10
    .line 100
    const-string/jumbo v0, ""

    #@13
    .line 101
    :cond_0
    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    #@2
    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/w3c/dom/Attr;

    #@8
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 194
    iget-object v2, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    #@3
    invoke-interface {v2, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lorg/w3c/dom/Attr;

    #@9
    .line 195
    .local v0, "attr":Lorg/w3c/dom/Attr;
    if-eqz v0, :cond_0

    #@b
    .line 196
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 195
    :cond_0
    return-object v1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 210
    iget-object v2, p0, Lorg/apache/xml/utils/AttList;->m_attrs:Lorg/w3c/dom/NamedNodeMap;

    #@3
    invoke-interface {v2, p1, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    #@6
    move-result-object v0

    #@7
    .line 211
    .local v0, "a":Lorg/w3c/dom/Node;
    if-nez v0, :cond_0

    #@9
    :goto_0
    return-object v1

    #@a
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    goto :goto_0
.end method
