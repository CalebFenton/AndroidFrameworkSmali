.class public Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypedNamespaceIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
    .param p2, "nodeType"    # I

    #@0
    .prologue
    .line 653
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2
    .line 655
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    #@5
    .line 656
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->_nodeType:I

    #@7
    .line 653
    return-void
.end method


# virtual methods
.method public next()I
    .locals 5

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 668
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->_currentNode:I

    #@3
    .local v0, "node":I
    :goto_0
    if-eq v0, v4, :cond_2

    #@5
    .line 671
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@7
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getExpandedTypeID(I)I

    #@a
    move-result v1

    #@b
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->_nodeType:I

    #@d
    if-eq v1, v2, :cond_0

    #@f
    .line 672
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@11
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getNodeType(I)S

    #@14
    move-result v1

    #@15
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->_nodeType:I

    #@17
    if-ne v1, v2, :cond_1

    #@19
    .line 674
    :cond_0
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->_currentNode:I

    #@1b
    .line 676
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->returnNode(I)I

    #@1e
    move-result v1

    #@1f
    return v1

    #@20
    .line 673
    :cond_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@22
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getNamespaceType(I)I

    #@25
    move-result v1

    #@26
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->_nodeType:I

    #@28
    if-eq v1, v2, :cond_0

    #@2a
    .line 670
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    #@2c
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->_startNode:I

    #@2e
    const/4 v3, 0x1

    #@2f
    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->getNextNamespaceNode(IIZ)I

    #@32
    move-result v0

    #@33
    goto :goto_0

    #@34
    .line 680
    :cond_2
    iput v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->_currentNode:I

    #@36
    return v4
.end method
