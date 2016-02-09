.class public abstract Lorg/apache/harmony/xml/dom/InnerNodeImpl;
.super Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.source "InnerNodeImpl.java"


# instance fields
.field children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/xml/dom/LeafNodeImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V
    .locals 1
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    #@3
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    #@a
    .line 47
    return-void
.end method

.method private static matchesNameOrWildcard(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 265
    const-string/jumbo v0, "*"

    #@3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    invoke-static {p0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method private refreshIndices(I)V
    .locals 2
    .param p1, "fromIndex"    # I

    #@0
    .prologue
    .line 169
    move v0, p1

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    #@3
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 170
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    #@b
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    #@11
    iput v0, v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    #@13
    .line 169
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 4

    #@0
    .prologue
    .line 56
    new-instance v0, Lorg/apache/harmony/xml/dom/NodeListImpl;

    #@2
    invoke-direct {v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;-><init>()V

    #@5
    .line 58
    .local v0, "list":Lorg/apache/harmony/xml/dom/NodeListImpl;
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    .local v2, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    #@17
    .line 59
    .local v1, "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v0, v1}, Lorg/apache/harmony/xml/dom/NodeListImpl;->add(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    #@1a
    goto :goto_0

    #@1b
    .line 62
    .end local v1    # "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    :cond_0
    return-object v0
.end method

.method getElementsByTagName(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;)V
    .locals 5
    .param p1, "out"    # Lorg/apache/harmony/xml/dom/NodeListImpl;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 236
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    #@2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    .local v2, "node$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_2

    #@c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    #@12
    .line 237
    .local v1, "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    #@15
    move-result v3

    #@16
    const/4 v4, 0x1

    #@17
    if-ne v3, v4, :cond_0

    #@19
    move-object v0, v1

    #@1a
    .line 238
    check-cast v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    #@1c
    .line 239
    .local v0, "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-static {p2, v3}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->matchesNameOrWildcard(Ljava/lang/String;Ljava/lang/String;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_1

    #@26
    .line 240
    invoke-virtual {p1, v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;->add(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    #@29
    .line 242
    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementsByTagName(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;)V

    #@2c
    goto :goto_0

    #@2d
    .line 235
    .end local v0    # "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    .end local v1    # "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    :cond_2
    return-void
.end method

.method getElementsByTagNameNS(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "out"    # Lorg/apache/harmony/xml/dom/NodeListImpl;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 248
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    #@2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    .local v2, "node$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_2

    #@c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    #@12
    .line 249
    .local v1, "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getNodeType()S

    #@15
    move-result v3

    #@16
    const/4 v4, 0x1

    #@17
    if-ne v3, v4, :cond_0

    #@19
    move-object v0, v1

    #@1a
    .line 250
    check-cast v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    #@1c
    .line 251
    .local v0, "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-static {p2, v3}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->matchesNameOrWildcard(Ljava/lang/String;Ljava/lang/String;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_1

    #@26
    .line 252
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->getLocalName()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-static {p3, v3}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->matchesNameOrWildcard(Ljava/lang/String;Ljava/lang/String;)Z

    #@2d
    move-result v3

    #@2e
    .line 251
    if-eqz v3, :cond_1

    #@30
    .line 253
    invoke-virtual {p1, v0}, Lorg/apache/harmony/xml/dom/NodeListImpl;->add(Lorg/apache/harmony/xml/dom/NodeImpl;)V

    #@33
    .line 255
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/harmony/xml/dom/ElementImpl;->getElementsByTagNameNS(Lorg/apache/harmony/xml/dom/NodeListImpl;Ljava/lang/String;Ljava/lang/String;)V

    #@36
    goto :goto_0

    #@37
    .line 247
    .end local v0    # "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    .end local v1    # "node":Lorg/apache/harmony/xml/dom/NodeImpl;
    :cond_2
    return-void
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 2

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    #@11
    :goto_0
    return-object v0

    #@12
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 2

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    #@a
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    #@c
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@f
    move-result v1

    #@10
    add-int/lit8 v1, v1, -0x1

    #@12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    #@18
    :goto_0
    return-object v0

    #@19
    :cond_0
    const/4 v0, 0x0

    #@1a
    goto :goto_0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 74
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->index:I

    #@7
    add-int/lit8 v0, v0, 0x1

    #@9
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    #@b
    iget-object v1, v1, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    #@d
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@10
    move-result v1

    #@11
    if-lt v0, v1, :cond_1

    #@13
    .line 75
    :cond_0
    return-object v2

    #@14
    .line 78
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    #@16
    iget-object v0, v0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    #@18
    iget v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->index:I

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Lorg/w3c/dom/Node;

    #@22
    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->getFirstChild()Lorg/w3c/dom/Node;

    #@3
    move-result-object v1

    #@4
    .line 205
    .local v1, "child":Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    #@6
    .line 206
    const-string/jumbo v3, ""

    #@9
    return-object v3

    #@a
    .line 209
    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@d
    move-result-object v2

    #@e
    .line 210
    .local v2, "next":Lorg/w3c/dom/Node;
    if-nez v2, :cond_2

    #@10
    .line 211
    invoke-virtual {p0, v1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->hasTextContent(Lorg/w3c/dom/Node;)Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1

    #@16
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    :goto_0
    return-object v3

    #@1b
    :cond_1
    const-string/jumbo v3, ""

    #@1e
    goto :goto_0

    #@1f
    .line 214
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    .line 215
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->getTextContent(Ljava/lang/StringBuilder;)V

    #@27
    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    return-object v3
.end method

.method getTextContent(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->getFirstChild()Lorg/w3c/dom/Node;

    #@3
    move-result-object v0

    #@4
    .line 221
    .local v0, "child":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v0, :cond_1

    #@6
    .line 222
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->hasTextContent(Lorg/w3c/dom/Node;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    move-object v1, v0

    #@d
    .line 223
    check-cast v1, Lorg/apache/harmony/xml/dom/NodeImpl;

    #@f
    invoke-virtual {v1, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;->getTextContent(Ljava/lang/StringBuilder;)V

    #@12
    .line 225
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@15
    move-result-object v0

    #@16
    goto :goto_0

    #@17
    .line 219
    :cond_1
    return-void
.end method

.method public hasChildNodes()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 82
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    #@3
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method final hasTextContent(Lorg/w3c/dom/Node;)Z
    .locals 3
    .param p1, "child"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 231
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@4
    move-result v1

    #@5
    const/16 v2, 0x8

    #@7
    if-eq v1, v2, :cond_0

    #@9
    .line 232
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@c
    move-result v1

    #@d
    const/4 v2, 0x7

    #@e
    if-eq v1, v2, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    .line 231
    :cond_0
    return v0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "refChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    move-object v0, p2

    #@2
    .line 86
    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    #@4
    .line 88
    .local v0, "refChildImpl":Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    if-nez v0, :cond_0

    #@6
    .line 89
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 92
    :cond_0
    iget-object v1, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@d
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@f
    if-eq v1, v2, :cond_1

    #@11
    .line 93
    new-instance v1, Lorg/w3c/dom/DOMException;

    #@13
    const/4 v2, 0x4

    #@14
    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 96
    :cond_1
    iget-object v1, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    #@1a
    if-eq v1, p0, :cond_2

    #@1c
    .line 97
    new-instance v1, Lorg/w3c/dom/DOMException;

    #@1e
    const/4 v2, 0x3

    #@1f
    invoke-direct {v1, v2, v3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 100
    :cond_2
    iget v1, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    #@25
    invoke-virtual {p0, p1, v1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    #@28
    move-result-object v1

    #@29
    return-object v1
.end method

.method insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;
    .locals 7
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 108
    instance-of v4, p1, Lorg/w3c/dom/DocumentFragment;

    #@3
    if-eqz v4, :cond_1

    #@5
    .line 109
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    #@8
    move-result-object v2

    #@9
    .line 110
    .local v2, "toAdd":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    #@d
    move-result v4

    #@e
    if-ge v0, v4, :cond_0

    #@10
    .line 111
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@13
    move-result-object v4

    #@14
    add-int v5, p2, v0

    #@16
    invoke-virtual {p0, v4, v5}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    #@19
    .line 110
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 113
    :cond_0
    return-object p1

    #@1d
    .end local v0    # "i":I
    .end local v2    # "toAdd":Lorg/w3c/dom/NodeList;
    :cond_1
    move-object v3, p1

    #@1e
    .line 116
    check-cast v3, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    #@20
    .line 117
    .local v3, "toInsert":Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    iget-object v4, v3, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@22
    if-eqz v4, :cond_2

    #@24
    iget-object v4, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@26
    if-eqz v4, :cond_2

    #@28
    iget-object v4, v3, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@2a
    iget-object v5, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@2c
    if-eq v4, v5, :cond_2

    #@2e
    .line 118
    new-instance v4, Lorg/w3c/dom/DOMException;

    #@30
    const/4 v5, 0x4

    #@31
    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@34
    throw v4

    #@35
    .line 120
    :cond_2
    invoke-virtual {v3, p0}, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->isParentOf(Lorg/w3c/dom/Node;)Z

    #@38
    move-result v4

    #@39
    if-eqz v4, :cond_3

    #@3b
    .line 121
    new-instance v4, Lorg/w3c/dom/DOMException;

    #@3d
    const/4 v5, 0x3

    #@3e
    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@41
    throw v4

    #@42
    .line 124
    :cond_3
    iget-object v4, v3, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    #@44
    if-eqz v4, :cond_4

    #@46
    .line 125
    iget v1, v3, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    #@48
    .line 126
    .local v1, "oldIndex":I
    iget-object v4, v3, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    #@4a
    iget-object v4, v4, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    #@4c
    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@4f
    .line 127
    iget-object v4, v3, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    #@51
    invoke-direct {v4, v1}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->refreshIndices(I)V

    #@54
    .line 130
    .end local v1    # "oldIndex":I
    :cond_4
    iget-object v4, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    #@56
    invoke-interface {v4, p2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@59
    .line 131
    iput-object p0, v3, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    #@5b
    .line 132
    invoke-direct {p0, p2}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->refreshIndices(I)V

    #@5e
    .line 134
    return-object p1
.end method

.method public isParentOf(Lorg/w3c/dom/Node;)Z
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 138
    check-cast v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    #@3
    .line 140
    .local v0, "nodeImpl":Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    :goto_0
    if-eqz v0, :cond_1

    #@5
    .line 141
    if-ne v0, p0, :cond_0

    #@7
    .line 142
    const/4 v1, 0x1

    #@8
    return v1

    #@9
    .line 145
    :cond_0
    iget-object v0, v0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    #@b
    goto :goto_0

    #@c
    .line 148
    :cond_1
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public final normalize()V
    .locals 4

    #@0
    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->getFirstChild()Lorg/w3c/dom/Node;

    #@3
    move-result-object v1

    #@4
    .local v1, "node":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v1, :cond_1

    #@6
    .line 159
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@9
    move-result-object v0

    #@a
    .line 160
    .local v0, "next":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->normalize()V

    #@d
    .line 162
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@10
    move-result v2

    #@11
    const/4 v3, 0x3

    #@12
    if-ne v2, v3, :cond_0

    #@14
    .line 163
    check-cast v1, Lorg/apache/harmony/xml/dom/TextImpl;

    #@16
    .end local v1    # "node":Lorg/w3c/dom/Node;
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/TextImpl;->minimize()Lorg/apache/harmony/xml/dom/TextImpl;

    #@19
    .line 158
    :cond_0
    move-object v1, v0

    #@1a
    .restart local v1    # "node":Lorg/w3c/dom/Node;
    goto :goto_0

    #@1b
    .line 156
    .end local v0    # "next":Lorg/w3c/dom/Node;
    :cond_1
    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 5
    .param p1, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    move-object v1, p1

    #@2
    .line 175
    check-cast v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    #@4
    .line 177
    .local v1, "oldChildImpl":Lorg/apache/harmony/xml/dom/LeafNodeImpl;
    iget-object v2, v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@6
    iget-object v3, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->document:Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@8
    if-eq v2, v3, :cond_0

    #@a
    .line 178
    new-instance v2, Lorg/w3c/dom/DOMException;

    #@c
    const/4 v3, 0x4

    #@d
    invoke-direct {v2, v3, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 180
    :cond_0
    iget-object v2, v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    #@13
    if-eq v2, p0, :cond_1

    #@15
    .line 181
    new-instance v2, Lorg/w3c/dom/DOMException;

    #@17
    const/4 v3, 0x3

    #@18
    invoke-direct {v2, v3, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 184
    :cond_1
    iget v0, v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    #@1e
    .line 185
    .local v0, "index":I
    iget-object v2, p0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    #@20
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@23
    .line 186
    iput-object v4, v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    #@25
    .line 187
    invoke-direct {p0, v0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->refreshIndices(I)V

    #@28
    .line 189
    return-object p1
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "newChild"    # Lorg/w3c/dom/Node;
    .param p2, "oldChild"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    move-object v1, p2

    #@1
    .line 197
    check-cast v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;

    #@3
    iget v0, v1, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    #@5
    .line 198
    .local v0, "index":I
    invoke-virtual {p0, p2}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@8
    .line 199
    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->insertChildAt(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    #@b
    .line 200
    return-object p2
.end method
