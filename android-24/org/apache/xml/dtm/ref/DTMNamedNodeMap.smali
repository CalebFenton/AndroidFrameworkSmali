.class public Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;
.super Ljava/lang/Object;
.source "DTMNamedNodeMap.java"

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;
    }
.end annotation


# instance fields
.field dtm:Lorg/apache/xml/dtm/DTM;

.field element:I

.field m_count:S


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTM;I)V
    .locals 1
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p2, "element"    # I

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    const/4 v0, -0x1

    #@4
    iput-short v0, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->m_count:S

    #@6
    .line 64
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    #@8
    .line 65
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->element:I

    #@a
    .line 62
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 76
    iget-short v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->m_count:S

    #@3
    if-ne v2, v4, :cond_1

    #@5
    .line 78
    const/4 v0, 0x0

    #@6
    .line 80
    .local v0, "count":S
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    #@8
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->element:I

    #@a
    invoke-interface {v2, v3}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    #@d
    move-result v1

    #@e
    .end local v0    # "count":S
    .local v1, "n":I
    :goto_0
    if-eq v1, v4, :cond_0

    #@10
    .line 83
    add-int/lit8 v2, v0, 0x1

    #@12
    int-to-short v0, v2

    #@13
    .line 81
    .local v0, "count":S
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    #@15
    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    #@18
    move-result v1

    #@19
    goto :goto_0

    #@1a
    .line 86
    .end local v0    # "count":S
    :cond_0
    iput-short v0, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->m_count:S

    #@1c
    .line 89
    .end local v1    # "n":I
    :cond_1
    iget-short v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->m_count:S

    #@1e
    return v2
.end method

.method public getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 102
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->element:I

    #@4
    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    #@7
    move-result v0

    #@8
    .local v0, "n":I
    :goto_0
    const/4 v1, -0x1

    #@9
    if-eq v0, v1, :cond_1

    #@b
    .line 105
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    #@d
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 106
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    #@19
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 103
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    #@20
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    #@23
    move-result v0

    #@24
    goto :goto_0

    #@25
    .line 109
    :cond_1
    const/4 v1, 0x0

    #@26
    return-object v1
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 199
    const/4 v2, 0x0

    #@1
    .line 200
    .local v2, "retNode":Lorg/w3c/dom/Node;
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    #@3
    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->element:I

    #@5
    invoke-interface {v3, v4}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    #@8
    move-result v0

    #@9
    .local v0, "n":I
    :goto_0
    const/4 v3, -0x1

    #@a
    if-eq v0, v3, :cond_1

    #@c
    .line 203
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    #@e
    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_3

    #@18
    .line 205
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    #@1a
    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 206
    .local v1, "nsURI":Ljava/lang/String;
    if-nez p1, :cond_2

    #@20
    if-nez v1, :cond_2

    #@22
    .line 209
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    #@24
    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@27
    move-result-object v2

    #@28
    .line 214
    .end local v1    # "nsURI":Ljava/lang/String;
    .end local v2    # "retNode":Lorg/w3c/dom/Node;
    :cond_1
    return-object v2

    #@29
    .line 207
    .restart local v1    # "nsURI":Ljava/lang/String;
    .restart local v2    # "retNode":Lorg/w3c/dom/Node;
    :cond_2
    if-eqz p1, :cond_3

    #@2b
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v3

    #@2f
    .line 206
    if-nez v3, :cond_0

    #@31
    .line 201
    .end local v1    # "nsURI":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    #@33
    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    #@36
    move-result v0

    #@37
    goto :goto_0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 4
    .param p1, "i"    # I

    #@0
    .prologue
    .line 123
    const/4 v0, 0x0

    #@1
    .line 125
    .local v0, "count":I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    #@3
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->element:I

    #@5
    invoke-interface {v2, v3}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    #@8
    move-result v1

    #@9
    .local v1, "n":I
    :goto_0
    const/4 v2, -0x1

    #@a
    if-eq v1, v2, :cond_1

    #@c
    .line 128
    if-ne v0, p1, :cond_0

    #@e
    .line 129
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    #@10
    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    #@13
    move-result-object v2

    #@14
    return-object v2

    #@15
    .line 131
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@17
    .line 126
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    #@19
    invoke-interface {v2, v1}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    #@1c
    move-result v1

    #@1d
    goto :goto_0

    #@1e
    .line 134
    :cond_1
    const/4 v2, 0x0

    #@1f
    return-object v2
.end method

.method public removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 183
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;

    #@2
    const/4 v1, 0x7

    #@3
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;-><init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;S)V

    #@6
    throw v0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
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
    .line 268
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;

    #@2
    const/4 v1, 0x7

    #@3
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;-><init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;S)V

    #@6
    throw v0
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "newNode"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 163
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;

    #@2
    const/4 v1, 0x7

    #@3
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;-><init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;S)V

    #@6
    throw v0
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "arg"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;

    #@2
    const/4 v1, 0x7

    #@3
    invoke-direct {v0, p0, v1}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;-><init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;S)V

    #@6
    throw v0
.end method
