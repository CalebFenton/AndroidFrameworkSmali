.class public abstract Lorg/apache/harmony/xml/dom/LeafNodeImpl;
.super Lorg/apache/harmony/xml/dom/NodeImpl;
.source "LeafNodeImpl.java"


# instance fields
.field index:I

.field parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V
    .locals 0
    .param p1, "document"    # Lorg/apache/harmony/xml/dom/DocumentImpl;

    #@0
    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/NodeImpl;-><init>(Lorg/apache/harmony/xml/dom/DocumentImpl;)V

    #@3
    .line 41
    return-void
.end method


# virtual methods
.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 46
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    #@7
    add-int/lit8 v0, v0, 0x1

    #@9
    iget-object v1, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    #@b
    iget-object v1, v1, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    #@d
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@10
    move-result v1

    #@11
    if-lt v0, v1, :cond_1

    #@13
    .line 47
    :cond_0
    return-object v2

    #@14
    .line 50
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    #@16
    iget-object v0, v0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    #@18
    iget v1, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

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

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    #@2
    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 58
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    #@7
    if-nez v0, :cond_1

    #@9
    .line 59
    :cond_0
    return-object v1

    #@a
    .line 62
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->parent:Lorg/apache/harmony/xml/dom/InnerNodeImpl;

    #@c
    iget-object v0, v0, Lorg/apache/harmony/xml/dom/InnerNodeImpl;->children:Ljava/util/List;

    #@e
    iget v1, p0, Lorg/apache/harmony/xml/dom/LeafNodeImpl;->index:I

    #@10
    add-int/lit8 v1, v1, -0x1

    #@12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lorg/w3c/dom/Node;

    #@18
    return-object v0
.end method

.method isParentOf(Lorg/w3c/dom/Node;)Z
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 66
    const/4 v0, 0x0

    #@1
    return v0
.end method
