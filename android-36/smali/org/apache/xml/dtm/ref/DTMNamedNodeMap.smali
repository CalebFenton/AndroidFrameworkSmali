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
.field greylist dtm:Lorg/apache/xml/dtm/DTM;

.field greylist element:I

.field greylist m_count:S


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/DTM;I)V
    .registers 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput-short v0, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->m_count:S

    .line 64
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    .line 65
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->element:I

    return-void
.end method


# virtual methods
.method public whitelist test-api getLength()I
    .registers 5

    .line 76
    iget-short v0, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->m_count:S

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    .line 80
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->element:I

    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v0

    const/4 v2, 0x0

    :goto_e
    if-eq v0, v1, :cond_1a

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    .line 81
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v3, v0}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v0

    goto :goto_e

    .line 86
    :cond_1a
    iput-short v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->m_count:S

    .line 89
    :cond_1c
    iget-short p0, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->m_count:S

    return p0
.end method

.method public whitelist test-api getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 4

    .line 102
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->element:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v0

    :goto_8
    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    .line 105
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 106
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {p0, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    .line 103
    :cond_1e
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v0

    goto :goto_8

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 5

    .line 200
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->element:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v0

    :goto_8
    const/4 v1, -0x1

    if-eq v0, v1, :cond_37

    .line 203
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 205
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_21

    if-eqz v1, :cond_29

    :cond_21
    if-eqz p1, :cond_30

    .line 207
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 209
    :cond_29
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {p0, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    .line 201
    :cond_30
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v0

    goto :goto_8

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api item(I)Lorg/w3c/dom/Node;
    .registers 5

    .line 125
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->element:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getFirstAttribute(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1e

    if-ne v1, p1, :cond_15

    .line 129
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {p0, v0}, Lorg/apache/xml/dtm/DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_15
    add-int/lit8 v1, v1, 0x1

    .line 126
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;->dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2, v0}, Lorg/apache/xml/dtm/DTM;->getNextAttribute(I)I

    move-result v0

    goto :goto_9

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 3

    .line 183
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;-><init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;S)V

    throw p1
.end method

.method public whitelist test-api removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 268
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;-><init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;S)V

    throw p1
.end method

.method public whitelist test-api setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3

    .line 163
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;-><init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;S)V

    throw p1
.end method

.method public whitelist test-api setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 242
    new-instance p1, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lorg/apache/xml/dtm/ref/DTMNamedNodeMap$DTMException;-><init>(Lorg/apache/xml/dtm/ref/DTMNamedNodeMap;S)V

    throw p1
.end method
