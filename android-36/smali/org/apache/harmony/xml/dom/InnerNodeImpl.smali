.class public abstract Lorg/apache/harmony/xml/dom/InnerNodeImpl;
.super Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.source "InnerNodeImpl.java"


# instance fields
.field blacklist children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/harmony/xml/dom/LeafNodeImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V
    .registers 3
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;

    .line 48
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    .line 49
    return-void
.end method

.method private static blacklist matchesNameOrWildcard(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .line 265
    const-string v0, "*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private blacklist refreshIndices(I)V
    .registers 4
    .param p1, "fromIndex"    # I

    .line 169
    move v0, p1

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 170
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    iput v0, v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 172
    .end local v0    # "i":I
    :cond_16
    return-void
.end method


# virtual methods
.method public whitelist test-api appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 3
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getChildNodes()Lorg/w3c/dom/NodeList;
    .registers 4

    .line 56
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    .line 58
    .local v0, "list":Lorg/apache/harmony/xml/dom/NodeListImpl;
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/xml/dom/NodeImpl;

    .line 59
    .local v2, "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v0, v2}, Lorg/apache/harmony/xml/dom/NodeListImpl;->add(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 60
    .end local v2    # "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    goto :goto_b

    .line 62
    :cond_1b
    return-object v0
.end method

.method blacklist getElementsByTagName(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;)V
    .registers 7
    .param p1, "out"    # Lorg/apache/harmony/xml/dom/NodeListImpl;
    .param p2, "name"    # Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/NodeImpl;

    .line 237
    .local v1, "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2c

    .line 238
    move-object v2, v1

    check-cast v2, Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 239
    .local v2, "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->matchesNameOrWildcard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 240
    invoke-virtual {p1, v2}, Lorg/apache/harmony/xml/dom/NodeListImpl;->add(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 242
    :cond_29
    invoke-virtual {v2, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementsByTagName(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;)V

    .line 244
    .end local v1    # "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    .end local v2    # "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    :cond_2c
    goto :goto_6

    .line 245
    :cond_2d
    return-void
.end method

.method blacklist getElementsByTagNameNS(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "out"    # Lorg/apache/harmony/xml/dom/NodeListImpl;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xml/dom/NodeImpl;

    .line 249
    .local v1, "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_36

    .line 250
    move-object v2, v1

    check-cast v2, Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 251
    .local v2, "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->matchesNameOrWildcard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 252
    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->matchesNameOrWildcard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 253
    invoke-virtual {p1, v2}, Lorg/apache/harmony/xml/dom/NodeListImpl;->add(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    .line 255
    :cond_33
    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementsByTagNameNS(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .end local v1    # "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    .end local v2    # "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    :cond_36
    goto :goto_6

    .line 258
    :cond_37
    return-void
.end method

.method public whitelist test-api getFirstChild()Lorg/w3c/dom/Node;
    .registers 3

    .line 66
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return-object v0
.end method

.method public whitelist test-api getLastChild()Lorg/w3c/dom/Node;
    .registers 3

    .line 70
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return-object v0
.end method

.method public whitelist test-api getNextSibling()Lorg/w3c/dom/Node;
    .registers 3

    .line 74
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    if-eqz v0, :cond_22

    iget v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    iget-object v1, v1, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_13

    goto :goto_22

    .line 78
    :cond_13
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    iget-object v0, v0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    iget v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0

    .line 75
    :cond_22
    :goto_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getTextContent()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 205
    .local v0, "child":Lorg/w3c/dom/Node;
    const-string v1, ""

    if-nez v0, :cond_9

    .line 206
    return-object v1

    .line 209
    :cond_9
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 210
    .local v2, "next":Lorg/w3c/dom/Node;
    if-nez v2, :cond_1a

    .line 211
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->hasTextContent(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    :cond_19
    return-object v1

    .line 214
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->getTextContent(Ljava/lang/StringBuilder;)V

    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method blacklist getTextContent(Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 221
    .local v0, "child":Lorg/w3c/dom/Node;
    :goto_4
    if-eqz v0, :cond_17

    .line 222
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->hasTextContent(Lorg/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 223
    move-object v1, v0

    check-cast v1, Lorg/apache/harmony/xml/dom/NodeImpl;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getTextContent(Ljava/lang/StringBuilder;)V

    .line 225
    :cond_12
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_4

    .line 227
    :cond_17
    return-void
.end method

.method public whitelist test-api hasChildNodes()Z
    .registers 2

    .line 82
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method final blacklist hasTextContent(Lorg/w3c/dom/Node;)Z
    .registers 4
    .param p1, "child"    # Lorg/w3c/dom/Node;

    .line 231
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    .line 232
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 231
    :goto_12
    return v0
.end method

.method public whitelist test-api insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 7
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "refChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 86
    move-object v0, p2

    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    .line 88
    .local v0, "refChildImpl":Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    if-nez v0, :cond_a

    .line 89
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    return-object v1

    .line 92
    :cond_a
    iget-object v1, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    iget-object v2, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_23

    .line 96
    iget-object v1, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    if-ne v1, p0, :cond_1c

    .line 100
    iget v1, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    invoke-virtual {p0, p1, v1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v1

    return-object v1

    .line 97
    :cond_1c
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 93
    :cond_23
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method blacklist insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;
    .registers 7
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 108
    instance-of v0, p1, Lorg/w3c/dom/DocumentFragment;

    if-eqz v0, :cond_1c

    .line 109
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 110
    .local v0, "toAdd":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 111
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    add-int v3, p2, v1

    invoke-virtual {p0, v2, v3}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 113
    .end local v1    # "i":I
    :cond_1b
    return-object p1

    .line 116
    .end local v0    # "toAdd":Lorg/w3c/dom/NodeList;
    :cond_1c
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    .line 117
    .local v0, "toInsert":Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    iget-object v1, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-eqz v1, :cond_36

    iget-object v1, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    iget-object v3, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    if-ne v1, v3, :cond_2f

    goto :goto_36

    .line 118
    :cond_2f
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 120
    :cond_36
    :goto_36
    invoke-virtual {v0, p0}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->isParentOf(Lorg/w3c/dom/Node;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 124
    iget-object v1, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    if-eqz v1, :cond_4e

    .line 125
    iget v1, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    .line 126
    .local v1, "oldIndex":I
    iget-object v2, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    iget-object v2, v2, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 127
    iget-object v2, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    invoke-direct {v2, v1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->refreshIndices(I)V

    .line 130
    .end local v1    # "oldIndex":I
    :cond_4e
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 131
    iput-object p0, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    .line 132
    invoke-direct {p0, p2}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->refreshIndices(I)V

    .line 134
    return-object p1

    .line 121
    :cond_59
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public blacklist isParentOf(Lorg/w3c/dom/Node;)Z
    .registers 4
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .line 138
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    .line 140
    .local v0, "nodeImpl":Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    :goto_3
    if-eqz v0, :cond_c

    .line 141
    if-ne v0, p0, :cond_9

    .line 142
    const/4 v1, 0x1

    return v1

    .line 145
    :cond_9
    iget-object v0, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    goto :goto_3

    .line 148
    :cond_c
    const/4 v1, 0x0

    return v1
.end method

.method public final whitelist test-api normalize()V
    .registers 5

    .line 158
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, "node":Lorg/w3c/dom/Node;
    :goto_4
    if-eqz v0, :cond_1c

    .line 159
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 160
    .local v1, "next":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->normalize()V

    .line 162
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1a

    .line 163
    move-object v2, v0

    check-cast v2, Lorg/apache/harmony/xml/dom/TextImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xml/dom/TextImpl;->minimize()Lorg/apache/harmony/xml/dom/TextImpl;

    .line 158
    :cond_1a
    move-object v0, v1

    goto :goto_4

    .line 166
    .end local v0    # "node":Lorg/w3c/dom/Node;
    .end local v1    # "next":Lorg/w3c/dom/Node;
    :cond_1c
    return-void
.end method

.method public whitelist test-api removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 6
    .param p1, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 175
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    .line 177
    .local v0, "oldChildImpl":Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    iget-object v1, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    iget-object v2, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_22

    .line 180
    iget-object v1, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    if-ne v1, p0, :cond_1b

    .line 184
    iget v1, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    .line 185
    .local v1, "index":I
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 186
    iput-object v3, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    .line 187
    invoke-direct {p0, v1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->refreshIndices(I)V

    .line 189
    return-object p1

    .line 181
    .end local v1    # "index":I
    :cond_1b
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 178
    :cond_22
    new-instance v1, Lorg/w3c/dom/DOMException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 4
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 197
    move-object v0, p2

    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    iget v0, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    .line 198
    .local v0, "index":I
    invoke-virtual {p0, p2}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 199
    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    .line 200
    return-object p2
.end method
