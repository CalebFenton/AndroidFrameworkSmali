.class public abstract Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.super Lorg/apache/harmony/xml/dom/NodeImpl;
.source "LeafNodeImpl.java"


# instance fields
.field blacklist index:I

.field blacklist parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;


# direct methods
.method constructor blacklist <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V
    .registers 2
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;

    .line 42
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist test-api getNextSibling()Lorg/w3c/dom/Node;
    .registers 3

    .line 46
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    if-eqz v0, :cond_22

    iget v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    iget-object v1, v1, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_13

    goto :goto_22

    .line 50
    :cond_13
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    iget-object v0, v0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    iget v1, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0

    .line 47
    :cond_22
    :goto_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getParentNode()Lorg/w3c/dom/Node;
    .registers 2

    .line 54
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    return-object v0
.end method

.method public whitelist test-api getPreviousSibling()Lorg/w3c/dom/Node;
    .registers 3

    .line 58
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    if-eqz v0, :cond_18

    iget v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    if-nez v0, :cond_9

    goto :goto_18

    .line 62
    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    iget-object v0, v0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    iget v1, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0

    .line 59
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist isParentOf(Lorg/w3c/dom/Node;)Z
    .registers 3
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .line 66
    const/4 v0, 0x0

    return v0
.end method
