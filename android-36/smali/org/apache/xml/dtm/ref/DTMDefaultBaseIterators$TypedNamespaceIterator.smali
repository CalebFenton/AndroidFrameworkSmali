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
.field private final greylist _nodeType:I

.field final synthetic greylist this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 654
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    .line 655
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$NamespaceIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 656
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->_nodeType:I

    return-void
.end method


# virtual methods
.method public greylist next()I
    .registers 5

    .line 668
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    :goto_2
    const/4 v1, -0x1

    if-eq v0, v1, :cond_35

    .line 671
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v1

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->_nodeType:I

    if-eq v1, v2, :cond_2e

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    .line 672
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v1

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->_nodeType:I

    if-eq v1, v2, :cond_2e

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    .line 673
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNamespaceType(I)I

    move-result v1

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->_nodeType:I

    if-ne v1, v2, :cond_24

    goto :goto_2e

    .line 670
    :cond_24
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedNamespaceIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->_startNode:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNamespaceNode(IIZ)I

    move-result v0

    goto :goto_2

    .line 674
    :cond_2e
    :goto_2e
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    .line 676
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMAxisIteratorBase;->returnNode(I)I

    move-result p0

    return p0

    .line 680
    :cond_35
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$InternalAxisIteratorBase;->_currentNode:I

    return v1
.end method
